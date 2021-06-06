

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
scoped_array<scoped_aligned_ptr<float> > Inf; 
scoped_array<scoped_aligned_ptr<float> > P_Inf; 

scoped_array<scoped_aligned_ptr<float> > Contact; 
scoped_array<scoped_aligned_ptr<float> > P_Contact; 

scoped_array<scoped_aligned_ptr<float> > Sus_Positive; 
scoped_array<scoped_aligned_ptr<float> > P_Sus_Positive; 

scoped_array<scoped_aligned_ptr<float> > Sus_Negative; 
scoped_array<scoped_aligned_ptr<float> > P_Sus_Negative; 


scoped_array<scoped_aligned_ptr<float> > Result;


scoped_array<cl_mem> Inf_buf;
scoped_array<cl_mem> P_Inf_buf;

scoped_array<cl_mem> Contact_buf;
scoped_array<cl_mem> P_Contact_buf;

scoped_array<cl_mem> Sus_Positive_buf;
scoped_array<cl_mem> P_Sus_Positive_buf;

scoped_array<cl_mem> Sus_Negative_buf;
scoped_array<cl_mem> P_Sus_Negative_buf;

scoped_array<cl_mem> Result_buf;


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

  Inf_buf.reset(num_devices);
  P_Inf_buf.reset(num_devices);

  Contact_buf.reset(num_devices);
  P_Contact_buf.reset(num_devices);

  Sus_Positive_buf.reset(num_devices);
  P_Sus_Positive_buf.reset(num_devices);

  Sus_Negative_buf.reset(num_devices);
  P_Sus_Negative_buf.reset(num_devices);

  Result_buf.reset(num_devices);

  for(unsigned i = 0; i < num_devices; ++i) {
    // Command queue.
    queue[i] = clCreateCommandQueue(context, device[i], CL_QUEUE_PROFILING_ENABLE, &status);
    checkError(status, "Failed to create command queue");

    // Kernel.
    const char *kernel_name = "sweep";
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
    Inf_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(float) * 5, NULL, &status);
    checkError(status, "Failed to create buffer for Inf.");
    P_Inf_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        5 * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for P_Inf_buf.");
    

    Contact_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(float) * 5 * 10, NULL, &status);
    checkError(status, "Failed to create buffer for Contact_buf.");
    P_Contact_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        5 * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for P_Contact_buf.");



    Sus_Positive_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(float) * 5 * 10, NULL, &status);
    checkError(status, "Failed to create buffer for Sus_Positive_buf.");
    P_Sus_Positive_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        5 * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for P_Sus_Positive_buf.");
  
    Sus_Negative_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * sizeof(float) * 5 * 10, NULL, &status);
    checkError(status, "Failed to create buffer for Sus_Negative_buf.");
    P_Sus_Negative_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        5 * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for P_Sus_Negative_buf.");

    Result_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY, 
        n_per_device[i] * 10 * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for Result_buf.");

    
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



  Inf.reset(num_devices);
  P_Inf.reset(num_devices);

  Contact.reset(num_devices);
  P_Contact.reset(num_devices);

  Sus_Positive.reset(num_devices);
  P_Sus_Positive.reset(num_devices);

  Sus_Negative.reset(num_devices);
  P_Sus_Negative.reset(num_devices);

  Result.reset(num_devices);


  for (unsigned i = 0; i < num_devices; i++)
  {
    
    Result[i].reset(n_per_device[i] * 10);
    Inf[i].reset(n_per_device[i] * 10);
    P_Inf[i].reset(5);

    Contact[i].reset(n_per_device[i] * 10 * 5);
    P_Contact[i].reset(5);

    Sus_Positive[i].reset(n_per_device[i] * 10 * 5);
    P_Sus_Positive[i].reset(5);    
    
    Sus_Negative[i].reset(n_per_device[i] * 10 * 5);
    P_Sus_Negative[i].reset(5);




    for (unsigned j = 0; j < 5; j++)
    {
      P_Inf[i][j] = random_float(0.1, 1);
      P_Contact[i][j] = random_float(0.1, 1);
      P_Sus_Positive[i][j] = random_float(0.1, 1);
      P_Sus_Negative[i][j] = random_float(0.1, 1); 
    }


    for (unsigned j = 0; j < n_per_device[i] * 10; j++)
    {
      Inf[i][j] = random_float(0.1, 1);
      for (unsigned k = 0; k < 5; k++)
      {
        Contact[i][j * 5 + k] = random_float(0.1, 1);
        Sus_Positive[i][j * 5 + k] = random_float(0.1, 1);
        Sus_Negative[i][j * 5 + k] = random_float(0.1, 1);
      }
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

    unsigned event_count = 8;

    cl_event write_event[event_count];
    status = clEnqueueWriteBuffer(queue[i], Inf_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(float) * 5, Inf[i], 0, NULL, &write_event[0]);
    checkError(status, "Fail to transfer Inf\n");

    status = clEnqueueWriteBuffer(queue[i], P_Inf_buf[i], CL_FALSE,
        0, sizeof(float) * 5, Inf[i], 0, NULL, &write_event[1]);
    checkError(status, "Fail to transfer P_Inf\n");

    status = clEnqueueWriteBuffer(queue[i], Contact_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(float) * 5 * 10, Contact[i], 0, NULL, &write_event[2]);
    checkError(status, "Fail to transfer Contact\n");

    status = clEnqueueWriteBuffer(queue[i], P_Contact_buf[i], CL_FALSE,
        0, sizeof(float) * 5, P_Contact[i], 0, NULL, &write_event[3]);
    checkError(status, "Fail to transfer P_Contact\n");
  
    status = clEnqueueWriteBuffer(queue[i], Sus_Positive_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(float) * 5 * 10, Sus_Positive[i], 0, NULL, &write_event[4]);
    checkError(status, "Fail to transfer Sus_Positive\n");    
    
    status = clEnqueueWriteBuffer(queue[i], P_Sus_Positive_buf[i], CL_FALSE,
        0, sizeof(float) * 5, P_Sus_Positive[i], 0, NULL, &write_event[5]);
    checkError(status, "Fail to transfer P_Sus_Positive\n");

    status = clEnqueueWriteBuffer(queue[i], Sus_Negative_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(float) * 5 * 10, Sus_Negative[i], 0, NULL, &write_event[6]);
    checkError(status, "Fail to transfer Sus_Negative\n");

    status = clEnqueueWriteBuffer(queue[i], P_Sus_Negative_buf[i], CL_FALSE,
        0, sizeof(float) * 5, P_Sus_Negative[i], 0, NULL, &write_event[7]);
    checkError(status, "Fail to transfer P_Sus_Negative\n");

  
    // Set kernel arguments.
    unsigned argi = 0;

     status = clSetKernelArg(kernel[i], argi++, sizeof(int), &N);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Inf_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &P_Inf_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Contact_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &P_Contact_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Sus_Positive_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &P_Sus_Positive_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Sus_Negative_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &P_Sus_Negative_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

    status = clSetKernelArg(kernel[i], argi++, sizeof(cl_mem), &Result_buf[i]);
    checkError(status, "Failed to set argument %d", argi - 1);

   

    const size_t global_work_size = 1;
    printf("debug: global_work_size: %d\n", global_work_size);
    printf("Launching for device %d (%zd elements)\n", i, global_work_size);

    const double buffer_time = getCurrentTimestamp();

    printf("\nBufferTime: %0.3f ms\n", (buffer_time - start_time) * 1e3);

    status = clEnqueueNDRangeKernel(queue[i], kernel[i], 1, NULL,
        &global_work_size, NULL, event_count, write_event, &kernel_event[i]);
      
    checkError(status, "Failed to launch kernel");

    status = clEnqueueReadBuffer(queue[i], Result_buf[i], CL_FALSE,
        0, n_per_device[i] * sizeof(float) * 10, Result[i], 1, &kernel_event[i], &finish_event[i]);

    // for (unsigned k = 0; k < event_count; k++)
    // {
    //   clReleaseEvent(write_event[k]);
    // }
  }



  clWaitForEvents(num_devices, kernel_event);

  const double end_time = getCurrentTimestamp();

   // Wall-clock time taken.
  printf("\nTime: %0.3f ms\n", (end_time - start_time) * 1e3);

  clWaitForEvents(num_devices, finish_event);

  const double buffer_back_time = getCurrentTimestamp();

 

  printf("\nBuffer Back Time: %0.3f ms\n", (buffer_back_time - end_time) * 1e3);


  for (int i = 0; i < num_devices; i++)
  {
    for (int j = 0; j < 10; j++)
    {
      printf("Result[%d][%d] = %f\n", i, j, Result[i][j]);
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
    if(Inf_buf && Inf_buf[i]) {
      clReleaseMemObject(Inf_buf[i]);
    }
    if(P_Inf_buf && P_Inf_buf[i]) {
      clReleaseMemObject(P_Inf_buf[i]);
    }
    if(Sus_Positive_buf && Sus_Positive_buf[i]) {
      clReleaseMemObject(Sus_Positive_buf[i]);
    }
    if(Sus_Negative_buf && Sus_Negative_buf[i]) {
      clReleaseMemObject(Sus_Negative_buf[i]);
    }
    if(P_Sus_Positive_buf && P_Sus_Positive_buf[i]) {
      clReleaseMemObject(P_Sus_Positive_buf[i]);
    }    
    if(P_Sus_Negative_buf && P_Sus_Negative_buf[i]) {
      clReleaseMemObject(P_Sus_Negative_buf[i]);
    }
  }

  if(program) {
    clReleaseProgram(program);
  }
  if(context) {
    clReleaseContext(context);
  }
}
