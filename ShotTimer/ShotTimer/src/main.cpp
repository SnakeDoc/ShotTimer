/************************************************************************/
/* We're hooked into the Arduino main(), just pass calls into ShotTImer */
/************************************************************************/

#include <Arduino.h>

#include "ShotTimer.h"

void setup()
{
	ShotTimer::setup();
}

void loop()
{
	ShotTimer::loop();
}
