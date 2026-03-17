#include "control.h"

void control_update(score *p)
{
    p->total = p->kor + p->eng + p->mat;
}