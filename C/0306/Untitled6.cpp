#include <stdio.h>

int add(int a, int b)
{
	return a+b;
}
void excuter(int(*fp)(int, int))
{
	printf("%d\n", fp(10, 20));
}
int main()
{
	excuter(add);
}

