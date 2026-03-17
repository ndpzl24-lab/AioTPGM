/*#include <stdio.h>
#include <stdlib.h>

int *preparation(int* class_1, int* melon_1,int* class_2,int* melon_2)
{
	int Total = (*class_1)*(*melon_1) + (*class_2)*(*melon_2);
	return &Total;
}
void show_something()
{	printf("I have nothing to show!!\n");	}
int main()
{
	int class_1=10, class_2=5;
	int melon_1=5, melon_2=10;	
	int* ptr_total = preparation(&class_1, &melon_1, &class_2, &melon_2);
	show_something();
	printf("total melon = %d\n", *ptr_total);
	return 0;
}*/

/*#include <stdio.h>
#include <stdlib.h>

int *preparation(int* class_1, int* melon_1,int* class_2,int* melon_2)
{
	int* Total = (int*)malloc(sizeof(int));
	*Total = (*class_1)*(*melon_1) + (*class_2)*(*melon_2);
	return Total;
}
void show_something()
{	printf("I have nothing to show!!\n");	}
int main()
{
	int class_1=10, class_2=5;
	int melon_1=5, melon_2=10;	
	int* ptr_total = preparation(&class_1, &melon_1, &class_2, &melon_2);
	show_something();
	printf("total melon = %d\n", *ptr_total);
	free(ptr_total);
	return 0;
}*/
