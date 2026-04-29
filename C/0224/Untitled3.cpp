#include <stdio.h>

main()
{
	int a[5]={10,23,40,50,60};
	int *p;
	p = a;
/*
	//주소
	printf("%d\n", a);
	printf("%d\n", a+1);
	printf("%d\n", &a[0]);
	printf("%d\n", p);
	//값
	printf("%d\n", a[0]);
	printf("%d\n", *(a+1));
	printf("%d\n", *(a)+2);	
	printf("%d\n", p[0]);
	printf("%p\n", p);

	

	 for(int i = 0; i < 5; i++)
    {
        printf("%d\n", *(p + i));
    }

    return 0;

	

	for(int i = 0; i < 5; i++)
{
    printf("%d\n", p[i]);
}
*/

for(int i = 0; i < 5; i++)
{
    printf("%d\n", *p);
    p++;
}

}

