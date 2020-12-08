#ifndef MODELS_H
#define MODELS_H


struct Cell
{
	int I;
	int infected[1000];
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


#endif // COVIDSIM_MODEL_H_INCLUDED_
