#include <stdio.h>

void fun(int *p)
{
    for(int i = 0; i < 5; i++)
    {
        printf("%d\n", p[i]);
    }
}

int main()
{
    int a[5] = {10,23,40,50,60};

    fun(a);
}