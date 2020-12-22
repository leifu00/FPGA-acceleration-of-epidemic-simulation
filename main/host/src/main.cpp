
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "CL/opencl.h"
#include "AOCLUtils/aocl_utils.h"

using namespace aocl_utils;


#include "models.h"
#include "param.h"
#include "rand.h"

#define MAX_HOUSEHOLD_SIZE 15


// OpenCL runtime configuration
cl_platform_id platform = NULL;
unsigned num_devices = 0;
scoped_array<cl_device_id> device; // num_devices elements
cl_context context = NULL;
scoped_array<cl_command_queue> queue; // num_devices elements
cl_program program = NULL;
scoped_array<cl_kernel> kernel; // num_devices elements



// Basic global structures



scoped_array<scoped_aligned_ptr<bool> > InfStats; 
scoped_array<scoped_aligned_ptr<bool> > Travelling; 
scoped_array<scoped_aligned_ptr<float> > HouseInf; 
scoped_array<scoped_aligned_ptr<float> > HouseSusc; 
scoped_array<scoped_aligned_ptr<bool> > Absent; 
scoped_array<scoped_aligned_ptr<int> > Infectors; 
scoped_array<scoped_aligned_ptr<float> > WAIFW_Matrix; 
scoped_array<scoped_aligned_ptr<float> > AgeSusceptibility; 
scoped_array<scoped_aligned_ptr<int> > Age; 
scoped_array<scoped_aligned_ptr<float> > Susceptibility; 
scoped_array<scoped_aligned_ptr<bool> > Treated; 
scoped_array<scoped_aligned_ptr<bool> > Vaccinated; 
scoped_array<scoped_aligned_ptr<float> > Results; 




scoped_array<cl_mem> InfStats_buf;
scoped_array<cl_mem> Travelling_buf;
scoped_array<cl_mem> HouseInf_buf;
scoped_array<cl_mem> HouseSusc_buf;
scoped_array<cl_mem> Absent_buf;
scoped_array<cl_mem> Infectors_buf;
scoped_array<cl_mem> WAIFW_Matrix_buf;
scoped_array<cl_mem> AgeSusceptibility_buf;
scoped_array<cl_mem> Age_buf;
scoped_array<cl_mem> Susceptibility_buf;
scoped_array<cl_mem> Treated_buf;
scoped_array<cl_mem> Vaccinated_buf;
scoped_array<cl_mem> Results_buf;









// Problem data.
unsigned N = 10000000; // problem size


scoped_array<unsigned> n_per_device; // num_devices elements

// Control whether the emulator should be used.
bool use_emulator = false;

// Function prototypes
float random_float(float min, float max);
int random_int(int min, int max);
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

  InfStats_buf.reset(num_devices);
  Travelling_buf.reset(num_devices);
  HouseInf_buf.reset(num_devices);
  HouseSusc_buf.reset(num_devices);
  Absent_buf.reset(num_devices);
  Infectors_buf.reset(num_devices);
  WAIFW_Matrix_buf.reset(num_devices);
  AgeSusceptibility_buf.reset(num_devices);
  Age_buf.reset(num_devices);
  Susceptibility_buf.reset(num_devices);
  Treated_buf.reset(num_devices);
  Vaccinated_buf.reset(num_devices);
  Results_buf.reset(num_devices);


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
    InfStats_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(bool), NULL, &status);
    checkError(status, "Failed to create buffer for InfStats.");
    Travelling_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(bool), NULL, &status);
    checkError(status, "Failed to create buffer for Travelling.");
    HouseInf_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for HouseInf.");
    Absent_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(bool) * MAX_HOUSEHOLD_SIZE, NULL, &status);
    checkError(status, "Failed to create buffer for Absent.");
    Infectors_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(int), NULL, &status);
    checkError(status, "Failed to create buffer for Infectors.");
    WAIFW_Matrix_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(float) * MAX_HOUSEHOLD_SIZE, NULL, &status);
    checkError(status, "Failed to create buffer for WAIFW_Matrix.");
    AgeSusceptibility_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(float) * MAX_HOUSEHOLD_SIZE, NULL, &status);
    checkError(status, "Failed to create buffer for AgeSusceptibility.");
    Age_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(int) * MAX_HOUSEHOLD_SIZE, NULL, &status);
    checkError(status, "Failed to create buffer for Age.");
    Susceptibility_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(float) * MAX_HOUSEHOLD_SIZE, NULL, &status);
    checkError(status, "Failed to create buffer for Susceptibility.");
    Treated_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(bool) * MAX_HOUSEHOLD_SIZE, NULL, &status);
    checkError(status, "Failed to create buffer for Treated.");
    Vaccinated_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(bool) * MAX_HOUSEHOLD_SIZE, NULL, &status);
    checkError(status, "Failed to create buffer for Vaccinated.");
    Results_buf[i] = clCreateBuffer(context, CL_MEM_READ_WRITE, 
        n_per_device[i] * sizeof(float) * MAX_HOUSEHOLD_SIZE, NULL, &status);
    checkError(status, "Failed to create buffer for Results.");
  }

  return true;
}


