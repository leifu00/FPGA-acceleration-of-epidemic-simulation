#define AGE_GROUP_WIDTH 17
#define MAX_HOUSEHOLD_SIZE 10
#define CHUNK_SIZE1 1000
#define CHUNK_SIZE2 10000
#define AgeSusceptibility_SIZE 100
#define WAIFW_Matrix_SIZE 100
#define UNROLL_SIZE 2

#define PlaceCloseHouseholdRelContact 2.0
#define TreatSuscDrop 0.1
#define VaccSuscDrop 0.2



kernel void infect_sweep(global const bool *restrict InfStats,
						global const bool *restrict Travelling,
                        global const float *restrict HouseInf,
						global const bool *restrict Absent,
						global const int *restrict Infectors,							
						global const float *restrict WAIFW_Matrix,
						global const float *restrict AgeSusceptibility,
						global const int* restrict Age,
						global const float *restrict Susceptibility,
						global const bool *restrict Treated,
						global const bool *restrict Vaccinated,
						global float *restrict Results,
						const int NUMBER_OF_HOUSEHOLDS)							
{
	local int Infectors_cache[CHUNK_SIZE1];
	local float HouseInf_cache[CHUNK_SIZE1];
	local int Age_cache1[CHUNK_SIZE1];
	local int InfStats_cache[CHUNK_SIZE1];
	local int Travelling_cache[CHUNK_SIZE1];

	local bool Absent_cache[CHUNK_SIZE2];
	local int Age_cache2[CHUNK_SIZE2];
	local float Susceptibility_cache[CHUNK_SIZE2];
	local bool Treated_cache[CHUNK_SIZE2];
	local bool Vaccinated_cache[CHUNK_SIZE2];
	local float Results_cache[CHUNK_SIZE2];


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

	int offset1 = 0, offset2 = 0;

	for (int c = 0; c < NUMBER_OF_HOUSEHOLDS / CHUNK_SIZE1; c++)
	{
		#pragma unroll 20
		for (int i = 0; i < CHUNK_SIZE1; i++)
		{
			int current_person = i + offset1;
			HouseInf_cache[i] = HouseInf[current_person];
			Infectors_cache[i] = Infectors[current_person];
			Age_cache1[i] = Age[current_person];
			Travelling_cache[i] = Travelling[current_person];
			Infectors_cache[i] = Infectors[current_person];
		}

		#pragma unroll 20
		for (int i = 0; i < CHUNK_SIZE2; i++)
		{
			int current_person = i + offset2;
			Absent_cache[i] = Absent[current_person];
			Age_cache2[i] = Age[current_person];
			Susceptibility_cache[i] = Susceptibility[current_person];
			Treated_cache[i] = Treated[current_person];
			Vaccinated_cache[i] = Vaccinated[current_person];
		}

		for (int i = 0; i < CHUNK_SIZE1; i++)
		{
			float FOI = HouseInf_cache[i];
			int infector = Infectors_cache[i];
			bool travelling = Travelling_cache[i];
			bool infStats = InfStats[i];

			int number_of_absent = 0;
			int first_absent = 0;

			#pragma unroll MAX_HOUSEHOLD_SIZE
			for (int j = i * MAX_HOUSEHOLD_SIZE; j < (i + 1) * MAX_HOUSEHOLD_SIZE && j < CHUNK_SIZE2; j++)
			{
				FOI *= (1 + PlaceCloseHouseholdRelContact * Absent_cache[j]);
			}
				
			#pragma unroll MAX_HOUSEHOLD_SIZE
			for (int j = i * MAX_HOUSEHOLD_SIZE; j < (i + 1) * MAX_HOUSEHOLD_SIZE; j++)
			{
				int host_age_group = Age_cache2[j] / AGE_GROUP_WIDTH;
				int infector_age_group = Age_cache1[i] / AGE_GROUP_WIDTH;
				float infectee_susceptibility = AgeSusceptibility_cache[host_age_group] * Susceptibility_cache[j];
				FOI *= WAIFW_Matrix_cache[host_age_group * AGE_GROUP_WIDTH + infector_age_group] * infectee_susceptibility;
				FOI *= (1.0 - Treated_cache[j] * TreatSuscDrop) * (1.0 - Vaccinated_cache[j] * VaccSuscDrop);
				Results_cache[j] = FOI * (!travelling) * infStats;
			}
		}    

		#pragma unroll 20
		for (int i = 0; i < CHUNK_SIZE2; i++)
		{
			int current_person = i + offset2;
			Results[current_person] = Results_cache[i];
			// printf("%d, %.3f ", current_person, Results_cache[i]);
		}

		offset1 += CHUNK_SIZE1;
		offset2 += CHUNK_SIZE2;
	}
}

	
