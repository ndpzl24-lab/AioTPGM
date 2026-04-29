#include <stdio.h>

int add(int a, int b) { return a+b; }

int main()
{
	int (*p)(int, int) = add;
	p = add;
	printf("%d\n", p(10,20));
}