#include <stdio.h>

int main()
{
    int a;
    printf("값을 입력하세요 : ");
    scanf("%d", &a);

    if ((a>100) || (a<0))        // 100이상이거나 0미만일 때
    {
        printf("잘못된 점수입니다.\n");
    }
    else if ((a<=100) && (a>=90))
    {
        printf("A학점입니다.\n");
    }
    else if ((a>=80))
    {
        printf("B학점입니다.\n");
    }
    else if ((a>=70))
    {
        printf("C학점입니다.\n");
    }
    else if ((a>=60))
    {
        printf("D학점입니다.\n");
    }
    else
    {
        printf("F학점입니다.\n");
    }
}