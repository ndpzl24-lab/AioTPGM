#include <stdio.h>

/*//함수 포인터를 이용한 state Machine
void state_idle();
void state_run();
typedef void (*StateFunc)();	//typedef 함수 포인터 데이터 타입 정리 
StateFunc current_state;       //current_state (포인터 변수) -> (*StateFunc)을 가리킴.
void state_idle()
{
	printf("IDLE\n");
	current_state = state_run;
}
void state_run()
{
	printf("RUN\n");

}
int main()
{
	current_state = state_idle;
	for(int i=0;i<3;i++)
	{
		current_state();
	}
}*/

//----------------------------------------------

void state_idle(void);
void state_run(void);
void (*current_state)(void);
void state_idle(void)
{
	printf("IDLE\n");
	current_state = state_run;
}
void state_run(void)
{
	printf("RUN\n");

}
int main(void)
{
	current_state = state_idle;
	for(int i=0;i<3;i++)
	{
		current_state();
	} return 0;
} 