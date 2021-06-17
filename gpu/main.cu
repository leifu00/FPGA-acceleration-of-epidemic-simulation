#include <stdio.h>
#include <sys/time.h>
#include <vector>
#include <iostream>


using namespace std;

int problem_size = 20000000;


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


__global__
void infect_sweep(int *InfStats, int *Travelling, float *HouseInf, int *Absent, float *WAIFW_Matrix, float *AgeSusceptibility, 
        int *Age, float *Susceptibility, int *Treated, int *Vaccinated, float *Results)
{
    int i =  (blockIdx.x * blockDim.x) + threadIdx.x;
    float FOI = HouseInf[i];

    for (int j = i * 10; j < (i + 1) * 10; j++)
    {
        FOI *= (1 + 2 * Absent[j]);
    }
        
    for (int j = i * 10; j < (i + 1) * 10; j++)
    {
        int host_age_group = Age[j] / 17;
        int infector_age_group = Age[i] / 17;
        float infectee_susceptibility = AgeSusceptibility[host_age_group] * Susceptibility[j];
        FOI *= WAIFW_Matrix[host_age_group * 17 + infector_age_group] * infectee_susceptibility;
        FOI *= (1.0 - Treated[j] * 2) * (1.0 - Vaccinated[j] * 2) * Travelling[i] * InfStats[i];
        Results[j] = FOI;
    }
}

int main(void)
{

        int *InfStats_h = (int *)malloc(problem_size*sizeof(int));
        int *Travelling_h = (int *)malloc(problem_size*sizeof(int));
        int *HouseInf_h = (int *)malloc(problem_size*sizeof(float));
    
        float *WAIFW_Matrix_h = (float *)malloc(100*sizeof(float));
        float *AgeSusceptibility_h = (float *)malloc(100*sizeof(float));
    
        int *Absent_h = (int *)malloc(15*problem_size*sizeof(int));
        int *Age_h = (int *)malloc(15*problem_size*sizeof(int));
        int *Treated_h = (int *)malloc(15*problem_size*sizeof(int));
        int *Vaccinated_h = (int *)malloc(15*problem_size*sizeof(int));
    
        int *Susceptibility_h = (int *)malloc(15*problem_size*sizeof(float));    
        int *Results_h = (int *)malloc(15*problem_size*sizeof(float));    
    
    
        {
            for (int i = 0; i < problem_size; i++)
            {
                InfStats_h[i] = 1;
                Travelling_h[i] = 0;
                HouseInf_h[i] = random_float(0.1, 1);
            }
        
            for (int i = 0; i < 100; i++)
            {
                AgeSusceptibility_h[i] = random_float(0.1, 1);
                WAIFW_Matrix_h[i] = random_float(0.1, 1);
            }
        
            for (int i = 0; i < problem_size * 10; i++)
            {
                Age_h[i] = random_int(0, 100);
                Susceptibility_h[i] = random_float(0.1, 1);
                Treated_h[i] =  0;
                Vaccinated_h[i] = 1;
                Results_h[i] = 0;
            }
         
        }
    
     
    
      
        int *InfStats_d, *Travelling_d, *Absent_d, *Age_d, *Treated_d, *Vaccinated_d;
        float *HouseInf_d,  *WAIFW_Matrix_d, *AgeSusceptibility_d, *Susceptibility_d, *Results_d;
    
        cudaMalloc(&InfStats_d, problem_size*sizeof(int)); 
        cudaMalloc(&Travelling_d, problem_size*sizeof(int)); 
        cudaMalloc(&Absent_d, 15*problem_size*sizeof(int)); 
        cudaMalloc(&Age_d, 15*problem_size*sizeof(int)); 
        cudaMalloc(&Treated_d, 15*problem_size*sizeof(int)); 
        cudaMalloc(&Vaccinated_d, 15*problem_size*sizeof(int)); 
    
        cudaMalloc(&HouseInf_d, problem_size*sizeof(float)); 
        cudaMalloc(&WAIFW_Matrix_d, 100*sizeof(float)); 
        cudaMalloc(&AgeSusceptibility_d, 100*sizeof(float)); 
        cudaMalloc(&Susceptibility_d, 15*problem_size*sizeof(float)); 
        cudaMalloc(&Results_d, 15*problem_size*sizeof(float)); 
    
        struct timeval t1, t2;
        gettimeofday(&t1, 0);
    
        cudaMemcpy(InfStats_d, InfStats_h, problem_size*sizeof(int), cudaMemcpyHostToDevice);
        cudaMemcpy(Travelling_d, Travelling_h, problem_size*sizeof(int), cudaMemcpyHostToDevice);
        cudaMemcpy(Absent_d, Absent_h, problem_size*sizeof(int)*15, cudaMemcpyHostToDevice);
        cudaMemcpy(Age_d, Age_h, problem_size*sizeof(int)*15, cudaMemcpyHostToDevice);
        cudaMemcpy(Treated_d, Treated_h, problem_size*sizeof(int)*15, cudaMemcpyHostToDevice);
        cudaMemcpy(Vaccinated_d, Vaccinated_h, problem_size*sizeof(int)*15, cudaMemcpyHostToDevice);
        cudaMemcpy(HouseInf_d, HouseInf_h, problem_size*sizeof(float), cudaMemcpyHostToDevice);
        cudaMemcpy(WAIFW_Matrix_d, WAIFW_Matrix_h, 100*sizeof(float), cudaMemcpyHostToDevice);
        cudaMemcpy(AgeSusceptibility_d, AgeSusceptibility_h, 100*sizeof(float), cudaMemcpyHostToDevice);
        cudaMemcpy(Susceptibility_d, Susceptibility_h, problem_size*sizeof(float)*15, cudaMemcpyHostToDevice);
        cudaMemcpy(Results_d, Results_h, problem_size*sizeof(float)*15, cudaMemcpyHostToDevice);
    
    
      infect_sweep<<<(problem_size+255)/256, 256>>>(InfStats_d, Travelling_d, HouseInf_d, Absent_d, WAIFW_Matrix_d, AgeSusceptibility_d, 
        Age_d, Susceptibility_d, Treated_d, Vaccinated_d, Results_d);
    
      cudaMemcpy(Results_h, Results_d, problem_size*15*sizeof(float), cudaMemcpyDeviceToHost);
      gettimeofday(&t2, 0);
      double time = (1000000.0*(t2.tv_sec-t1.tv_sec) + t2.tv_usec-t1.tv_usec)/1000.0;
      printf("Population size: %d. Time to generate:  %3.1f ms.\n", (problem_size*10), time);
    
      free(InfStats_h);
      free(Travelling_h);
      free(HouseInf_h);
      free(WAIFW_Matrix_h);
      free(AgeSusceptibility_h);
      free(Absent_h);
      free(Age_h);
      free(Treated_h);
      free(Vaccinated_h);
      free(Susceptibility_h);
      free(Results_h);
    
      cudaFree(InfStats_d);
      cudaFree(Travelling_d);
      cudaFree(Absent_d);
      cudaFree(Age_d);
      cudaFree(Treated_d);
      cudaFree(Vaccinated_d);
      cudaFree(InfStats_d);
    
      cudaFree(HouseInf_d);
      cudaFree(WAIFW_Matrix_d);
      cudaFree(AgeSusceptibility_d);
      cudaFree(Susceptibility_d);
      cudaFree(Results_d);
   

}