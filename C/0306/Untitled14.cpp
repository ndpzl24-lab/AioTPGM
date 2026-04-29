#include <stdio.h>
#include <stdlib.h>

int *preparation(int* class_1, int* melon_1, int* class_2,int* melon_2)
{
	int Total = (*class_1)*(*melon_1) + (*class_2)*(*melon_2);
	return &Total;
}

int main()
{
	int Class_1=10, Class_2=5;
	int Melon_1=5, Melon_2=10;
	int* ptr_total = preparation(&Class_1, &Melon_1, &Class_2, &Melon_2);
	printf("total melon = %d\n", *ptr_total);
	return 0;
}

