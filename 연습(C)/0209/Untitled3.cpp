/*#include <stdio.h>

int main(void)
{
	char c = 'A';
	printf("%c\n",c);
	char str[256];
	scanf("%s", str);
	printf("%s\n", str);
	return 0;
}*/

#include <stdio.h>

int main(void)
{
	char str[256];
	fgets(str,sizeof(str),stdin);    //\n도 같이 저장 
	printf("%s",str);
	return 0;
}
