/**
 * Shot Timer
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */

#include "Arduino.h"
#include "Debug.hpp"
#include "drivers/audio/MAX4466/MAX4466.hpp"

// Drivers
MAX4466 MAX4466AudioDriver;

/**
 * The following is essentially a default Arduino main.cpp,
 * hooking into Shot Timer's runtime.
 * 
 */

int atexit(void (*func)(void));
int main();
void setup();
void loop();
void shot_detected();

int atexit(void (*func)(void)) { return 0; }    // normal program exit 

int main(void)
{
    init();     // initialize AVR platform, timers, etc.
    setup();    // setup program
    for (;;) {
        loop(); // run program logic loop
    }
    return 0;
}

void setup()
{
    DebugInitialize();
    MAX4466AudioDriver.RegisterShotDetectedCallback(shot_detected);
}

void loop()
{
    MAX4466AudioDriver.TakeSampleReading();
}

void shot_detected()
{
    DebugPrintln("Shot Detected!");
}
