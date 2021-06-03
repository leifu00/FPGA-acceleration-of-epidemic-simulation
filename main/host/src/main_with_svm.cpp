
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "CL/opencl.h"
#include "AOCLUtils/aocl_utils.h"

using namespace aocl_utils;


#include "models.h"
#include "param.h"
#include "rand.h"

#define MAX_HOUSEHOLD_SIZE 10


// OpenCL runtime configuration
cl_platform_id platform = NULL;
unsigned num_devices = 0;
scoped_array<cl_device_id> device; // num_devices elements
cl_context context = NULL;
scoped_array<cl_command_queue> queue; // num_devices elements
cl_program program = NULL;
scoped_array<cl_kernel> kernel; // num_devices elements



// Basic global structures
scoped_array<scoped_SVM_aligned_ptr<bool> > InfStats; 
scoped_array<scoped_SVM_aligned_ptr<bool> > Travelling; 
scoped_array<scoped_SVM_aligned_ptr<float> > HouseInf; 
scoped_array<scoped_SVM_aligned_ptr<float> > HouseSusc; 
scoped_array<scoped_SVM_aligned_ptr<bool> > Absent; 
scoped_array<scoped_SVM_aligned_ptr<int> > Infectors; 
scoped_array<scoped_SVM_aligned_ptr<float> > WAIFW_Matrix; 
scoped_array<scoped_SVM_aligned_ptr<float> > AgeSusceptibility; 
scoped_array<scoped_SVM_aligned_ptr<int> > Age; 
scoped_array<scoped_SVM_aligned_ptr<float> > Susceptibility; 
scoped_array<scoped_SVM_aligned_ptr<bool> > Treated; 
scoped_array<scoped_SVM_aligned_ptr<bool> > Vaccinated; 
scoped_array<scoped_SVM_aligned_ptr<float> > Results; 




// Problem data.
unsigned N = 100000; // problem size


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
    InfStats[i].reset(context, n_per_device[i]);
    Travelling[i].reset(context, n_per_device[i]);
    HouseInf[i].reset(context, n_per_device[i]);    
    Absent[i].reset(context, n_per_device[i] * MAX_HOUSEHOLD_SIZE);    
    Infectors[i].reset(context, n_per_device[i]);
    WAIFW_Matrix[i].reset(context, n_per_device[i] * MAX_HOUSEHOLD_SIZE);
    AgeSusceptibility[i].reset(context, n_per_device[i] * MAX_HOUSEHOLD_SIZE);
    Age[i].reset(context, n_per_device[i] * MAX_HOUSEHOLD_SIZE);
    Susceptibility[i].reset(context, n_per_device[i] * MAX_HOUSEHOLD_SIZE);
    Treated[i].reset(context, n_per_device[i] * MAX_HOUSEHOLD_SIZE);
    Vaccinated[i].reset(context, n_per_device[i] * MAX_HOUSEHOLD_SIZE);
    Results[i].reset(context, n_per_device[i] * MAX_HOUSEHOLD_SIZE);


    cl_int status;

    status = clEnqueueSVMMap(queue[i], CL_TRUE, CL_MAP_WRITE,
        (void *)InfStats[i], n_per_device[i] * sizeof(bool), 0, NULL, NULL);
    checkError(status, "Failed to map input InfStats");

    status = clEnqueueSVMMap(queue[i], CL_TRUE, CL_MAP_WRITE,
        (void *)Travelling[i], n_per_device[i] * sizeof(bool), 0, NULL, NULL);
    checkError(status, "Failed to map input Travelling");

    status = clEnqueueSVMMap(queue[i], CL_TRUE, CL_MAP_WRITE,
        (void *)HouseInf[i], n_per_device[i] * sizeof(float), 0, NULL, NULL);
    checkError(status, "Failed to map input HouseInf");

    status = clEnqueueSVMMap(queue[i], CL_TRUE, CL_MAP_WRITE,
        (void *)Absent[i], n_per_device[i] * sizeof(float) * MAX_HOUSEHOLD_SIZE, 0, NULL, NULL);
    checkError(status, "Failed to map input Absent");

   status = clEnqueueSVMMap(queue[i], CL_TRUE, CL_MAP_WRITE,
        (void *)Infectors[i], n_per_device[i] * sizeof(int), 0, NULL, NULL);
    checkError(status, "Failed to map input Infectors");

    status = clEnqueueSVMMap(queue[i], CL_TRUE, CL_MAP_WRITE,
        (void *)WAIFW_Matrix[i], n_per_device[i] * sizeof(float) * MAX_HOUSEHOLD_SIZE, 0, NULL, NULL);
    checkError(status, "Failed to map input WAIFW_Matrix");

    status = clEnqueueSVMMap(queue[i], CL_TRUE, CL_MAP_WRITE,
        (void *)AgeSusceptibility[i], n_per_device[i] * sizeof(float) * MAX_HOUSEHOLD_SIZE, 0, NULL, NULL);
    checkError(status, "Failed to map input AgeSusceptibility");

    status = clEnqueueSVMMap(queue[i], CL_TRUE, CL_MAP_WRITE,
        (void *)Age[i], n_per_device[i] * sizeof(int) * MAX_HOUSEHOLD_SIZE, 0, NULL, NULL);
    checkError(status, "Failed to map input Age");

    status = clEnqueueSVMMap(queue[i], CL_TRUE, CL_MAP_WRITE,
        (void *)Susceptibility[i], n_per_device[i] * sizeof(int) * MAX_HOUSEHOLD_SIZE, 0, NULL, NULL);
    checkError(status, "Failed to map input Susceptibility");

    status = clEnqueueSVMMap(queue[i], CL_TRUE, CL_MAP_WRITE,
        (void *)Treated[i], n_per_device[i] * sizeof(bool) * MAX_HOUSEHOLD_SIZE, 0, NULL, NULL);
    checkError(status, "Failed to map input Treated");

    status = clEnqueueSVMMap(queue[i], CL_TRUE, CL_MAP_WRITE,
        (void *)Vaccinated[i], n_per_device[i] * sizeof(bool) * MAX_HOUSEHOLD_SIZE, 0, NULL, NULL);
    checkError(status, "Failed to map input Vaccinated");

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
    }

    status = clEnqueueSVMUnmap(queue[i], (void *)InfStats[i], 0, NULL, NULL);
    checkError(status, "Failed to unmap input InfStats");

    status = clEnqueueSVMUnmap(queue[i], (void *)Travelling[i], 0, NULL, NULL);
    checkError(status, "Failed to unmap input Travelling");

    status = clEnqueueSVMUnmap(queue[i], (void *)HouseInf[i], 0, NULL, NULL);
    checkError(status, "Failed to unmap input HouseInf");

    status = clEnqueueSVMUnmap(queue[i], (void *)Absent[i], 0, NULL, NULL);
    checkError(status, "Failed to unmap input Absent");

    status = clEnqueueSVMUnmap(queue[i], (void *)Infectors[i], 0, NULL, NULL);
    checkError(status, "Failed to unmap input Infectors");

    status = clEnqueueSVMUnmap(queue[i], (void *)WAIFW_Matrix[i], 0, NULL, NULL);
    checkError(status, "Failed to unmap input WAIFW_Matrix");

    status = clEnqueueSVMUnmap(queue[i], (void *)AgeSusceptibility[i], 0, NULL, NULL);
    checkError(status, "Failed to unmap input AgeSusceptibility");

    status = clEnqueueSVMUnmap(queue[i], (void *)Age[i], 0, NULL, NULL);
    checkError(status, "Failed to unmap input Age");

    status = clEnqueueSVMUnmap(queue[i], (void *)Susceptibility[i], 0, NULL, NULL);
    checkError(status, "Failed to unmap input Susceptibility");

    status = clEnqueueSVMUnmap(queue[i], (void *)Treated[i], 0, NULL, NULL);
    checkError(status, "Failed to unmap input Treated");

    status = clEnqueueSVMUnmap(queue[i], (void *)Vaccinated[i], 0, NULL, NULL);
    checkError(status, "Failed to unmap input Vaccinated");

  }


 
}

