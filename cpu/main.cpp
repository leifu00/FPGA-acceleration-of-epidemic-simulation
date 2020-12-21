#include <vector>
#include <iostream>
#include <time.h>
#include <math.h>

using namespace std;



vector<bool> InfStats; 
vector<bool> Travelling; 
vector<float> HouseInf; 
vector<bool> Absent;
vector<float> WAIFW_Matrix; 
vector<float> AgeSusceptibility; 
vector<int> Age; 
vector<float> Susceptibility; 
vector<bool> Treated; 
vector<bool>  Vaccinated; 
vector<float> Results; 


int problem_size = 1000000;

void init();

void run();


int main()
{
    init();
    clock_t tStart = clock();

    run();

    printf("Time taken: %.2fs\n", (double)(clock() - tStart)/CLOCKS_PER_SEC);

    return 0;
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



void init()
{
    InfStats.resize(problem_size);
    Travelling.resize(problem_size);
    HouseInf.resize(problem_size);
    WAIFW_Matrix.resize(100);
    AgeSusceptibility.resize(100);
    Absent.resize(problem_size);
    Results.resize(problem_size);


    Age.resize(problem_size * 15);
    Susceptibility.resize(problem_size * 15);
    Treated.resize(problem_size * 15);
    Vaccinated.resize(problem_size * 15);
    Results.resize(problem_size * 15);
    Absent.resize(problem_size * 15);

    for (int i = 0; i < problem_size; i++)
    {
        InfStats[i] = true;
        Travelling[i] = false;
        HouseInf[i] = random_float(0.1, 1);
    }

    for (int i = 0; i < 100; i++)
    {
        AgeSusceptibility[i] = random_float(0.1, 1);
        WAIFW_Matrix[i] = random_float(0.1, 1);
    }

    for (int i = 0; i < problem_size * 10; i++)
    {
        Age[i] = random_int(0, 100);
        Susceptibility[i] = random_float(0.1, 1);
        Treated[i] =  false;
        Vaccinated[i] = true;
        Results[i] = 0;
    }
 
}

void run()
{
    for (int i = 0; i < problem_size; i++)
    {
        float FOI = HouseInf[i];
        bool travelling = Travelling[i];
        bool infStats = InfStats[i];

        int number_of_absent = 0;
        int first_absent = 0;

        for (int j = i * 15; j < (i + 1) * 15; j++)
        {
            FOI *= (1 + 2 * Absent[j]);
        }
            
        for (int j = i * 15; j < (i + 1) * 15; j++)
        {
            int host_age_group = Age[j] / 17;
            int infector_age_group = Age[i] / 17;
            float infectee_susceptibility = AgeSusceptibility[host_age_group] * Susceptibility[j];
            FOI *= WAIFW_Matrix[host_age_group * 17 + infector_age_group] * infectee_susceptibility;
            FOI *= (1.0 - Treated[j] * 2) * (1.0 - Vaccinated[j] * 2);
            Results[j] = FOI * (!travelling) * infStats;
        }
    }    

}