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

#include "utils/Debug.h"

#include "drivers/audio/AudioDriver.h"
#include "drivers/audio/MAX4466/MAX4466.h"
#include "drivers/audio/MAX4466/SensitivityLevel.h"

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
		const AudioDriver* Audio;
		const DisplayDriver* Display;
		const EventManager* Detection;
		double max = 0;
		double min = INT8_MAX;
		bool shot_detected = false;
		int cycle = 0;
	protected:
	private:
		
	// functions
	public:
		ShotTimer() :
			Audio(new const MAX4466(50, SensitivityLevel::_HIGH)),
			Display(new const LCD20x4()),
			Detection(new const ShotDetectionManager(64)) {}
		~ShotTimer()
		{
			delete Audio;
			delete Display;
			delete Detection;
		}
		int main();
		void setup();
		void loop();
	protected:
	private:
};

#endif
