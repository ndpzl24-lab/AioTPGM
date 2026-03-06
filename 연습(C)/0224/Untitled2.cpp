#include <stdio.h>

main()
{
	int a[5]={1,2,3,4,5};
	//주소
	printf("%d\n", a);
	printf("%d\n", a+1);
	printf("%d\n", &a[0]);
	//값
	printf("%d\n", a[0]);
	printf("%d\n", *(a+1));
	printf("%d\n", *(a)+2);	
}


