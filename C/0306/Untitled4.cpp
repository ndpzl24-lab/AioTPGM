#include <stdio.h>
int add(int a, int b)
{ return a+b; }
int mul(int a, int b)
{ return a*b; }
int sub(int a, int b)
{ return a-b; }
int div(int a, int b)
{ return a/b; }
int main()
{	int funcnumber; int num1, num2; int(*fp[4])(int, int);
	fp[0] = add;	fp[1] = mul;	fp[2] = sub;	fp[3] = div;
	printf("함수번호와 계산 할 값을 입력하세요 : ");
	scanf("%d%d%d", &funcnumber, &num1, &num2);
	printf("%d\n",fp[funcnumber](num1,num2));
}