void run() {
  const double start_time = getCurrentTimestamp();
  cl_int status;


  // Launch the problem for each device.
  scoped_array<cl_event> kernel_event(num_devices);
  scoped_array<cl_event> finish_event(num_devices);

  for(unsigned i = 0; i < num_devices; ++i) {

    // Set kernel arguments.
    unsigned argi = 0;

    status = clSetKernelArgSVMPointer(kernel[i], argi++, (void*)InfStats[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArgSVMPointer(kernel[i], argi++, (void*)Travelling[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArgSVMPointer(kernel[i], argi++, (void*)HouseInf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArgSVMPointer(kernel[i], argi++, (void*)Absent[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArgSVMPointer(kernel[i], argi++, (void*)Infectors[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArgSVMPointer(kernel[i], argi++, (void*)WAIFW_Matrix[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArgSVMPointer(kernel[i], argi++, (void*)AgeSusceptibility[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArgSVMPointer(kernel[i], argi++, (void*)Age[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArgSVMPointer(kernel[i], argi++, (void*)Susceptibility[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArgSVMPointer(kernel[i], argi++, (void*)Treated[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArgSVMPointer(kernel[i], argi++, (void*)Vaccinated[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArgSVMPointer(kernel[i], argi++, (void*)Results[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

   status = clSetKernelArg(kernel[i], argi++, sizeof(int), &N);
    checkError(status, "Failed to set argument %d", argi - 1);

    const size_t global_work_size = 1;
    printf("debug: global_work_size: %d\n", global_work_size);
    printf("Launching for device %d (%zd elements)\n", i, global_work_size);

    status = clEnqueueNDRangeKernel(queue[i], kernel[i], 1, NULL,
        &global_work_size, NULL, 0, NULL, &kernel_event[i]);
      
    checkError(status, "Failed to launch kernel");

    status = clEnqueueSVMMap(queue[i], CL_TRUE, CL_MAP_READ,
        (void *)Results[i], n_per_device[i] * sizeof(float) * MAX_HOUSEHOLD_SIZE, 0, NULL, NULL);
    checkError(status, "Failed to map Results");
	clFinish(queue[i]);
  }


  const double end_time = getCurrentTimestamp();

  // Wall-clock time taken.
  printf("\nTime: %0.3f ms\n", (end_time - start_time) * 1e3);

  for (int i = 0; i < num_devices; i++)
  {
    for (int j = 0; j < 10; j++)
    {
      printf("Results[%d][%d] = %f\n", i, j, Results[i][j]);
    }
  }


  // Release all events.
  for(unsigned i = 0; i < num_devices; ++i) {
    clReleaseEvent(kernel_event[i]);    
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
  }

  if(program) {
    clReleaseProgram(program);
  }
  if(context) {
    clReleaseContext(context);
  }
}

