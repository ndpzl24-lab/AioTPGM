#include <stdio.h>
#include <time.h>
#include <stdlib.h>

int getRandomNumber(int level);
void showQuestion(int level, int num1, int num2);
void success(void);
void fail(void);

int main(void)
{
    srand(time(NULL));
    int count = 0;
    int i;

    for (i = 1; i <= 5; i++)
    {
        int num1 = getRandomNumber(i);
        int num2 = getRandomNumber(i);

        showQuestion(i, num1, num2);

        int answer = -1;
        scanf("%d", &answer);

        if (answer == -1)
        {
            printf("\n프로그램을 종료합니다.\n");
            exit(0);
        }
        else if (answer == num1 * num2)
        {
            success();
            count++;
        }
        else
        {
            fail();
        }
    }

    printf("\n\n문제  %d개를 맞혔습니다.\n", count);
    return 0;
}

int getRandomNumber(int level)
{
    return rand() % (level * 9) + 1;
}

void showQuestion(int level, int num1, int num2)
{
    printf("\n\n\n## %d번째 문제  ##\n", level);
    printf("\n\t%d x %d \n\n", num1, num2);
    printf("#################\n");
}

void success(void)
{
    printf("\n >> Good! 정 답 입 니 다.\n");
}

void fail(void)
{
    printf("\n >> 땡!\n");
}

