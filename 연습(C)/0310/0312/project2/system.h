#ifndef SYSTEM_H
#define SYSTEM_H

void read_sensor();
void motor_control();

typedef struct
{
	int sensor_value;
	int motor_speed;
	int system_state;
}SystemState;

extern SystemState gSystem;

#endif