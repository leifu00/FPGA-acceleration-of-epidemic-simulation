#include <vector>
#include <iostream>
#include <time.h>

using namespace std;



vector<bool> InfStats; 
vector<bool> Travelling; 
vector<float> HouseInf; 
vector<float> HouseSusc; 
vector<float> Rands; 
vector<int> Start; 
vector<int> End; 
vector<bool> Absent; 
vector<int> Infectors; 
vector<int> Results; 

int problem_size = 100000;

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


void init()
{
    InfStats.resize(problem_size);
    Travelling.resize(problem_size);
    HouseInf.resize(problem_size);
    HouseSusc.resize(problem_size);
    Rands.resize(problem_size);
    Start.resize(problem_size);
    End.resize(problem_size);
    Absent.resize(problem_size);
    Infectors.resize(problem_size);
    Results.resize(problem_size);

    for (int i = 0; i < problem_size; i++)
    {
        InfStats[i] = true;
        Travelling[i] = false;
        HouseSusc[i] = 0.1;
        HouseInf[i] = 0.1;
        Rands[i] = 0.01;
        Start[i] = 1;
        End[i] = 100;
        Absent[i] = false;
        Infectors[i] = 10;
        Results[i] = 0;
    }
 
}

void run()
{
    	for (int j = 0; j < problem_size; j++)
        {
            float s3 = HouseInf[j];

            for (int i = Start[j]; i < End[j]; i++)
            {
                if (Absent[i])
                {
                    s3 *= 2.0;
                    break;
                }
            }


            for (int i = Start[j]; i < End[j]; i++)
            {
                if ((InfStats[j]) && (!Travelling[j])) 
                {
                    s3 *= HouseSusc[i];
                    if (s3 > Rands[j])
                    {
                        Results[j] = Infectors[j];
                    }    
                }
            }
        }
}