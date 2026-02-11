#include <stdio.h>
main()
{	int aa[3][4];	int i,k;	int val=1;
	for(i=0;i<3;i++)
	{	for(k=0;k<4;k++)
		{	aa[i][k]=val;	val++;		}	}
	for(i=0;i<3;i++)
	{	for(k=0;k<4;k++)
		{printf("%2d\t",aa[i][k]);		}
			printf("\n");	}
	
	printf("%u\n",aa);    //처음 주소
	printf("%u\n",aa[0]); //처음 주소
	printf("%u\n",aa[0]+2);  //처음 주소에서 8byte 뒤
	printf("%u\n",aa[1]); //2행 처음주소
	printf("%u\n",aa[0][0]);
	printf("%u\n",&aa[0][0]);
	printf("%u\n",aa[2][3]);  //12
	printf("%u\n",&aa[2][3]);
	printf("%u\n",aa[0][0]+1);  //2
	printf("%u\n",&aa[0][0]+1);  //4byte 뒤에
	}
