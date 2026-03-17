#include <stdio.h>
typedef struct tagsungjuk
{	int kor;
	int eng;
	int math;	} a;
main()
{
	tagsungjuk sj;
	sj.kor = 100;
	sj.eng = 95;
	sj.math = 99;
	printf("총합 = %d\n", sj.kor+sj.eng+sj.math);
}

