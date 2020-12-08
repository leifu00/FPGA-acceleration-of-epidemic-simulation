#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "rand.h"


float rand_mt()
{
    return float(rand()) / float(RAND_MAX);
}