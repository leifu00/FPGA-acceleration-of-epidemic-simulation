#define CHUNK_SIZE 100

#define P 10
#define H 10

kernel void sweep(global const float *restrict Inf, global const float *restrict P_Inf,
                global const float *restrict Contact, global const float *restrict P_Contact,
                global const float *restrict Sus_Positive, global const float *restrict P_Sus_Positive,
                global const float *restrict Sus_Negative, global const float *restrict P_Sus_Negative,
                global float *restrict Result,
                const int N)
{

    local float Inf_cache[CHUNK_SIZE * P];
    local float Contact_cache[CHUNK_SIZE * H * P];
    local float Sus_Positive_cache[CHUNK_SIZE * H * P];
    local float Sus_Negative_cache[CHUNK_SIZE * H * P];

    local float P_Inf_cache[P];
    local float P_Contact_cache[P];
    local float P_Sus_Positive_cache[P];
    local float P_Sus_Negative_cache[P];


    local float Result_cache[CHUNK_SIZE * H];

    for (int i = 0; i < P; i++)
    {
        P_Inf_cache[i] = P_Inf[i];
        P_Contact_cache[i] = P_Contact[i];
        P_Sus_Positive_cache[i] = P_Sus_Positive[i];
        P_Sus_Negative_cache[i] = P_Sus_Negative[i];
    }

	int offset = 0;

    #pragma unroll 5
    for (int i = 0; i < N / CHUNK_SIZE; i++)
    {

        for (int i = 0; i < CHUNK_SIZE * P; i++)
		{
			int current_person = i + offset * P;
			Inf_cache[i] = Inf[current_person];
		}
        for (int i = 0; i < CHUNK_SIZE * P * H; i++)
		{
			int current_person = i + offset * P * H;
			Contact_cache[i] = Contact[current_person];
            Sus_Positive_cache[i] = Sus_Positive[current_person];
            Sus_Negative_cache[i] = Sus_Negative[current_person];
		}

        for (int c = 0; c < CHUNK_SIZE; c++)
        {
            float Infectiousness =  1;

            #pragma unroll P
            for (int j = 0; j < P; j++)
            {
                Infectiousness *= (1 + Inf_cache[c * P + j]) * P_Inf_cache[j];
            }

            float ContactFactor = 1;

            #pragma unroll H
            for (int j = 0; j < H; j++)
            {
                #pragma unroll P
                for (int k = 0; k < P; k++)
                {
                    ContactFactor *= Contact_cache[(c * H + j) * P + k] * P_Contact_cache[k];
                }
            }

            if (ContactFactor > 1) {
                Infectiousness *= ContactFactor;
            }


            #pragma unroll H
            for (int j = 0; j < H; j ++)
            {
                float FOI = Infectiousness;

                #pragma unroll P
                for (int k = 0; k < P; k++)
                {
                    FOI *= (1 + Sus_Positive_cache[(c * H + j) * P + k] * P_Sus_Positive_cache[k]);
                    FOI *= (1 - Sus_Negative_cache[(c * H + j) * P + k] * P_Sus_Negative_cache[k]);
                }
                Result_cache[j] = FOI;
            }
        }
        #pragma unroll H
		for (int i = 0; i < CHUNK_SIZE * H; i++)
		{
			int current_person = i + offset * H;
			Result[current_person] = Result_cache[i];
		}

        offset += CHUNK_SIZE;
    }
}
