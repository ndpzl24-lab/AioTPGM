#include <stdio.h>
#include <string.h>

int main()
{
    char name[3][10];
    int kor[3];
    int eng[3];
    float ave[3];
    int i;

    strcpy(name[0],"kim");
    kor[0]=90; 
    eng[0]=80;
    ave[0]=(kor[0]+eng[0])/2.0;

    strcpy(name[1],"lee");
    kor[1]=70; 
    eng[1]=60;
    ave[1]=(kor[1]+eng[1])/2.0;

    strcpy(name[2],"park");
    kor[2]=70; 
    eng[2]=60;
    ave[2]=(kor[2]+eng[2])/2.0;

    for(i=0;i<3;i++)
    {
        printf("학생이름: %s\n",name[i]);
        printf("국어점수: %d\n",kor[i]);
        printf("영어점수: %d\n",eng[i]);
        printf("평균점수: %4.1f\n",ave[i]);
        printf("\n");
    }

    return 0;
}