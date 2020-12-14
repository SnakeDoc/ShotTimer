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
#include "drivers/audio/ShotDetectedHandler.h"
#include "drivers/audio/MAX4466/MAX4466.h"

#include "libs/Wire.h"
#include "libs/Adafruit_LiquidCrystal.h"

#define ACT_LED_PIN A0 // Pin 0 of Port C (PC0), chip pin 23 (A0)

#define SHOT_DETECTION_SENSITIVITY 

// Enabling will display an alternate, debug display
//#define DEBUG_DISPLAY

// I2C Clock Frequency (in Hertz)
// Some uC's only support certain frequencies
// Check documentation for your uC first.
#define I2C_LOW 10000
#define I2C_STANDARD 100000
#define I2C_FAST 400000
#define I2C_FAST_PLUS 1000000
#define I2C_HIGH_SPEED 3400000

	
class ShotTimer : public ShotDetectedHandler
{
	// variables
	public:
		MAX4466 MAX4466AudioDriver;
		Adafruit_LiquidCrystal lcd;
		double max = 0;
		double min = INT8_MAX;
		bool shot_detected = false;
		int cycle = 0;
	protected:
	private:
		
	// functions
	public:
		ShotTimer() : MAX4466AudioDriver(_HIGH, 64), lcd(0x00) {}
		int main();
		void setup();
		void loop();
	protected:
	private:
};

#endif
