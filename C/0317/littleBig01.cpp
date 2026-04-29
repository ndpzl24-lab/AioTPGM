#include <stdio.h>
//little endian 방식
/*int main()
{
	int a = 0x12345678;
	char *p;              // 주소 64bit -> 8byte
	p = (char *)&a;             // 주소 &a(int) () 형 변환 시켜줌. int -> char 형으로
	printf("Memory values : ");
	for(int i = 0; i < sizeof(int);i++)
	{
		printf("%02x\n", *(p+i));
		printf("%02x\n", p+i);
	}
	printf("\n");
	if(*p == 0x78)
		printf("Little Endian System\n");
	else
		printf("Big Endian System\n");
		
	return 0;
}*/

void print_big_endian(void *p)
{
	char *cp = (char *)p;
	printf("Big Endian view : ");
	for(int i = sizeof(int)-1; i>=0;i--)
	{
		printf("%02x", *(cp+i));
	}
	printf("\n");	}
	int main()
	{
		int a = 10;
		printf("Original value : %d\n", a);
		print_big_endian(&a);
		return 0;
	}