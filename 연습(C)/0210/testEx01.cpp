#include <stdio.h>
main
{
	int i;	int sum =0;
	int grade[3] ={85, 67, 90};
	for(i=0; i<3; i++)
	{
		sum += grade[i];
	}
	printf("총점은 %d점입니다.\n", sum);

        return 0;
}