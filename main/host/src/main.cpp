
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "CL/opencl.h"
#include "AOCLUtils/aocl_utils.h"

using namespace aocl_utils;


#include "models.h"
#include "param.h"
#include "rand.h"



// OpenCL runtime configuration
cl_platform_id platform = NULL;
unsigned num_devices = 0;
scoped_array<cl_device_id> device; // num_devices elements
cl_context context = NULL;
scoped_array<cl_command_queue> queue; // num_devices elements
cl_program program = NULL;
scoped_array<cl_kernel> kernel; // num_devices elements



// Basic global structures
scoped_array<scoped_aligned_ptr<struct Cell> > CellLookup;
scoped_array<scoped_aligned_ptr<double> > Rands; 
scoped_array<struct Person> Hosts;
scoped_array<struct Household> Households;
scoped_array<struct PersonQuarantine> HostsQuarantine;
scoped_array<struct Place> Places;
scoped_array<struct Microcell> Mcells;
scoped_array<struct PopVar> StateT;
struct Param P;



// Basic global buffer
scoped_array<cl_mem> CellLookup_buf; 
scoped_array<cl_mem> Rands_buf;

cl_mem Hosts_buf;
cl_mem Households_buf;
cl_mem P_buf;
cl_mem HostsQuarantine_buf;
cl_mem Places_buf;
cl_mem Mcells_buf;
cl_mem StateT_buf;


// Problem data.
unsigned N = 10000; // problem size


scoped_array<unsigned> n_per_device; // num_devices elements

// Control whether the emulator should be used.
bool use_emulator = false;

// Function prototypes
float rand_float();
bool init_opencl();
void init_problem_with_random_data();
void run();
void cleanup();

// Entry point.
int main(int argc, char **argv) {
  Options options(argc, argv);

  // Optional argument to specify the problem size.
  if(options.has("n")) {
    N = options.get<unsigned>("n");
  }

  // Optional argument to specify whether the emulator should be used.
  if(options.has("emulator")) {
    use_emulator = options.get<bool>("emulator");
  }

  // Initialize OpenCL.
  if(!init_opencl()) {
    return -1;
  }

  // Initialize the problem data.
  // Requires the number of devices to be known.
  init_problem_with_random_data();

  run();

  // Free the resources allocated
  cleanup();

  return 0;
}

// Initializes the OpenCL objects.
bool init_opencl() {
  cl_int status;

  printf("Initializing OpenCL\n");

  if(!setCwdToExeDir()) {
    return false;
  }

  // Get the OpenCL platform.
  if (use_emulator) {
    platform = findPlatform("Intel(R) FPGA Emulation Platform for OpenCL(TM)");
  } else {
    platform = findPlatform("Intel(R) FPGA SDK for OpenCL(TM)");
  }
  if(platform == NULL) {
    printf("ERROR: Unable to find Intel(R) FPGA OpenCL platform.\n");
    return false;
  }

  // Query the available OpenCL device.
  device.reset(getDevices(platform, CL_DEVICE_TYPE_ALL, &num_devices));
  printf("Platform: %s\n", getPlatformName(platform).c_str());
  printf("Using %d device(s)\n", num_devices);
  for(unsigned i = 0; i < num_devices; ++i) {
    printf("  %s\n", getDeviceName(device[i]).c_str());
  }

  // Create the context.
  context = clCreateContext(NULL, num_devices, device, &oclContextCallback, NULL, &status);
  checkError(status, "Failed to create context");

  // Create the program for all device. Use the first device as the
  // representative device (assuming all device are of the same type).
  std::string binary_file = getBoardBinaryFile("main", device[0]);
  printf("Using AOCX: %s\n", binary_file.c_str());
  program = createProgramFromBinary(context, binary_file.c_str(), device, num_devices);

  // Build the program that was just created.
  status = clBuildProgram(program, 0, NULL, "", NULL, NULL);
  checkError(status, "Failed to build program");

  // Create per-device objects.
  queue.reset(num_devices);
  kernel.reset(num_devices);
  n_per_device.reset(num_devices);

  CellLookup_buf.reset(num_devices);
  Rands_buf.reset(num_devices);
  StateT.reset(num_devices);

  Hosts_buf = clCreateBuffer(context, CL_MEM_READ_WRITE, N * 2 * sizeof(struct Person), NULL, &status);
  checkError(status, "Failed to create buffer for Hosts");
  Households_buf = clCreateBuffer(context, CL_MEM_READ_ONLY, N * sizeof(struct Household), NULL, &status);
  checkError(status, "Failed to create buffer for Households");
  P_buf = clCreateBuffer(context, CL_MEM_READ_ONLY, sizeof(struct Param), NULL, &status);
  checkError(status, "Failed to create buffer for P");
  HostsQuarantine_buf = clCreateBuffer(context, CL_MEM_READ_ONLY, N * sizeof(struct PersonQuarantine), NULL, &status);
  checkError(status, "Failed to create buffer for HostQuarantine.");
  Places_buf = clCreateBuffer(context, CL_MEM_READ_ONLY, N * N * sizeof(struct Place), NULL, &status);
  checkError(status, "Failed to create buffer for Places.");
  Mcells_buf = clCreateBuffer(context, CL_MEM_READ_ONLY, N * N * sizeof(struct Microcell), NULL, &status);
  checkError(status, "Failed to create buffer for Mcells.");
  StateT_buf = clCreateBuffer(context, CL_MEM_READ_WRITE, N * sizeof(struct PopVar), NULL, &status);
  checkError(status, "Failed to create buffer for StateT.");


  for(unsigned i = 0; i < num_devices; ++i) {
    // Command queue.
    queue[i] = clCreateCommandQueue(context, device[i], CL_QUEUE_PROFILING_ENABLE, &status);
    checkError(status, "Failed to create command queue");

    // Kernel.
    const char *kernel_name = "infect_sweep";
    kernel[i] = clCreateKernel(program, kernel_name, &status);
    checkError(status, "Failed to create kernel");

    // Determine the number of elements processed by this device.
    n_per_device[i] = N / num_devices; // number of elements handled by this device

    // Spread out the remainder of the elements over the first
    // N % num_devices.
    if(i < (N % num_devices)) {
      n_per_device[i]++;
    }

    // Input buffers.
    CellLookup_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(struct Cell), NULL, &status);
    checkError(status, "Failed to create buffer for CellLookup.");
    Rands_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(double), NULL, &status);
    checkError(status, "Failed to create buffer for random numbers.");
  }

  return true;
}

