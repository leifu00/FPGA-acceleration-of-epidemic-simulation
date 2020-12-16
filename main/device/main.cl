#define LEN 1000000
#define AGE_GROUP_WIDTH 17
#define PlaceCloseHouseholdRelContact 2.0


kernel void infect_sweep(global const bool *restrict InfStats,
						global const bool *restrict Travelling,
                        global const float *restrict HouseInf,
                        global const float *restrict Rands,
						global const int *restrict Start,							
						global const int *restrict End,
						global const bool *restrict Absent,
						global const int *restrict Infectors,							
						global int *restrict Result_Infectors,
						global float *restrict WAIFW_Matrix,
						global float *restrict AgeSusceptibility,
						global int *restrict Age,
						global float *restrict Susceptibility)							
{
	local int Age_cache[20];
	for (int j = 0; j < LEN; j++)
	{
		float s3 = HouseInf[j];

		int flag = 0;
		int first = 10000000;

		#pragma unroll 20
		for (int i = 0; i < 20; i++)
		{
			int current = i + Start[j];
			flag += Absent[current];
			first = current;
		}

		if (flag && first < End[j])
		{
			s3 *= PlaceCloseHouseholdRelContact;
		}

		#pragma unroll 20
		for (int i = 0; i < 20; i++)
		{
			Age_cache[i] = Age[Start[j] + i];
		}

		#pragma unroll 20
		for (int i = 0; i < 20; i++)
		{
			int current = i + Start[i];
			int host_age_group = Age_cache[i] / AGE_GROUP_WIDTH;
			int infector = Infectors[j];
			s3 *= WAIFW_Matrix[host_age_group * AGE_GROUP_WIDTH + infector] * AgeSusceptibility[host_age_group] * Susceptibility[j];
			Result_Infectors[j] = infector * (s3 > Rands[j] ? 1 : 0) * (InfStats[j]) * (!Travelling[j]);
		}

	}

    
}