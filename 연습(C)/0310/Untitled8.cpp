#include <stdio.h>

void  machine()
{	static int state = 0;
	switch(state)
	{	case 0:
			printf("INIT\n");
			state = 1;
			break;
		case 1:
			printf("RUN\n");
			state = 2;
			break;
		case 2:
			printf("STOP\n");
			break;
	}
}
int main()
{	for(int i=0;i<5;i++)
		machine();	return 0;
}