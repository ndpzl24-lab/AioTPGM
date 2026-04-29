#include <stdio.h>

int add(int a, int b)
{	return a+b;	}
int sub(int a, int b)
{ 	return a-b;	}
/*
typedef int (*FP)(int,int);
FP select(int mode)
{	if(mode==0)
		return add;
	else
		return sub;}
int main()
{	FP f;
	f= select(0);
	printf("%d\n",f(10,5));
	f = select(1);
	printf("%d\n",f(10,5));
}*/


/*
int (*select(int mode))(int,int)
{
    if(mode==0)
        return add;
    else
        return sub;
}
int main()
{
    int (*f)(int,int);
    f = select(0);
    printf("%d\n", f(10,5));
    f = select(1);
    printf("%d\n", f(10,5));
}*/


int main()
{
    int (*f)(int,int);
    f = add;
    printf("%d\n", f(10,5));
    f = sub;
    printf("%d\n", f(10,5));
    return 0;
}