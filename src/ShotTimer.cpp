/**
 * Shot Timer
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */

#include "ShotTimer.h"

AudioDriver* ShotTimer::Audio = new MAX4466(50);
DisplayDriver* ShotTimer::Display = new LCD20x4();
EventManager* ShotTimer::Detection = new ShotDetectionManager(64);
EventListener* ShotTimer::DetectionListener = new ShotDetectedListener();

void ShotTimer::run(void)
{
    setup();    // setup program
    for (;;) {
        loop(); // run program logic loop
    }
}

void ShotTimer::setup()
{	
    DebugInitialize();
    pinMode(ACT_LED_PIN, OUTPUT); // we'll blink on each loop to show activity
    Detection->RegisterEventListener(*DetectionListener);

    DebugPrintln(F("Startup Complete!"));
}

void ShotTimer::loop()
{
    digitalWrite(ACT_LED_PIN, !digitalRead(ACT_LED_PIN)); // toggle activity led
	
	Detection->ExecuteOnce();
}