float random_float(float a, float b)
{
    float random = ((float) rand()) / (float) RAND_MAX;
    float diff = b - a;
    float r = random * diff;
    return a + r;
}

int random_int(int min, int max)    
{    
    return rand() % (max - min) + min + 1;     
}


void init_problem_with_random_data() {
  if(num_devices == 0) {
    checkError(-1, "No devices");
  }


  InfStats.reset(num_devices);
  Travelling.reset(num_devices);
  HouseInf.reset(num_devices);
  Absent.reset(num_devices);
  Infectors.reset(num_devices);
  WAIFW_Matrix.reset(num_devices);
  AgeSusceptibility.reset(num_devices);
  Age.reset(num_devices);
  Susceptibility.reset(num_devices);
  Treated.reset(num_devices);
  Vaccinated.reset(num_devices);
  Results.reset(num_devices);
  


  for (unsigned i = 0; i < num_devices; i++)
  {
    InfStats[i].reset(n_per_device[i]);
    Travelling[i].reset(n_per_device[i]);
    HouseInf[i].reset(n_per_device[i]);    
    Absent[i].reset(n_per_device[i] * MAX_HOUSEHOLD_SIZE);    
    Infectors[i].reset(n_per_device[i]);
    WAIFW_Matrix[i].reset(n_per_device[i] * MAX_HOUSEHOLD_SIZE);
    AgeSusceptibility[i].reset(n_per_device[i] * MAX_HOUSEHOLD_SIZE);
    Age[i].reset(n_per_device[i] * MAX_HOUSEHOLD_SIZE);
    Susceptibility[i].reset(n_per_device[i] * MAX_HOUSEHOLD_SIZE);
    Treated[i].reset(n_per_device[i] * MAX_HOUSEHOLD_SIZE);
    Vaccinated[i].reset(n_per_device[i] * MAX_HOUSEHOLD_SIZE);
    Results[i].reset(n_per_device[i] * MAX_HOUSEHOLD_SIZE);

    for (unsigned j = 0; j < n_per_device[i]; j++)
    {
      InfStats[i][j] = true;
      Travelling[i][j] = false;
      HouseInf[i][j] = random_float(0.1, 1);
      Absent[i][j] = true;
      Infectors[i][j] = j;
    }


    for (unsigned j = 0; j < n_per_device[i] * MAX_HOUSEHOLD_SIZE; j++)
    {
      WAIFW_Matrix[i][j] = random_float(0.1, 1);
      AgeSusceptibility[i][j] = random_float(0.1, 1);
      Age[i][j] = random_int(0, 100);
      Susceptibility[i][j] = random_float(0.1, 1);
      Treated[i][j] =  false;
      Vaccinated[i][j] = true;
      Results[i][j] = 0;
    }
  }


 
}

