#include <stdio.h>
#include "add.c"
#include "mul.o.cpp"

int main()
{
	int a = 10;
	int b = 5;
	
	int sum = Add(a,b);
	int mul = Multiply(a,b);
	
	printf("Add = %d\n",sum);
	printf("Multiply = %d\n", mul);
	
	return 0;
}