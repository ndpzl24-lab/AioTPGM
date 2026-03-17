#include <stdio.h>
#include "data.h"

int counter = 0;

void increase()
{
	counter++;
	printf("counter = %d\n", counter);
}