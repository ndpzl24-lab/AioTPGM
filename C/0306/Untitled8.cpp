#include <stdio.h>
void A()
{ printf("Hello\n"); }

void B(void (*ptr)(void))
{	ptr();
	printf("good\n");
}
main()
{	void(*ptr)(void)=A;
	B(A);
	printf("not bad");
}