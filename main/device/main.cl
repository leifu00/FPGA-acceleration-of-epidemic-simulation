#define NUMBER_OF_HOUSEHOLDS 1000000
#define AGE_GROUP_WIDTH 17
#define PlaceCloseHouseholdRelContact 2.0
#define MAX_HOUSEHOLD_SIZE 15
#define CHUNK_SIZE 10000
#define AgeSusceptibility_SIZE 100
#define WAIFW_Matrix_SIZE 100
#define UNROLL_SIZE 2


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

	local float HouseInf_cache[CHUNK_SIZE];
	local int Start_cache[CHUNK_SIZE];
	local int End_cache[CHUNK_SIZE];
	local int Infectors_cache[CHUNK_SIZE];

	local float AgeSusceptibility_cache[AgeSusceptibility_SIZE];
	local float WAIFW_Matrix_cache[WAIFW_Matrix_SIZE];

	#pragma unroll 10
	for (int i = 0; i < AgeSusceptibility_SIZE; i++)
	{
		AgeSusceptibility_cache[i] = AgeSusceptibility[i];
	}

	#pragma unroll 10
	for (int i = 0; i < WAIFW_Matrix_SIZE; i++)
	{
		WAIFW_Matrix_cache[i] = WAIFW_Matrix[i];
	}

	int offset = 0;

	#pragma unroll 3
	for (int c = 0; c < NUMBER_OF_HOUSEHOLDS / CHUNK_SIZE; c++)
	{
		#pragma unroll 10
		for (int i = 0; i < CHUNK_SIZE; i++)
		{
			int current_index = i + offset;
			HouseInf_cache[i] = HouseInf[current_index];
			Start_cache[i] = Start[current_index];
			End_cache[i] = End[current_index];
			Infectors_cache[i] = Infectors[current_index];
		}

		offset += CHUNK_SIZE;

		for (int i = 0; i < CHUNK_SIZE; i++)
		{
			float FOI = HouseInf_cache[i];
			int first_person = Start_cache[i];
			int last_person = End_cache[i];
			int infector = Infectors_cache[i];



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
				int infector_age_group = Age[infector] / AGE_GROUP_WIDTH;
				float infectee_susceptibility = AgeSusceptibility_cache[host_age_group] * Susceptibility_cache[j];
				FOI *= WAIFW_Matrix_cache[host_age_group * AGE_GROUP_WIDTH + infector_age_group] * infectee_susceptibility;
				Results_cache[j] = FOI * 100000000;
			}

			#pragma unroll MAX_HOUSEHOLD_SIZE
			for (int j = 0; j < MAX_HOUSEHOLD_SIZE; j++)
			{
				int current_person = j + first_person;
				Results[current_person] = Results_cache[j];
			}
		}    
	}
}

	
