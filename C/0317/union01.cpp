#include <stdio.h>
/*union data
{
	int i;
	float f;
	char c;
};
int main()
{
	union data d;
	d.i = 10;
	printf("정수 값 : %d\n", d.i);
	printf("정수 값 : %d\n", &d.i);
	d.f = 3.14;
	printf("실수 값 : %f\n", d.f);
	printf("정수 값 : %d\n", &d.f);
	d.c = 'A';
	printf("문자 값 : %c\n", d.c);
	printf("정수 값 : %d\n", &d.c);
	return 0;
}*/

union test
{
	int num;
	char ch[4];
};
int main()
{
	union test t;
	t.num = 0x41424344;
	printf("정수 : %x\n", t.num);
	for(int i=0;i<4;i++)
		printf("char[%d] : %c\n", i, t.ch[i]);
		return 0;
}