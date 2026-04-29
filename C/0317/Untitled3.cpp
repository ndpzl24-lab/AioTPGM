#include <stdio.h>

/*void func(void *p)
{
	int *ip = (int *)p;
	printf("%d\n",*ip);
}
int main()
{
	int a = 10;
	func(&a);
}*/

/*void func(void *p)
{
	char *ip = (char*)p;
	printf("%d\n",*ip);
	printf("%c\n",*ip);
}
int main()
{
	char a = 'A';
	func(&a);
}*/

void func(void *p){
	int *ip = (int *)p;
	char *cp = (char *)p;
	printf("int value = %d\n", *ip);
	printf("char values (byte view) = ");
	for(int i=0; i<sizeof(int);i++)
	{
		printf("%d ", *(cp+i));
	} printf("\n");
}
int main()
{
	int a= 10;
	func(&a);
	return 0;
}
