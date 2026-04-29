#include <stdio.h>
#include <cstring>

typedef struct score
{
	char name[20];
	int kor, eng, mat;
	int total;
} score;

int main()
{
	score s[3];
	score temp;
	int i, j;
	char *names[3] = {"jang","Lee ","park"};
	int kor[3] = {30,40,70};
	int eng[3] = {35,60,80};
	int mat[3] = {45,45,90};
	for(i=0;i<3;i++)
	{	
		strcpy(s[i].name, names[i]);
		s[i].kor = kor[i];
		s[i].eng = eng[i];
		s[i].mat = mat[i];
		s[i].total = s[i].kor + s[i].eng + s[i].mat;
	}
	for(i=0;i<2;i++)
	{
		for(j=i+1;j<3;j++)
		{
			if(s[i].total < s[j].total)
			{
				temp=s[i]; s[i] = s[j]; s[j] = temp ;
			}
		}
	}
	printf("Rank    Name     Kor   Eng   Mat   Total\n");
	for(i=0;i<3;i++)
	{
		printf(" %d      %s    %3d   %3d   %3d   %3d\n",i+1, s[i].name,
				s[i].kor, s[i].eng, s[i].mat, s[i].total);
	}
	return 0;
}



/*#include <stdio.h>
#include <cstring>

typedef struct score
{
    char name[20];
    int kor, eng, mat;
    int total;
} score;

void swap(score *a, score *b)
{
    score temp;
    temp = *a;
    *a = *b;
    *b = temp;
}

int main()
{
    score s[3];
    int i, j;

    const char *names[3] = {"jang","Lee ","park"};
    int kor[3] = {30,40,70};
    int eng[3] = {35,60,80};
    int mat[3] = {45,45,90};

    for(i=0;i<3;i++)
    {   
        strcpy(s[i].name, names[i]);
        s[i].kor = kor[i];
        s[i].eng = eng[i];
        s[i].mat = mat[i];
        s[i].total = s[i].kor + s[i].eng + s[i].mat;
    }

    for(i=0;i<2;i++)
    {
        for(j=i+1;j<3;j++)
        {
            if(s[i].total < s[j].total)
            {
                swap(&s[i], &s[j]);
            }
        }
    }

    printf("Rank    Name     Kor   Eng   Mat   Total\n");

    for(i=0;i<3;i++)
    {
        printf(" %d      %s    %3d   %3d   %3d   %3d\n",
               i+1, s[i].name, s[i].kor, s[i].eng, s[i].mat, s[i].total);
    }

    return 0;
}*/