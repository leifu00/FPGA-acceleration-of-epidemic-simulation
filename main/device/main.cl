#define NUMBER_OF_HOUSEHOLDS 1000000
#define AGE_GROUP_WIDTH 17
#define PlaceCloseHouseholdRelContact 2.0
#define MAX_HOUSEHOLD_SIZE 10


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
	local float WAIFW_Matrix_cache[AGE_GROUP_WIDTH * AGE_GROUP_WIDTH];
	local float AgeSusceptibility_cache[AGE_GROUP_WIDTH * AGE_GROUP_WIDTH];

	for (int i = 0; i < AGE_GROUP_WIDTH * AGE_GROUP_WIDTH; i++)
	{
		WAIFW_Matrix_cache[i] = WAIFW_Matrix[i];
		AgeSusceptibility_cache[i] = AgeSusceptibility[i];
	}

	#pragma unroll 5
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
			Absent_cache[current_person] = Absent[current_person];
			Age_cache[current_person] = Age[current_person];
			Susceptibility_cache[current_person] = Susceptibility[current_person];
		}

		#pragma unroll MAX_HOUSEHOLD_SIZE
		for (int j = 0; j < MAX_HOUSEHOLD_SIZE; j++)
		{
			FOI *=  (1 + Absent_cache[j]) * PlaceCloseHouseholdRelContact;
		}

		#pragma unroll MAX_HOUSEHOLD_SIZE
		for (int j = 0; j < MAX_HOUSEHOLD_SIZE; j++)
		{
			int host_age_group = Age_cache[j] / AGE_GROUP_WIDTH;
			float infectee_susceptibility = AgeSusceptibility_cache[host_age_group] * Susceptibility_cache[j];
			FOI *= WAIFW_Matrix_cache[host_age_group * AGE_GROUP_WIDTH + infector] * infectee_susceptibility;
			Results_cache[j] = FOI;
		}

		#pragma unroll MAX_HOUSEHOLD_SIZE
		for (int j = 0; j < MAX_HOUSEHOLD_SIZE; j++)
		{
			int current_person = j + first_person;
			Results[current_person] = Results_cache[j];
		}
	}    
}

