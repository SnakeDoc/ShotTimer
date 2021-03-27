/**
 * Shot Timer
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */
 #ifndef __SHOTTIMER_H__
#define __SHOTTIMER_H__

#include "Arduino.h"
#include "libs/SPI.h"

//#include <avr/wdt.h> // watchdog timer

#include "utils/Debug.h"

#include "drivers/display/DisplayDriver.h"
#include "drivers/display/lcd20x4/LCD20x4.h"

#include "event/EventManager.h"
#include "detection/ShotDetectionManager.h"

#include "event/EventListener.h"
#include "detection/ShotDetectedListener.h"

#define ACT_LED_PIN A0 // Pin 0 of Port C (PC0), chip pin 23 (A0)

#define SHOT_DETECTION_SENSITIVITY 

// Enabling will display an alternate, debug display
//#define DEBUG_DISPLAY

	
class ShotTimer
{
	// variables
	public:
		static DisplayDriver* Display;
		static EventManager* Detection;
		static EventListener* DetectionListener;
	protected:
	private:
		
	// functions
	public:
		ShotTimer() {}
		~ShotTimer()
		{
			delete Display;
			delete Detection;
			delete DetectionListener;
		}
		static void run();
	protected:
	private:
		static void setup();
		static void loop();
};

#endif
