/**
 * Shot Timer
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */
#include <Arduino.h>

#include "shottimer.h"

/**
 * The following is essentially a default Arduino main.cpp,
 * hooking into Shot Timer's runtime.
 * 
 */

/* prototypes */
int atexit(void (*func)(void));
int main(void);
void setup();
void loop();

int atexit(void (*func)(void)) { return 0; }    // normal program exit 

int main(void)
{
    init();     // initialize AVR platform, timers, etc.
    setup();    // initialize this codebase
    for (;;) {
        loop(); // run program logic loop
    }
    return 0;
}

void setup()
{
    initialize();
}

void loop()
{
    control_loop();
}
