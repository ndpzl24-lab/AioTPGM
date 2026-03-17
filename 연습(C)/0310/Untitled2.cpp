#include <stdio.h>


/*int main()
{
	int a=10, b=5;
	int sum = a+b;
	printf("%d\n", sum);
}*/

/*int main()
{
	int a = 5;
	int b= 10;
	
	int *p1 = &a;
	int *p2 = &b;
	
	int result = *p1 + *p2;
	
	printf("%d\n", result);
	return 0;
}*/

/*#include <stdio.h>

int sum(int a, int b){
	int res = a +b;
	return res;
}
int main()
{
	int res;
	int (*fp)(int, int);
	fp=sum; 
	res = fp(10, 20);
	printf("%d\n", res);
}*/

#include <stdio.h>

int *sum(int a, int b){
	int res = a + b;
	return &res;
}
int main()
{
	int *res;
	res = sum(10, 20);
	printf("%d\n", *res);
}