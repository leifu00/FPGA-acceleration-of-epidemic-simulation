#include <vector>
#include <iostream>
#include <time.h>
#include <math.h>

using namespace std;

struct Person
{
	int pcell;			// place cell, Cells[person->pcell] holds this person
	int mcell;			// microcell, Mcells[person->mcell] holds this person
	int hh;				// Household[person->hh] holds this person
	int infector;		// If >=0, Hosts[person->infector] was who infected this person
	unsigned short int treat_start_time, treat_stop_time, vacc_start_time;  //// set in TreatSweep function.
	unsigned short int latent_time, isolation_start_time;
	unsigned int digitalContactTraced;
	unsigned short int absent_start_time, absent_stop_time;
	short infect_type;
	int PlaceLinks[4];

	float infectiousness;

	/* Changed type of these*/
	unsigned int Travelling;
	unsigned int age;
	float susc;
	unsigned int esocdist_comply;

};

struct Household
{
	int FirstPerson;
	unsigned short int nh; // number people in household
	unsigned short int nhr;
};


struct PopVar
{
	int inf_queue_infector[1000000]; 
    int inf_queue_infectee[100000];
    short int inf_queue_infect_type[100000];
};



vector<struct Person> Hosts;
vector<struct Household> Households;

vector<struct Person> Results;

struct PopVar P;

void init()
{
    for (int i = 0; i < 1000000; i++)
    {
        P.inf_queue_infector[i] = i;
        struct Household h;
        h.FirstPerson = i * 10;
        h.nh = 10;
        Households.push_back(h);
        for (int j = 0; j < 10; j++)
        {
            struct Person p;
            Hosts.push_back(p);
        }
    }
}

void process()
{
    Results.resize(10000000);
    int p = 0;
    for (int i = 0; i < 1000000; i++)
    {
        for (int j = Households[P.inf_queue_infector[i]].FirstPerson; j < Households[P.inf_queue_infector[i]].FirstPerson + Households[P.inf_queue_infector[i]].nh; j++)
        {
            Results[p++] = Hosts[j];
        }
    }
}


int main()
{
    init();
    clock_t tStart = clock();
    process();

    printf("Time taken: %.3fs\n", (double)(clock() - tStart)/CLOCKS_PER_SEC);

    return 0;
   
}