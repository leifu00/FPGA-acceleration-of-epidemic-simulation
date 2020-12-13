#define LEN 100000

kernel void infect_sweep(global const bool *restrict InfStats,
						global const bool *restrict Travelling,
                        global const float *restrict HouseInf,
                        global const float *restrict HouseSusc,
                        global const float *restrict Rands,
						global const int *restrict Start,							
						global const int *restrict End,
						global const bool *restrict Absent,
						global const int *restrict Infectors,							
						global int *restrict Result_Infectors)							
{
	local float HouseInf_cache[LEN];
	for( unsigned k = 0; k < LEN; k++ )
	{
		HouseInf_cache[k] = HouseInf[k];
	}
	#pragma unroll 5
	for (int j = 0; j < LEN; j++)
	{
		float s3 = HouseInf_cache[j];

		for (int i = Start[j]; i < End[j]; i++)
		{
			if (Absent[i])
			{
				s3 *= 2.0;
				break;
			}
		}


		for (int i = Start[j]; i < End[j]; i++)
		{
			if ((InfStats[j]) && (!Travelling[j])) 
			{
				s3 *= HouseSusc[i];
				if (s3 > Rands[j])
				{
					Result_Infectors[j] = Infectors[j];
				}    
			}
		}
	}

    
}

