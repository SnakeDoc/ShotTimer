/**
 * Shot Timer
 * 
 * Debug Logger Utilities
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */

#include "debug.h"

/**
 * Initializes the debug system
 * Call this function in your program
 * setup routine.
 */
void init_debug()
{
#ifdef __DEBUG_LOGGING_ENABLED__
    Serial.begin(DEBUG_BAUD);
#endif
}
