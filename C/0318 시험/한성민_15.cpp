// 15번 한성민

#include <stdio.h>
#include <cstring>

typedef struct score   // 구조체 사용
{
	char name[20];
	int kor, eng, mat;
	int total;
	float avg; // avg 추가
} score;

int main()
{
	score s[3];  // 배열 사용하여 학생 정보 저장
	score temp;
	score *p = s;  // 포인터 선언
	
	int i, j;
	
	char *names[3] = {"KIM ","LEE ","PARK"};
	int kor[3] = {85,90,60};
	int eng[3] = {70,80,50};
	int mat[3] = {60,70,40};
	
	for(i=0;i<3;i++)
	{	
		strcpy((p+i)->name, names[i]);
        (p+i)->kor = kor[i];
        (p+i)->eng = eng[i];
        (p+i)->mat = mat[i];
        (p+i)->total = (p+i)->kor + (p+i)->eng + (p+i)->mat;
        (p+i)->avg = (int)((float)(p+i)->total / 3 * 10) / 10.0; //내림처리
    }
	for(i=0;i<2;i++)
	{
		for(j=i+1;j<3;j++)
		{
			if(s[i].total < s[j].total)
			{
				temp=s[i]; 
				s[i] = s[j]; 
				s[j] = temp ;
			}
		}
	}
printf(" 이 름 |  국어   영어   수학  |  총점  |   평균   |   결과 \n");
printf("-------+----------------------+--------+----------+----------\n");
for(i=0;i<3;i++)
{
	printf(" %s  |  %3d    %3d    %3d   |  %3d   |   %.1f   |  %s\n",         // 평균 소수 점 첫번째 짜리 내림 처리
		s[i].name,
		s[i].kor, s[i].eng, s[i].mat,
		s[i].total,
		s[i].avg,   // 평균값
		(s[i].avg >= 60) ? " 합격" : "불합격");   // 평균 60 이상 "합격", 60 이하 "불합격"
}
	return 0;
} 
