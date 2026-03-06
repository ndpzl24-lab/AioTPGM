#include <stdio.h>

int main()
{
	int a=5, b;
	int *p;
	p = &a;
	b = *p;
	printf("%p\n", &a);
	printf("%p\n", &b);
	printf("%d\n", a);
	printf("%d\n", b);
	printf("%p\n", p);
	printf("%d\n", b);
}
