#include <stdio.h>
#include "data.h"

int main()
{
	printf("start counter = %d\n", counter);
	
	increase();
	increase();
	increase();
	
	printf("final counter = %d\n", counter);
	
	return 0;
}