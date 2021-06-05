kernel void sweep(const int N,
                global const float *restrict Inf, global const float *restrict P_Inf,
                global const float *restrict Contact, global const float *restrict P_Contact,
                global const float *restrict Sus_Positive, global const float *restrict P_Sus_Positive,
                global const float *restrict Sus_Negative, global const float *restrict P_Sus_Negative,
                global float *restrict Result)
{
    #pragma unroll 4
    for (int i = 0; i < N; i++)
    {
        float Infectiousness =  1;

        #pragma unroll 5
        for (int j = 0; j < 5; j++)
        {
            Infectiousness *= (1 + Inf[i * 5 + j] * P_Inf[j]);
        }

        float ContactFactor = 1;

        #pragma unroll 10
        for (int j = 0; j < 10; j++)
        {
            #pragma unroll 5
            for (int k = 0; k < 5; k++)
            {
                ContactFactor *= Contact[(i * 10 + j) * 5 + k] * P_Contact[k];
            }
        }

        if (ContactFactor > 1) {
            Infectiousness *= ContactFactor;
        }
        
        float FOI = Infectiousness;

        #pragma unroll 10
        for (int j = 0; j < 10; j ++)
        {
            #pragma unroll 5
            for (int k = 0; k < 5; k++)
            {
                FOI *= (1 + Sus_Positive[(i * 10 + j) * 5 + k] * P_Sus_Positive[k]);
                FOI *= (1 - Sus_Negative[(i * 10 + j) * 5 + k] * P_Sus_Negative[k]);
            }
            Result[j] = FOI;
        }
    }
}
