#include <vector>
#include <iostream>
#include <time.h>
#include <math.h>

using namespace std;



vector<float> Inf;
vector<float> P_Inf;
vector<float> Place;
vector<float> P_Place;
vector<float> Sus_Positive;
vector<float> P_Sus_Positive;
vector<float> Sus_Negative;
vector<float> P_Sus_Negative;
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
    Inf.resize(problem_size * 100);
    Place.resize(problem_size * 100);
    Sus_Positive.resize(problem_size * 100);
    Sus_Negative.resize(problem_size * 100);
    Results.resize(problem_size * 100);

    P_Inf.resize(10);
    P_Place.resize(10);
    P_Sus_Positive.resize(10);
    P_Sus_Negative.resize(10);

  


    for (int i = 0; i < 10; i++)
    {
        P_Inf[i] = random_float(0.1, 1);
        P_Place[i] = random_float(0.1, 1);
        P_Sus_Positive[i] = random_float(0.1, 1);
        P_Sus_Negative[i] = random_float(0.1, 1);
    }

    for (int i = 0; i < 100 * problem_size; i++)
    {
        Inf[i] = random_float(0.1, 1);
        Place[i] = random_float(0.1, 1);
        Sus_Positive[i] = random_float(0.1, 1);
        Sus_Negative[i] = random_float(0.1, 1);
    }


 
}

void run()
{
   for (int i = 0; i < problem_size; i++)
    {
        float Infectiousness =  1;

        for (int j = 0; j < 10; j++)
        {
            Infectiousness *= (1 + Inf[i * 10 + j] * P_Inf[j]);
        }

        float ContactFactor = 1;

        for (int j = 0; j < 10; j++)
        {
            for (int k = 0; k < 10; k++)
            {
                ContactFactor *= Place[(i * 10 + j) * 10 + k] * P_Place[k];
            }
        }

        if (ContactFactor > 1) {
            Infectiousness *= ContactFactor;
        }

        float FOI = Infectiousness;

        for (int j = 0; j < 10; j ++)
        {
            for (int k = 0; k < 10; k++)
            {
                FOI *= (1 + Sus_Positive[(i * 10 + j) * 10 + k] * P_Sus_Positive[k]);
                FOI *= (1 - Sus_Negative[(i * 10 + j) * 10 + k] * P_Sus_Negative[k]);
            }
            Results[j] = FOI;
        }
    }
}