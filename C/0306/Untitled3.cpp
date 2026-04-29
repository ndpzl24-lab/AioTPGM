/*#include <stdio.h>

int add(int a, int b){return a+b; }
int mul(int a, int b){return a*b; }
int sub(int a, int b){ return a-b; }
int div(int a, int b){return a/b;}
int main()
{ 	int funcnumber; int num1, num2; int(*fp)(int, int);
	printf("함수번호와 계산 할 값을 입력하세요:");
	scanf("%d%d%d", &funcnumber, &num1, &num2);
	switch(funcnumber)
	{	case 0: fp = add;	break;
		case 1: fp = mul;	break;
		case 2: fp = sub;	break;
		case 3: fp = div;	break; }
	printf("%d\n",fp(num1,num2));
		
}
*/

#include <stdio.h>

int add(int a, int b){ return a+b; }
int mul(int a, int b){ return a*b; }
int sub(int a, int b){ return a-b; }
int div(int a, int b){ return a/b; }

int main()
{
    int num1, num2;
    int funcnumber;

    int (*fp[4])(int,int) = {add, mul, sub, div};   // 함수포인터 배열

    for(int i = 0; i < 5; i++)
    {
        printf("함수번호(0:add 1:mul 2:sub 3:div)와 값 입력: ");
        scanf("%d %d %d", &funcnumber, &num1, &num2);

        if(funcnumber < 0 || funcnumber > 3)
        {
            printf("잘못된 번호\n");
            continue;
        }

        printf("결과: %d\n", fp[funcnumber](num1,num2));
    }

    return 0;
}