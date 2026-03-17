#include <stdio.h>
#include "system.h"

int main()
{
	read_sensor();
	motor_control();
	printf("System State\n");
	printf("Sensor = %d\n", gSystem.sensor_value);
	printf("Motor = %d\n", gSystem.motor_speed);
	
	return 0;
}