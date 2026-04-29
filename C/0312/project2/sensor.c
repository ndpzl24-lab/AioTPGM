#include <stdio.h>
#include "system.h"

void read_sensor()
{
	gSystem.sensor_value = 100;
	printf("gSysem sensor_value = %d\n", gSystem.sensor_value);
}