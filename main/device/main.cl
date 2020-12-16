#define NUMBER_OF_HOUSEHOLDS 10
#define AGE_GROUP_WIDTH 17
#define PlaceCloseHouseholdRelContact 2.0
#define MAX_HOUSEHOLD_SIZE 15


kernel void infect_sweep(global const bool *restrict InfStats,
						global const bool *restrict Travelling,
                        global const float *restrict HouseInf,
                        global const float *restrict Rands,
						global const int *restrict Start,							
						global const int *restrict End,
						global const bool *restrict Absent,
						global const int *restrict Infectors,							
						global float *restrict Results,
						global const float *restrict WAIFW_Matrix,
						global const float *restrict AgeSusceptibility,
						global const int* restrict Age,
						global const float *restrict Susceptibility)							
{
	local bool Absent_cache[MAX_HOUSEHOLD_SIZE];
	local int Age_cache[MAX_HOUSEHOLD_SIZE];
	local float Susceptibility_cache[MAX_HOUSEHOLD_SIZE];
	local int Results_cache[MAX_HOUSEHOLD_SIZE];


	for (int i = 0; i < NUMBER_OF_HOUSEHOLDS; i++)
	{
		float FOI = HouseInf[i];
		int first_person = Start[i];
		int last_person = End[i];
		int infector = Infectors[i];


		#pragma unroll MAX_HOUSEHOLD_SIZE
		for (int j = 0; j < MAX_HOUSEHOLD_SIZE; j++)
		{
			int current_person = j + first_person;
			Absent_cache[j] = Absent[current_person];
			Age_cache[j] = Age[current_person];
			Susceptibility_cache[j] = Susceptibility[current_person];
		}

		int number_of_absent = 0;
		int first_absent = 0;


		#pragma unroll MAX_HOUSEHOLD_SIZE
		for (int j = 0; j < MAX_HOUSEHOLD_SIZE; j++)
		{
			number_of_absent += Absent_cache[j];
			first_absent = Absent_cache[j] * (j + first_person);
		}
			
		if (number_of_absent && first_absent < last_person) FOI *= PlaceCloseHouseholdRelContact;

		#pragma unroll MAX_HOUSEHOLD_SIZE
		for (int j = 0; j < MAX_HOUSEHOLD_SIZE; j++)
		{
			int host_age_group = Age_cache[j] / AGE_GROUP_WIDTH;
			float infectee_susceptibility = AgeSusceptibility[host_age_group] * Susceptibility_cache[j];
			FOI *= WAIFW_Matrix[host_age_group * AGE_GROUP_WIDTH + infector] * infectee_susceptibility;
			Results_cache[j] = FOI * 1000;
		}

		#pragma unroll MAX_HOUSEHOLD_SIZE
		for (int j = 0; j < MAX_HOUSEHOLD_SIZE; j++)
		{
			int current_person = j + first_person;
			Results[current_person] = Results_cache[j];
		}
	}    
}
