#include <stdio.h>
#include "motor.h"
#include "system.h"

void motor_init()
{
	printf("Motor Init\n");
}

void motor_control()
{
	gSystem.motor_speed = gSystem.sensor_value * 2;
}