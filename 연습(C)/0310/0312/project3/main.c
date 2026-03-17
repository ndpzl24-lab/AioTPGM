#include <stdio.h>
#include "control.h"
#include "motor.h"
#include "sensor.h"
#include "system.h"
#include "types.h"
#include "config.h"
int main()
{
	sensor_init();
	motor_init();
	u8 a=10;
	while(1)
	{
		control_updata();
		printf("Sensor : %d\n", gSystem.sensor_value);
		printf("Motor : %d\n", gSystem.motor_speed);
		printf("%d\n",a);
	}	return 0;
}