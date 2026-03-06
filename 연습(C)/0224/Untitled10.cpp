#include <stdio.h>
/*
main()
{
	char str1[3][10]={"hello","world","jang"};
	char *p_str1[3];
	for(int i=0;i<3;i++)
	{
		p_str1[i]=str1[i];
	}
	for(int i=0; i<3; i++)
	{
		printf("%s\n", p_str1[i]); //p_str1[i]는 주소
	}
}				//포인트배열*/
/*
int main()
{
    char *p_str1[3];   
    
    p_str1[0] = "happy";
    p_str1[1] = "world";
    p_str1[2] = "jang";
    
    for(int i=0; i<3; i++)
    {
        printf("%s\n", p_str1[i]);
    }
    
    return 0;
}
*/
int main()
{
    char str1[3][10] = {"happy", "world", "jang"};

    char (*p)[10];   

    p = str1;        

    for(int i = 0; i < 3; i++)
    {
        printf("%s\n", p[i]);
    }

    return 0;
}