/**
 * Shot Timer
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */

#include "Arduino.h"
#include "Debug.hpp"
#include "drivers/audio/MAX4466/AudioDriver.hpp"

/**
 * The following is essentially a default Arduino main.cpp,
 * hooking into Shot Timer's runtime.
 * 
 */

int atexit(void (*func)(void));
int main();
void loop();

int atexit(void (*func)(void)) { return 0; }    // normal program exit 

int main(void)
{
    init();     // initialize AVR platform, timers, etc.
    DebugInitialize();
    for (;;) {
        loop(); // run program logic loop
    }
    return 0;
}

void loop()
{
    sample();
}
