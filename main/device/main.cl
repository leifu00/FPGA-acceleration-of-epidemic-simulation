#include "../host/src/rand.h"

#define AGE_GROUP_WIDTH 17

#define HOST_TREATED(x, ts) ((Hosts[x].treat_stop_time > ts) && (Hosts[x].treat_start_time <= ts))
#define HOST_VACCED(x, ts) (Hosts[x].vacc_start_time+P->usVaccTimeToEfficacy<=ts)
#define HOST_VACCED_SWITCH(x) (Hosts[x].vacc_start_time >= P->usVaccTimeEfficacySwitch)
#define HOST_ISOLATED(x, ts) ((Hosts[x].isolation_start_time + P->usCaseIsolationDelay <= ts) && (Hosts[x].isolation_start_time + P->usCaseIsolationDelay + P->usCaseIsolationDuration > ts))
#define HOST_QUARANTINED(x, ts) ((HostsQuarantine[x].comply == 1) && (HostsQuarantine[x].start_time + P->usHQuarantineHouseDuration > ts) && (HostsQuarantine[x].start_time <= ts))
#define PLACE_CLOSED(x, y, n) ((Places[x * n + y].close_start_time <= ts) && (Places[x * n + y].close_end_time > ts))
#define HOST_ABSENT(x, ts) ((Hosts[x].absent_start_time <= ts) && (Hosts[x].absent_stop_time > ts))
#define HOST_AGE_GROUP(x) (Hosts[x].age / AGE_GROUP_WIDTH)
#define INFECT_TYPE_MASK 16

struct Param
{
    unsigned short int usVaccTimeToEfficacy;
    double infectiousness[10000], HouseholdDenomLookup[10000];
    double TreatInfDrop, VaccInfDrop;
    unsigned short int usCaseIsolationDelay, usCaseIsolationDuration;
    unsigned short int usHQuarantineHouseDuration, usVaccTimeEfficacySwitch;
    double CaseIsolationHouseEffectiveness;
    double HQuarantineHouseEffect;
    double DCTCaseIsolationHouseEffectiveness;
    double TreatSuscDrop;
    int PlaceTypeNum;
    double PlaceCloseHouseholdRelContact;
    double VaccSuscDrop2, VaccSuscDrop;
    double EnhancedSocDistHouseholdEffectCurrent;
    double SocDistHouseholdEffectCurrent;
    double WAIFW_Matrix[17][17];
    double AgeSusceptibility[17];
    double FalsePositiveRate;
};


struct Cell
{
	int I;
	int infected[1000]; //// pointers to people in cell. e.g. *susceptible identifies where the final susceptible member of cel is.
};

enum InfStat {

//// Note - DO NOT CHANGE these definitions without accounting for "Quarantined not Infected" /
//// "Quarantined not symptomatic" calculation: relies on value below being negative for symptomatic people.

	//// Susceptible
	InfStat_Susceptible = 0,
	//// Neither infectious nor symptomatic (E or L).
	InfStat_Latent = 1,
	//// Infectious and about to become a case.
	InfStat_InfectiousAlmostSymptomatic = -1,
	//// Not just asymptomatic, but also will not become symptomatic (i.e. a case)
	InfStat_InfectiousAsymptomaticNotCase = 2,
	//// Case. Infectious and symptomatic.
	InfStat_Case = -2,
	//// Recovered from asymptomatic infection
	InfStat_RecoveredFromAsymp = 3,
	//// Recovered from symptomatic infection
	InfStat_RecoveredFromSymp = -3,
	//// InfStat_Recovered (will use this for abs() values) so code reads correctly
	InfStat_Recovered = 3,
	//// Immune at start of epidemic - used to model partially immune population. Distinct from recovered, who recovered during runtime. Doesn't take negative values.
	InfStat_ImmuneAtStart = 4,
	//// Dead was asymptomatic
	InfStat_Dead_WasAsymp = 5,
	//// Dead was symptomatic
	InfStat_Dead_WasSymp = -5,
	//// Dead (will use this for abs() values) so code reads correctly
	InfStat_Dead = 5
};

//// SeverityClass definitions / labels (numbers arbitrary but must be different to each other).
enum struct Severity {
	//// Flag value.
	Asymptomatic,
	Mild,
	ILI,
	SARI,
	Critical,
	//// Recovering from Critical (not recovered yet).
	RecoveringFromCritical,
	//// label to avoid double counting. Not sure you need.
	Dead,
	//// label to avoid double counting. Not sure you need.
	Recovered
};


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
	enum InfStat inf;

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

