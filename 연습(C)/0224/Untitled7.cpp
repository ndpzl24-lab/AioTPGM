#include <stdio.h>

int main()
{
	int a[2][3] = {7,11,4,8,9,10};
	int(*p)[3] = a;
	
	//주소 a
	printf("%d\n", a);
	printf("%d\n", a[0]+1);
	printf("%d\n", a[0]+2);
	printf("%d\n", a[1]);
	printf("%d\n", a[1]+1);
	printf("%d\n", a[1]+2);
	
	printf("%d\n", &a[0][0]);
	printf("%d\n", &a[0][1]);
	printf("%d\n", &a[0][2]);
	printf("%d\n", &a[1][0]);
	printf("%d\n", &a[1][1]);
	printf("%d\n", &a[1][2]);
	
	printf("%d\n", *(a));
	printf("%d\n", *(a)+1);
	printf("%d\n", *(a)+2);
	printf("%d\n", *(a+1));
	printf("%d\n", *(a+1)+1);
	printf("%d\n", *(a+1)+2);
	
	//주소 p
	printf("%p\n", p);
	printf("%p\n", p[0]+1);
	printf("%p\n", p[0]+2);
	printf("%p\n", p[1]);
	printf("%p\n", p[1]+1);
	printf("%p\n", p[1]+2);
	
	printf("%p\n", &p[0][0]);
	printf("%p\n", &p[0][1]);
	printf("%p\n", &p[0][2]);
	printf("%p\n", &p[1][0]);
	printf("%p\n", &p[1][1]);
	printf("%p\n", &p[1][2]);
	
	//값 a
	printf("%d\n", a[0][0]);
	printf("%d\n", a[0][1]);
	printf("%d\n", a[0][2]);
	printf("%d\n", a[1][0]);
	printf("%d\n", a[1][1]);
	printf("%d\n", a[1][2]);
	
	printf("%d\n", *(*(a)));
    printf("%d\n", *(*(a)+1));
	printf("%d\n", *(*(a)+2));
	printf("%d\n", *(*(a+1)));
	printf("%d\n", *(*(a+1)+1));
	printf("%d\n", *(*(a+1)+2));

	printf("%d\n", *(a[0]));
	printf("%d\n", *(a[0]+1));
	printf("%d\n", *(a[0]+2));
	printf("%d\n", *(a[1]));
	printf("%d\n", *(a[1]+1));
	printf("%d\n", *(a[1]+2));
	}
