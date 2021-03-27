/**
 * Shot Timer
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */
 #ifndef __SHOTTIMER_H__
#define __SHOTTIMER_H__

#include "Arduino.h"

//#include <avr/wdt.h> // watchdog timer

#include "utils/Debug.hpp"
#include "drivers/audio/MAX4466/MAX4466.hpp"

#include "Wire.h"
#include "Adafruit_LiquidCrystal.h"

#define ACT_LED_PIN A0 // Pin 0 of Port C (PC0), chip pin 23 (A0)

namespace ShotTimer
{
	class ShotTimer
	{
		public:
			int atexit(void (*func)(void));
			int main();
			void setup();
			void loop();
			void shotDetected();
	};
}

#endif
