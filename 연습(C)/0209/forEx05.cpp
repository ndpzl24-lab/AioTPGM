#include <stdio.h>

int main(void)
{
    int i, j, k, n;
    printf("몇 층을 쌓겠습니까? ");
    scanf("%d", &n);

    for (i = 0; i < n; i++)
    {
        // 공백
        for (j = 0; j < n - i - 1; j++)
        {
            printf(" ");
        }

        // 별
        for (k = 0; k < 2 * i + 1; k++)
        {
            printf("*");
        }

        printf("\n");
    }

    return 0;
}