void init_problem_with_random_data() {
  if(num_devices == 0) {
    checkError(-1, "No devices");
  }


  CellLookup.reset(num_devices);
  Rands.reset(num_devices);

  for (unsigned i = 0; i < num_devices; i++)
  {
    CellLookup[i].reset(n_per_device[i]);
    Rands[i].reset(n_per_device[i]);
    for (unsigned j = 0; j < n_per_device[i]; j++)
    {
      Rands[i][j] = rand_mt();
      struct Cell tmp;
      tmp.I = 1000;
      for (unsigned k = 0; k < 1000; k++) tmp.infected[k] = k;
      CellLookup[i][j] = tmp;
    }
  }


  Hosts.reset(N);
  for (unsigned i = 0; i < N; i++)
  {
    Hosts[i].hh = i;
    Hosts[i].infector = i;
    Hosts[i].mcell = i;
    Hosts[i].pcell = i;

    Hosts[i].treat_start_time = 0;
    Hosts[i].treat_stop_time = 9;
    Hosts[i].vacc_start_time = i;
    Hosts[i].latent_time = 9;
    Hosts[i].infectiousness = 0.2;
    Hosts[i].isolation_start_time = 10;
    Hosts[i].digitalContactTraced = 1;
    Hosts[i].inf = InfStat_Susceptible;
    Hosts[i].Travelling = 1;
    Hosts[i].age = 10;
    Hosts[i].susc = 0.1;
    Hosts[i].esocdist_comply = 10;
    for (int p = 0; p < 4; p++)
    {
      Hosts[i].PlaceLinks[p] = p;
    }

  }

  Households.reset(N);

  for (unsigned i = 0; i < N; i++)
  {
    Households[i].FirstPerson = i;
    Households[i].nh = i;
    Households[i].nhr = i;
  }

  P.usVaccTimeToEfficacy = 10;
  P.TreatInfDrop = 10;
  P.usVaccTimeToEfficacy = 10;
  P.VaccInfDrop = 10;
  P.usCaseIsolationDelay = 10;
  P.usCaseIsolationDuration = 10;
  P.usHQuarantineHouseDuration = 10;
  P.CaseIsolationHouseEffectiveness = 0.2;
  P.HQuarantineHouseEffect = 0.1;
  P.DCTCaseIsolationHouseEffectiveness = 0.1;
  P.PlaceTypeNum = 4;
  P.PlaceCloseHouseholdRelContact = 0.1;
  P.TreatSuscDrop = 0.1;
  P.usVaccTimeEfficacySwitch = 10;
  P.VaccSuscDrop2 = 0.1;
  P.VaccSuscDrop = 0.1;
  P.EnhancedSocDistHouseholdEffectCurrent = 0.1;
  P.SocDistHouseholdEffectCurrent = 0.1;
  P.FalsePositiveRate = 0.5;

  for (unsigned i = 0; i < N; i++)
  {
    P.infectiousness[i] = 0.1;
    P.HouseholdDenomLookup[i] = 0.1;
  }

  for (unsigned i = 0; i < 17; i++)
  {
    P.AgeSusceptibility[i] = 0.1;
    for (unsigned j = 0; j < 17; j++)
    {
      P.WAIFW_Matrix[i][j] = 0.2;
    }
  }

  HostsQuarantine.reset(N);

  for (unsigned i = 0; i < N; i++)
  {
    HostsQuarantine[i].comply = 10;
    HostsQuarantine[i].start_time = 10;
  }

  Places.reset(N * N);
  for (unsigned i = 0; i < N * N; i++)
  {
    Places[i].close_end_time = 10;
    Places[i].close_start_time = 10;
    Places[i].treat_end_time = 10;
  }

  Mcells.reset(N * N);
  for (unsigned i = 0; i < N * N; i++)
  {
    Mcells[i].socdist = 10;
  }

  StateT.reset(N);
  for (unsigned i = 0; i < N; i++)
  {
    for (unsigned j = 0; j < 1000; j++)
    {
      StateT[i].inf_queue_infect_type[j] = 0;
      StateT[i].inf_queue_infectee[j] = 0;
      StateT[i].inf_queue_infector[j] = 0;
    }
  }
}

