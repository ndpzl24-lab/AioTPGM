#include <stdio.h>
#include <string.h>

typedef struct sco
{
	char name[20];
	int kor, eng, mat;
	int total;
} score;

int main()
{
	score s[3];
	score *p;
	int i;

	char *name[3] = {"jang", "Lee", "park"};
	int kor[3] = {30, 40, 70};
	int eng[3] = {35, 60, 80};
	int mat[3] = {45, 45, 90};

	p = s;

	for(i=0;i<3;i++)
	{
		strcpy(s[i].name, name[i]);
		s[i].kor = kor[i];
		s[i].eng = eng[i];
		s[i].mat = mat[i];
	}

	for(i=0;i<3;i++)
	{
		s[i].total = s[i].kor + s[i].eng + s[i].mat;

		printf("%s %d\n", s[i].name, s[i].total);
		printf("%s %d\n", (p+i)->name, (p+i)->total);
		printf("%s %d\n\n", p[i].name, p[i].total);
	}

	return 0;
}

//s[i].name
//p[i].name
//(p+i)->name
//(*(p+i)).name              다 같은 의미이다.