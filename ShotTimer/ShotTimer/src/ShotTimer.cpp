/**
 * Shot Timer
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */

#include "ShotTimer.h"

US2066* ShotTimer::Display = new US2066();
EventManager* ShotTimer::Detection = new ShotDetectionManager(64);
EventListener* ShotTimer::DetectionListener = new ShotDetectedListener();

void ShotTimer::setup()
{	
    DebugInitialize();
	SPI.begin();
    pinMode(ACT_LED_PIN, OUTPUT); // we'll blink on each loop to show activity
    Detection->RegisterEventListener(*DetectionListener);
	Display->init();
    DebugPrintln(F("Startup Complete!"));
}

void ShotTimer::loop()
{
    digitalWrite(ACT_LED_PIN, !digitalRead(ACT_LED_PIN)); // toggle activity led
	Detection->ExecuteOnce();
}
