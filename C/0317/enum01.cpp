#include <stdio.h>
/*enum week
{ 
	SUN, MON, TUE, WED, THU, FRI, SAT
};// 0    1    2    3    4    5    6

int main() // enum -> 4byte int형
{
	enum week today;
	today = WED;
	printf("today value = %d\n", today);
	return 0;
}*/

//-------------------------------------------------------

/*enum level
{
	LOW = 1,
	MEDIUM = 5,
	HIGH = 10
};

int main()
{
	enum level l;
	l = HIGH;
	printf("level = %d\n", l);
	return 0;
}*/

//-------------------------------------------------------

/*enum menu
{
	MENU_START,
	MENU_STOP,
	MENU_RESET
};
int main()
{
	enum menu m;
	m = MENU_START;
	switch(m)
	{
		case MENU_START:
			printf("START 실행\n");
			break;
		case MENU_STOP:
			printf("STOP 실행\n");
			break;
		case MENU_RESET:
			printf("RESET 실행\n");
			break;
	}
	return 0;
}*/

//-------------------------------------------------------

/*typedef enum
{
	STUDYING, RESTING, SLEEPING
} STATE;
typedef struct
{
	char name[20];
	STATE state;
} student;
int main()
{
	student s1 = {"LEE", STUDYING};
	printf("이름 : %s\n", s1.name);
	if(s1.state == STUDYING)
		printf("상태 : 공부중\n");
	else if(s1.state == RESTING)
		printf("상태 : 휴식중\n");
	else if(s1.state == SLEEPING)
		printf("상태 : 수면중\n");
	return 0;
}*/

//-------------------------------------------------------

/*typedef enum
{	STOP, RUN, ERROR
} STATE;
int main()
{	STATE state = STOP;
	int command;
	while(1)
	{
		switch(state)
			{
				case STOP:
					printf("STOP 상태 \n");
					printf("1:RUN 2:ERROR\n");
					scanf("%d",&command);
					if(command == 1)
					state = RUN;
					else if (command == 2)
					state = ERROR;
					break;
				case RUN:
					printf("RUN 상태\n");
					printf("0:STOP 2:ERROR\n");
					scanf("%d",&command);
					if(command == 0)
					state = STOP;
					else if(command == 2)
					state = ERROR;
					break;
				case ERROR:
					printf("ERROR 상태\n");
					printf("0:STOP\n");
					scanf("%d",&command);
					if(command == 0)
					state = STOP;
					break;
			}
	}	return 0;
}*/

//-------------------------------------------------------

/*typedef enum
{
	STATE_IDLE, STATE_START, STATE_RUN, STATE_STOP
} State;
void machine()
{
	static State state = STATE_IDLE;
	switch(state)
	{
		case STATE_IDLE:
			printf("IDLE\n");
			state = STATE_START; break;
		case STATE_START:
			printf("START\n");
			state = STATE_RUN; break;
		case STATE_RUN:
			printf("RUN\n");
			state = STATE_STOP; break;	
		case STATE_STOP:
			printf("STOP\n"); break;
}}
int main()
{
	for(int i=0; i<5;i++)
	machine();
}*/

//-------------------------------------------------------

/*typedef enum
{
	IDLE, RUN
} State;
void machine(int start_signal)
{
	static State state = IDLE;
	switch(state)
	{
		case IDLE:
			if(start_signal)
			{
				printf("Start Machine\n");
				state = RUN;
			}	break;
		case RUN:
			printf("Running\n");	break;	
	}
}
int main()
{
	machine(0);
	machine(1);
	machine(0);
	}*/
	
//-------------------------------------------------------
	
typedef enum
{
	IDLE, RUN, STOP
}State;
State table[] = 
{ RUN, STOP, IDLE};
void machine()
{
	static State state = IDLE;
	printf("State = %d\n", state);
	state = table[state];
	printf("State = %d\n",state);
}

int main()
{
	for(int i=0;i<5;i++)
		machine();
}