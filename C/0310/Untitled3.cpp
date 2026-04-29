#include <stdio.h>

/*int main()
{
	int a=5,b=10, res;
	res=a+b;
	printf("%d\n",res);
}*/

/*int sum(int x, int y) //뒤의 sum(a,b) 와 스택이 다름. 같은 놈이 아니다.
{
	int z;
	z = x + y;
	return z;
}
int main()
{
	int a=5,b=10,res;
	res = sum(a,b);
	printf("%d\n",res);
}*/

/*int sum(int* x, int* y) // 주소를 저장한 것이다. 포인터변수
{
	int z;
	z = *x + *y; // 그 주소(a),(b)가 가리키는 값.
	return z;
}
int main()
{
	int a=5, b=10,res;
	res = sum(&a, &b);
	printf("%d\n",res);
}*/


int sum(int x, int y)
{
	int z;
	z = x + y;
	return z;
}
int main()
{
	int a=5, b=10,res;
	int(*fp)(int,int);
	fp=sum; //sum 함수에 대한 주소값.
	res = fp(a,b); // fp=sum이라고 선언했기 때문에 fp 적어도 됨.
	printf("%d\n", res);
}
