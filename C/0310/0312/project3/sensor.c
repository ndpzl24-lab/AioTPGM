#include <stdio.h>
#include "sensor.h"
#include "system.h"

void sensor_init()
{
	printf("Sensor Init\n");
}

void sensor_read()
{
	gSystem.sensor_value = 50;
}