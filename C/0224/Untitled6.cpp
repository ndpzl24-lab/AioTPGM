#include <stdio.h>

int main()
{
	int a[5]={1,2,3,4,5};
	int* p = a;
	
	//주소 a
	printf("%d\n",a);
	printf("%d\n",a+1);
	printf("%d\n",a+2);
	printf("%d\n",a+3);
	printf("%d\n",a+4);
	
	printf("%d\n",&a[0]);
	printf("%d\n",&a[1]);
	printf("%d\n",&a[2]);
	printf("%d\n",&a[3]);
	printf("%d\n",&a[4]);
	
	//주소 p 16진수 대문자
	printf("%p\n",p);
	printf("%p\n",p+1);
	printf("%p\n",p+2);
	printf("%p\n",p+3);
	printf("%p\n",p+4);
	
	printf("%p\n",&p[0]);
	printf("%p\n",&p[1]);
	printf("%p\n",&p[2]);
	printf("%p\n",&p[3]);
	printf("%p\n",&p[4]);
	
	//값a
	printf("%d\n",a[0]);
	printf("%d\n",a[1]);
	printf("%d\n",a[2]);
	printf("%d\n",a[3]);
	printf("%d\n",a[4]);
	
	printf("%d\n",*(a));
	printf("%d\n",*(a+1));
	printf("%d\n",*(a+2));
	printf("%d\n",*(a+3));
	printf("%d\n",*(a+4));
	
	//값 p
	printf("%p\n",p[0]);
	printf("%p\n",p[1]);
	printf("%p\n",p[2]);
	printf("%p\n",p[3]);
	printf("%p\n",p[4]);
	
	printf("%p\n",*(p));
	printf("%p\n",*(p+1));
	printf("%p\n",*(p+2));
	printf("%p\n",*(p+3));
	printf("%p\n",*(p+4));

}