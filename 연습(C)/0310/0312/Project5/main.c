#include <stdio.h>
typedef struct score
{	
	int kor,eng,mat;
	int total;
} score;

/*int main()
{
	score s[3] = {{30,35,45},{40,60,45},{70,80,90,}};
	score* p;
	
	p = s;
	
	s[0].total =s[0].kor+s[0].eng+s[0].mat;
	printf("%d\n",s[0].total);
	
	(p+0)->total = (p+0)->kor+(p+0)->eng+(p+0)->mat;
	printf("%d\n",(p+0)->total);
	
	p[0].total = p[0].kor+p[0].eng+p[0].mat;
	printf("%d\n",p[0].total);
	
	return 0;
	}*/


/*#include <stdio.h>

typedef struct score
{	
	int kor,eng,mat;
	int total;
} score;

int main()
{
	score s[3] = {{30,35,45},{40,60,45},{70,80,90}};
	score *p;

	p = s;
	
	p->total = p->kor + p->eng + p->mat;
	printf("%d\n", p->total);

	(p+0)->total = (p+0)->kor + (p+0)->eng + (p+0)->mat;
	printf("%d\n", (p+0)->total);

	p[0].total = p[0].kor + p[0].eng + p[0].mat;
	printf("%d\n", p[0].total);

	return 0;
}*/


/*int main()
{
	score s[3] = {{30,35,45},{40,60,45},{70,80,90}};
	score (*p)[3];

	p = &s;

	(*p)[0].total = (*p)[0].kor + (*p)[0].eng + (*p)[0].mat;
	printf("%d\n", (*p)[0].total);

	(*p)[0].total = (*p)[0].kor + (*p)[0].eng + (*p)[0].mat;
	printf("%d\n", (*p)[0].total);

	(*p)[0].total = (*p)[0].kor + (*p)[0].eng + (*p)[0].mat;
	printf("%d\n", (*p)[0].total);

	return 0;
}*/

int main()
{	score s[3];	score* p;	int i;	p = s;
		for(i=0;i<3;i++)
		{	printf("%d번 째 학생 점수 입력 (국어 영어 수학) : ", i+1);
			scanf("%d %d %d", &s[i].kor, &s[i].eng, &s[i].mat);		}
			printf("\n--- 결과 출력 ---\n");
		for(i=0;i<3;i++)
		{	s[i].total=s[i].kor+s[i].eng+s[i].mat;
			printf("s[%d] total = %d\n",i,s[i].total);
			(p+i)->total = (p+i)->kor+(p+i)->eng+(p+i)->mat;
			printf("(p+i)->total = %d\n", (p+i)->total);
			p[i].total = p[i].kor +p[i].eng+ p[i].mat;
			printf("p[%d].total = %d\n\n",i,p[i].total);
			(*(p+i)).total = (*(p+i)).kor+(*(p+i)).eng+(*(p+i)).mat;
			printf("(*(p+i)).total = %d\n", (*(p+i)).total);
			(*(p+i)).total = (*(p+i)).kor+(*(p+i)).eng+(*(p+i)).mat;
			printf("(*(p+i)).total = %d\n\n", (*(p+i)).total);
		}
}