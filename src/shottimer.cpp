/**
 * Shot Timer
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */

#include "shottimer.h"
#include "debug.h"

void initialize()
{
#ifdef __DEBUG_LOGGING_ENABLED__
    init_debug();
#endif
}

void control_loop()
{
    DebugPrintln("Hello!");
    delay(100);
}
