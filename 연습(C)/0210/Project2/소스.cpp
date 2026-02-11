#include <stdio.h>

// 함수 선언
int sum(int x, int y);

int main(void)
{
    int n1 = 10;
    int n2 = 20;
    int result;

    result = sum(n1, n2);
    printf("%d\n", result);

    return 0;
}

// 함수 정의
int sum(int x, int y)
{
    return x + y;
}
