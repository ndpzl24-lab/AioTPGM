#include <stdio.h>
#include "system.h"

void motor_control()
{
	gSystem.motor_speed = gSystem.sensor_value * 2;
	printf("gSysem motor_speed = %d\n", gSystem.motor_speed);
}