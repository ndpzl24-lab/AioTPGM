#include <stdio.h>

int main(void)
{
    int i, j,k;
    for (i = 0; i < 5; i++)  // i 증가
    {
        for (j = i; j < 5 - 1; j++)  // 0 출력
        {
            printf(" ");
        }

        for (k = 0; k <= i; k++)      // * 출력
        {
            printf("*");
        }

        printf("\n");  // 단 끝
    }

    return 0;
}
