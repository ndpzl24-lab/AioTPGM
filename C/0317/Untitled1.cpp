#include <stdio.h>

typedef struct score
{	char name[20];
	int kor, eng, mat;	int total;} score;
	
int main()
{
	score s[3] = {
	{"jang", 30, 35, 45, 0},
	{"lee", 40, 60, 45, 0},
	{"park", 70, 80, 90, 0}};
	score *p;
	int i;
	p = s;
	printf("name kor eng mat total\n");
	for(i=0;i<3;i++)
	{
		p[i].total = p[i].kor + p[i].eng + p[i].mat;
		//(p+i)->total = (p+i)->kor + (p+i)->eng +(p+i)->mat;
			printf("%s %3d %3d %3d %3d\n",p[i].name,p[i].kor,p[i].eng,p[i].mat,p[i].total);
	}
	return 0;
}