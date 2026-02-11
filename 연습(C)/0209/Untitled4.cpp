#include <stdio.h>
int main()
{
	char x, y;
	printf("두개의문자를입력하세요(예 A B):)");
	scanf("%c%c", &x, &y);
	printf("입력받은 값:x=%d, y=%d\n",x ,y);
	printf("입력받은 값:x=%c,y=%c\n",x, y);
	return 0;
}
