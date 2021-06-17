define NUMBER_OF_HOUSEHOLDS 1000000
#define AGE_GROUP_WIDTH 17
#define PlaceCloseHouseholdRelContact 2.0
#define MAX_HOUSEHOLD_SIZE 10


kernel void infect_sweep(global const bool *restrict InfStats,
	@@ -11,45 +12,35 @@ kernel void infect_sweep(global const bool *restrict InfStats,
						global const int *restrict End,
						global const bool *restrict Absent,
						global const int *restrict Infectors,							
						global int *restrict Results,
						global const float *restrict WAIFW_Matrix,
						global const float *restrict AgeSusceptibility,
						global const int* restrict Age,
						global float *restrict Susceptibility)							
{
	for (int i = 0; i < NUMBER_OF_HOUSEHOLDS; i++)
	{
		float FOI = HouseInf[i];
		int first_person = Start[i];
		int last_person = End[i];

		#pragma unroll MAX_HOUSEHOLD_SIZE
		for (int j = 0; j < MAX_HOUSEHOLD_SIZE; j++)
		{
			int current_person = j + first_person;
			FOI *=  ((current_person < last_person) * Absent[current_person]) ? PlaceCloseHouseholdRelContact : 1;
		}

		#pragma unroll MAX_HOUSEHOLD_SIZE
		for (int j = 0; j < MAX_HOUSEHOLD_SIZE; j++)
		{
			int current_person = j + first_person;
			int host_age_group = Age[current_person] / AGE_GROUP_WIDTH;
			int infector = Infectors[i];
			float infectee_susceptibility = AgeSusceptibility[host_age_group] * Susceptibility[current_person];
			FOI *= WAIFW_Matrix[host_age_group * AGE_GROUP_WIDTH + infector] * infectee_susceptibility;
			Results[current_person] = infector * (FOI > Rands[i]) * (InfStats[i]) * (!Travelling[i]);
		}
	}    
}