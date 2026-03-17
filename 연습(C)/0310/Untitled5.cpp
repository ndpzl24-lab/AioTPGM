#include <stdio.h>

int add(int a, int b)
{
	return a+b;
}
typedef int(*FP)(int,int);

FP getadd() // 를 풀어 쓰면 int(*getadd())(int,int);
{
	return add;
}
int main()
{	FP fp = add;
	printf("%d\n",getadd()(10,20));
	printf("%d\n",add(10,20));
	printf("%d\n",fp(10,20));
}