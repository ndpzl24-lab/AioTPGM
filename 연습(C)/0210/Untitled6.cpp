#include <stdio.h>

void no_array(void)
{
    int subway_1 = 30;
    int subway_2 = 40;
    int subway_3 = 50;

    printf("지하철 1호차에 %d명이 타고 있습니다.\n", subway_1);
    printf("지하철 2호차에 %d명이 타고 있습니다.\n", subway_2);
    printf("지하철 3호차에 %d명이 타고 있습니다.\n", subway_3);
}

void use_array(void)
{
    int subway[3] = {30, 40, 50};

    for (int i = 0; i < 3; i++)
    {
        printf("지하철 %d호차에 %d명이 타고 있습니다.\n",
               i + 1, subway[i]);
    }
}

int main(void)
{
    no_array();
    printf("\n");
    use_array();
    return 0;
}


/*#include <stdio.h>

int main(void)
{
    int subway[3], i;

    subway[0] = 30;
    subway[1] = 40;
    subway[2] = 50;

    for (i = 0; i < 3; i++)
    {
        printf("지하철 %d호차에 %d명이 타고 있습니다.\n",
               i + 1, subway[i]);
    }

    return 0;
}
*/