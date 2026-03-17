#include <stdio.h>
#include "control.h"
#include "system.h"
#include "motor.h"
#include "sensor.h"

void control_updata()
{
	sensor_read();
	motor_control();
}
