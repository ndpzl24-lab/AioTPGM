#include "system.h"
#include "control.h"
#include "motor.h"
#include "config.h"

void system_run(score s[])
{
    int i;

    for(i = 0; i < STUDENT_NUM; i++)
    {
        control_update(&s[i]);
        motor_print(&s[i]);
    }
}