void run() {
  const double start_time = getCurrentTimestamp();
  cl_int status;


  // Launch the problem for each device.
  scoped_array<cl_event> kernel_event(num_devices);
  scoped_array<cl_event> finish_event(num_devices);

  for(unsigned i = 0; i < num_devices; ++i) {

    unsigned event_count = 12;

    cl_event write_event[event_count];
    status = clEnqueueWriteBuffer(queue[i], InfStats_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(bool), InfStats[i], 0, NULL, &write_event[0]);
    checkError(status, "Fail to transfer InfStats\n");
    status = clEnqueueWriteBuffer(queue[i], Travelling_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(bool), Travelling[i], 0, NULL, &write_event[1]);
    checkError(status, "Fail to transfer Travelling\n");
    status = clEnqueueWriteBuffer(queue[i], HouseInf_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(float), HouseInf[i], 0, NULL, &write_event[2]);
    checkError(status, "Fail to transfer HouseInf\n");
    status = clEnqueueWriteBuffer(queue[i], Absent_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(bool) * MAX_HOUSEHOLD_SIZE, Absent[i], 0, NULL, &write_event[3]);
    checkError(status, "Fail to transfer Absent\n");
    status = clEnqueueWriteBuffer(queue[i], Infectors_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(int), Infectors[i], 0, NULL, &write_event[4]);
    checkError(status, "Fail to transfer Infectors\n");
    status = clEnqueueWriteBuffer(queue[i], WAIFW_Matrix_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(float) * MAX_HOUSEHOLD_SIZE, WAIFW_Matrix[i], 0, NULL, &write_event[5]);
    checkError(status, "Fail to transfer WAIFW\n");
    status = clEnqueueWriteBuffer(queue[i], AgeSusceptibility_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(float) * MAX_HOUSEHOLD_SIZE, AgeSusceptibility[i], 0, NULL, &write_event[6]);  
    checkError(status, "Fail to transfer AgeSusceptibility\n");  
    status = clEnqueueWriteBuffer(queue[i], Age_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(int) * MAX_HOUSEHOLD_SIZE, Age[i], 0, NULL, &write_event[7]);
    checkError(status, "Fail to transfer Age\n");
    status = clEnqueueWriteBuffer(queue[i], Susceptibility_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(float) * MAX_HOUSEHOLD_SIZE, Susceptibility[i], 0, NULL, &write_event[8]);
    checkError(status, "Fail to transfer Susceptibility\n");
    status = clEnqueueWriteBuffer(queue[i], Treated_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(bool) * MAX_HOUSEHOLD_SIZE, Treated[i], 0, NULL, &write_event[9]);
    checkError(status, "Fail to transfer Treated\n");
    status = clEnqueueWriteBuffer(queue[i], Vaccinated_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(bool) * MAX_HOUSEHOLD_SIZE, Vaccinated[i], 0, NULL, &write_event[10]);
    checkError(status, "Fail to transfer Vaccinated\n");
    status = clEnqueueWriteBuffer(queue[i], Results_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(float) * MAX_HOUSEHOLD_SIZE, Results[i], 0, NULL, &write_event[11]);
    checkError(status, "Fail to transfer Results\n");

    // Set kernel arguments.
    unsigned argi = 0;

    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &InfStats_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Travelling_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &HouseInf_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Absent_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Infectors_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &WAIFW_Matrix_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);    
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &AgeSusceptibility_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Age_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Susceptibility_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Treated_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Vaccinated_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);
    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Results_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    const size_t global_work_size = 1;
    printf("debug: global_work_size: %d\n", global_work_size);
    printf("Launching for device %d (%zd elements)\n", i, global_work_size);

    status = clEnqueueNDRangeKernel(queue[i], kernel[i], 1, NULL,
        &global_work_size, NULL, event_count, write_event, &kernel_event[i]);
      
    checkError(status, "Failed to launch kernel");

    status = clEnqueueReadBuffer(queue[i], Results_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(float) * MAX_HOUSEHOLD_SIZE, Results[i], 1, &kernel_event[i], &finish_event[i]);

    for (unsigned k = 0; k < event_count; k++)
    {
      clReleaseEvent(write_event[k]);
    }
  }



  clWaitForEvents(num_devices, finish_event);

  const double end_time = getCurrentTimestamp();

  // Wall-clock time taken.
  printf("\nTime: %0.3f ms\n", (end_time - start_time) * 1e3);

  for (int i = 0; i < num_devices; i++)
  {
    for (int j = 5000000; j < 5000010; j++)
    {
      printf("Results[%d][%d] = %f\n", i, j, Results[i][j]);
    }
  }


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
    if(InfStats_buf && InfStats_buf[i]) {
      clReleaseMemObject(InfStats_buf[i]);
    }
    if(Travelling_buf && Travelling_buf[i]) {
      clReleaseMemObject(Travelling_buf[i]);
    }
    if(HouseInf_buf && HouseInf_buf[i]) {
      clReleaseMemObject(HouseInf_buf[i]);
    }
    if(Absent_buf && Absent_buf[i]) {
      clReleaseMemObject(Absent_buf[i]);
    }
    if(Infectors_buf && Infectors_buf[i]) {
      clReleaseMemObject(Infectors_buf[i]);
    }    
    if(Results_buf && Results_buf[i]) {
      clReleaseMemObject(Results_buf[i]);
    }
  }

  if(program) {
    clReleaseProgram(program);
  }
  if(context) {
    clReleaseContext(context);
  }
}

