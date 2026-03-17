#include <stdio.h>

int Add(int a, int b)
{	return a+b;	}
int Multiply(int a, int b)
{	return a*b;	}

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