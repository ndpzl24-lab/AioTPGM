#include <stdio.h>

main()
{
	int a=5, b=10, c=15, d, e, f;
	int* p[3]; 
	p[0]=&a;
	p[1]=&b;
	p[2]=&c;
	d = *p[0];
	e = *p[1];
	f = *p[2];
	
	printf("%d\n", a);
	printf("%d\n", b);
	printf("%d\n", c);
	printf("%d\n", d);
	printf("%d\n", e);
	printf("%d\n", f);
	printf("%p\n", a);
	
	printf("%p\n", p[0]);
	printf("%p\n", p[1]);
	printf("%p\n", p[2]);
	printf("%p\n", &a);
	printf("%p\n", &b);
	printf("%p\n", &c);
	printf("%d\n", p[0]);
}