struct PersonQuarantine
{
	unsigned short int  comply;		// can be 0, 1, 2
	int start_time;	// timestep quarantine is started
};


struct Place
{
	unsigned short int close_start_time, close_end_time, treat_end_time;
};


struct Microcell
{
	unsigned short socdist;
};

struct Infection
{
	int infector;
	int infectee;
	short int infect_type;
};

struct PopVar
{
	int inf_queue_infector[10000]; 
    int inf_queue_infectee[10000];
    short int inf_queue_infect_type[10000];
};



__kernel void infect_sweep( __global const struct Param *restrict P,
                            __global const struct Cell *restrict CellLookup,
                            __global struct Person *restrict Hosts,
                            __global const struct Household *restrict Households,
                            __global const struct PersonQuarantine *restrict HostsQuarantine,
                            __global const struct Place *restrict Places,                            
                            __global const struct Microcell *restrict Mcells,
                            __global const double *restrict Rands,                            
                            __global struct PopVar *restrict StateT)
{
    #pragma unroll 5
    for (int index = 0; index < 1000; index++) 
    {
        // Testing data
        int ts = 10;
        double s5 = 0;
        double hbeta = 0.2;

        struct Cell c = CellLookup[index]; // select Cell given by index b

    
        for (int j = 0; j < c.I; j++) 
        {
            int ci = c.infected[j];
            struct Person si = Hosts[ci];

            int l = Households[si.hh].FirstPerson;
            int m = l + Households[si.hh].nh;


            double personInf = (HOST_TREATED(ci, ts) ? P->TreatInfDrop : 1.0)
            *	(HOST_VACCED(ci, ts) ? P->VaccInfDrop : 1.0)
            *	fabs(Hosts[ci].infectiousness)
            *	P->infectiousness[0 - Hosts[ci].latent_time - 1];

            double houseInf = ((HOST_ISOLATED(ci, ts) && (Hosts[j].digitalContactTraced != 1)) ? P->CaseIsolationHouseEffectiveness : 1.0)
            *	((Hosts[j].digitalContactTraced==1) ? P->DCTCaseIsolationHouseEffectiveness : 1.0)
            *	((HOST_QUARANTINED(ci, ts) && (Hosts[j].digitalContactTraced != 1) && (!(HOST_ISOLATED(ci, ts))))? P->HQuarantineHouseEffect : 1.0)
            *	P->HouseholdDenomLookup[Households[Hosts[j].hh].nhr - 1] * personInf;

            double s3 = hbeta * houseInf;

            int f = 0;

            for (int i3 = l; (i3 < m) && (!f); i3++)
            {
                for (int i2 = 0; (i2 < P->PlaceTypeNum) && (!f); i2++)
                {
                    if (Hosts[i3].PlaceLinks[i2] >= 0)
                    {
                        f = PLACE_CLOSED(i2, Hosts[i3].PlaceLinks[i2], 5);
                    }
                }
            }


            if (f) { s3 *= P->PlaceCloseHouseholdRelContact; }/* NumPCD++;}*/ //// if people in your household are absent from places, person si/ci is more infectious to them, as they spend more time at home.

            for (int i3 = l; i3 < m; i3++) //// loop over all people in household (note goes from l to m - 1)
            {
         
                    double personSusc = P->WAIFW_Matrix[HOST_AGE_GROUP(i3)][HOST_AGE_GROUP(ci)]
                            * P->AgeSusceptibility[HOST_AGE_GROUP(i3)] * Hosts[i3].susc
                            *	(HOST_TREATED(i3, 10) ? P->TreatSuscDrop : 1.0)
                            *	(HOST_VACCED(i3, 10) ? (HOST_VACCED_SWITCH(i3) ? P->VaccSuscDrop2 : P->VaccSuscDrop) : 1.0);
                    
                    double houseSusc = personSusc
                            * ((Mcells[Hosts[i3].mcell].socdist == 2) 
                                ? ((Hosts[i3].esocdist_comply) 
                                ? P->EnhancedSocDistHouseholdEffectCurrent 
                                : P->SocDistHouseholdEffectCurrent) : 1.0)
                            * (Hosts[i3].digitalContactTraced == 1 ? P->DCTCaseIsolationHouseEffectiveness : 1.0);
                    
                    double s = s3 * houseSusc;


      

                    short int infect_type = 1 + INFECT_TYPE_MASK * (1 + si.infect_type / INFECT_TYPE_MASK);
                    StateT[index].inf_queue_infector[j] = ci;
                    StateT[index].inf_queue_infectee[j] = i3;
                    StateT[index].inf_queue_infect_type[j] = infect_type;
          
            }
        }            


    }
    


    
}

