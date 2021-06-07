kernel void sweep(global const float *restrict Inf, global const float *restrict P_Inf,
                global const float *restrict Contact, global const float *restrict P_Contact,
                global const float *restrict Sus_Positive, global const float *restrict P_Sus_Positive,
                global const float *restrict Sus_Negative, global const float *restrict P_Sus_Negative,
                global float *restrict Result,
                const int N)
{
    #pragma unroll 5
    for (int i = 0; i < N; i++)
    {
        float Infectiousness =  1;

        #pragma unroll 10
        for (int j = 0; j < 10; j++)
        {
            Infectiousness *= (1 + Inf[i * 10 + j] * P_Inf[j]);
        }

        float ContactFactor = 1;

        #pragma unroll 10
        for (int j = 0; j < 10; j++)
        {
            #pragma unroll 10
            for (int k = 0; k < 10; k++)
            {
                ContactFactor *= Contact[(i * 10 + j) * 10 + k] * P_Contact[k];
            }
        }

        if (ContactFactor > 1) {
            Infectiousness *= ContactFactor;
        }

        float FOI = Infectiousness;

        #pragma unroll 10
        for (int j = 0; j < 10; j ++)
        {
            #pragma unroll 10
            for (int k = 0; k < 10; k++)
            {
                FOI *= (1 + Sus_Positive[(i * 10 + j) * 10 + k] * P_Sus_Positive[k]);
                FOI *= (1 - Sus_Negative[(i * 10 + j) * 10 + k] * P_Sus_Negative[k]);
            }
            Result[j] = FOI;
        }
    }
}
