#include <stdio.h>
#include <string.h>

int main(void)
{
	int input;
	printf("값을입력하세요 : ");
	scanf("%d",&input);
	printf("입력값:%d\n",input);
	int one, two, three;
	printf("정수3개를입력하세요 :");
	scanf("%d%d%d",&one, &two, &three);
	printf("첫번째값: %d\n",one);
	printf("두�번째값: %d\n",two);
	printf("세�번째값: %d\n",three);
	char name[20];	
	scanf("%s",name);
	printf("%d\n",sizeof(name));
	printf("입력길이= %d\n",strlen(name));
	return 0;
 } 
 
