//Hierarchical State Machine (대형 시스템) 계층구조
//SYSTEM
//  - IDLE
//  -


#include <stdio.h>
typedef enum
{
	SYSTEM_IDLE, SYSTEM_RUN
} SystemState;
typedef enum
{
	RUN_MOTOR, RUN_SENSOR
} RunState;
void machine()
{
	static SystemState sys = SYSTEM_IDLE;
	static RunState run = RUN_MOTOR;
	switch(sys)
	{
		case SYSTEM_IDLE:
			printf("System Idle\n");
			sys = SYSTEM_RUN;	break;
		case SYSTEM_RUN:
			switch(run)
			{
				case RUN_MOTOR:
					printf("Motor Run\n");
					run = RUN_SENSOR;	break;
				case RUN_SENSOR:
					printf("Sensor Check\n");	break;
	}break;
}}
int main()
{
	for(int i=0;i<4;i++)
		machine();
}

//----------------------------------------------------

/*#include <iostream>
using namespace std;

// 🔹 상태 베이스 클래스
class State {
protected:
    State* parent;

public:
    State(State* p = nullptr) : parent(p) {}

    virtual void handle() {
        if (parent) parent->handle();  // 부모로 위임
    }

    virtual ~State() {}
};

// 🔹 상위 상태 (공통 처리)
class Running : public State {
public:
    Running(State* p = nullptr) : State(p) {}

    void handle() override {
        cout << "RUNNING 공통 처리" << endl;
    }
};

// 🔹 하위 상태
class Idle : public State {
public:
    Idle(State* p) : State(p) {}

    void handle() override {
        cout << "IDLE 상태" << endl;
        State::handle();  // 부모 호출
    }
};

class Processing : public State {
public:
    Processing(State* p) : State(p) {}

    void handle() override {
        cout << "PROCESSING 상태" << endl;
        State::handle();  // 부모 호출
    }
};

int main() {
    Running running;           // 상위 상태
    Idle idle(&running);      // 하위 상태
    Processing proc(&running);

    State* current_state = &idle;

    for (int i = 0; i < 3; i++) {
        current_state->handle();

        // 상태 전이
        if (i == 0)
            current_state = &proc;
    }

    return 0;
}*/