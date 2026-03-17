//statit 변수와 extern 변수는 모두 변수의 수명(lifetime)과 접급
//범위와 관련됨
//static 변수는 프로그램이 시작될 때 생성되고 프로그램이 끝날때까지 유지
//함수 내부 static 변수
//-함수가 종료되어도 같이 사라지지 않고 유지
//-초기화는 한 번만 수행
//-함수 내부에서만 접근 가능

#include <stdio.h>
void counter()
{
	static int count = 0;
	count++;
	printf("count = %d\n", count);
}
int main()
{
	counter();
	counter();
	counter();
	
	return 0;
}