void run() {
  cl_int status;

  const double start_time = getCurrentTimestamp();

  // Launch the problem for each device.
  scoped_array<cl_event> kernel_event(num_devices);
  scoped_array<cl_event> finish_event(num_devices);

  for(unsigned i = 0; i < num_devices; ++i) {

    unsigned event_count = 9;

    cl_event write_event[event_count];
    status = clEnqueueWriteBuffer(queue[i], CellLookup_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(struct Cell), CellLookup[i], 0, NULL, &write_event[0]);
    checkError(status, "Failed to transfer input CellLookup");

    status = clEnqueueWriteBuffer(queue[i], Hosts_buf, CL_FALSE,
        0, N * 2 * sizeof(struct Person), Hosts, 0, NULL, &write_event[1]);
    checkError(status, "Failed to transfer input Hosts");

    status = clEnqueueWriteBuffer(queue[i], Households_buf, CL_FALSE,
        0, N * sizeof(struct Household), Households, 0, NULL, &write_event[2]);
    checkError(status, "Failed to transfer input Households");
  
    status = clEnqueueWriteBuffer(queue[i], P_buf, CL_FALSE,
        0, sizeof(struct Param), &P, 0, NULL, &write_event[3]);
    checkError(status, "Failed to transfer input P");
     
    status = clEnqueueWriteBuffer(queue[i], HostsQuarantine_buf, CL_FALSE,
        0, N * sizeof(struct PersonQuarantine), HostsQuarantine, 0, NULL, &write_event[4]);
    checkError(status, "Failed to transfer input HostsQuarantine");

    status = clEnqueueWriteBuffer(queue[i], Places_buf, CL_FALSE,
        0, N * N * sizeof(struct Place), Places, 0, NULL, &write_event[5]);
    checkError(status, "Failed to transfer input Places");

    status = clEnqueueWriteBuffer(queue[i], Mcells_buf, CL_FALSE,
        0, N * N * sizeof(struct Microcell), Mcells, 0, NULL, &write_event[6]);
    checkError(status, "Failed to transfer input Mcells");

    status = clEnqueueWriteBuffer(queue[i], Rands_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(double), Rands[i], 0, NULL, &write_event[7]);
    checkError(status, "Failed to transfer input Rands");

    status = clEnqueueWriteBuffer(queue[i], StateT_buf, CL_FALSE,
        0, N * sizeof(struct PopVar), StateT, 0, NULL, &write_event[8]);
    checkError(status, "Failed to transfer input StateT");


    // Set kernel arguments.
    unsigned argi = 0;

    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &P_buf);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &CellLookup_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Hosts_buf);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Households_buf);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &HostsQuarantine_buf);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Places_buf);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Mcells_buf);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Rands_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &StateT_buf);
    checkError(status, "Failed to set argument %d", argi - 1);
 

    const size_t global_work_size = 1;
    printf("debug: global_work_size: %d\n", global_work_size);
    printf("Launching for device %d (%zd elements)\n", i, global_work_size);

    status = clEnqueueNDRangeKernel(queue[i], kernel[i], 1, NULL,
        &global_work_size, NULL, event_count, write_event, &kernel_event[i]);

    checkError(status, "Failed to launch kernel");

    status = clEnqueueReadBuffer(queue[i], StateT_buf, CL_FALSE,
        0, N * sizeof(struct PopVar), StateT, 1, &kernel_event[i], &finish_event[i]);

    for (unsigned k = 0; k < event_count; k++)
    {
      clReleaseEvent(write_event[k]);
    }
  }


  clWaitForEvents(num_devices, finish_event);

  const double end_time = getCurrentTimestamp();

  // Wall-clock time taken.
  printf("\nTime: %0.3f ms\n", (end_time - start_time) * 1e3);



  // Release all events.
  for(unsigned i = 0; i < num_devices; ++i) {
    clReleaseEvent(kernel_event[i]);    
    clReleaseEvent(finish_event[i]);
  }


  printf("Program finished\n");

}

// Free the resources allocated during initialization
void cleanup() {
  for(unsigned i = 0; i < num_devices; ++i) {
    if(kernel && kernel[i]) {
      clReleaseKernel(kernel[i]);
    }
    if(queue && queue[i]) {
      clReleaseCommandQueue(queue[i]);
    }
    if(CellLookup_buf && CellLookup_buf[i]) {
      clReleaseMemObject(CellLookup_buf[i]);
    }
  }

  if(program) {
    clReleaseProgram(program);
  }
  if(context) {
    clReleaseContext(context);
  }
}

