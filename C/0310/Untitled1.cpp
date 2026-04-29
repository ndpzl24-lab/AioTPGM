#include <stdio.h>

int preparation(int Class_1, int Melon_1, int Class_2, int Melon_2)
{
	int Total = Class_1*Melon_1 + Class_2*Melon_2;
	return Total;	
}
int main()
{
	int result;
	int(*ptr_function)(int,int,int,int);
	ptr_function=preparation;
	result = (*ptr_function)(5,10,10,5);
	//result = ptr_function(5,10,10,5);
	printf("total melons = %d\n",result);
	return 0;
}