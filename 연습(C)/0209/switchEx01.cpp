#include <stdio.h>

int main()
{
    int a;
    printf("값을 입력하세요 : ");
    scanf("%d", &a);

    if (a > 100 || a < 0)
    {
        printf("잘못된 점수입니다.\n");
    }
   switch (a / 10)
    {
    case 10:
    case 9:
        printf("A학점입니다.\n");
        break;
    case 8:
        printf("B학점입니다.\n");
        break;
    case 7:
        printf("C학점입니다.\n");
        break;
    case 6:
        printf("D학점입니다.\n");
        break;
    default:
        printf("F학점입니다.\n");
        break;
    }

return 0;
}