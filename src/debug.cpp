/**
 * Shot Timer
 * 
 * Debug Logger Utilities
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 * 
 * To Enable Debug Logging add the following directive to your program:
 * 
 * #define __DEBUG_LOGGING_ENABLED__
 *
 */

#include "debug.h"

/**
 * Logs the message to the specified serial stream.
 * If debug is not defined, does nothing.
 *   - This eliminates the need for if-statements strewn everywhere.
 * Assumes you will provide a newline when necessary!
 */
void print(char* msg)
{
#ifdef __DEBUG_LOGGING_ENABLED__
    if (init_debug()) {
        DEBUG_SERIAL.print(msg);
    }
#else
    return;
#endif
}

/**
 * Logs the message to the specified serial stream.
 * If debug is not defined, does nothing.
 *   - This eliminates the need for if-statements strewn everywhere.
 */
void println(char* msg)
{
#ifdef __DEBUG_LOGGING_ENABLED__
    if (init_debug()) {
        DEBUG_SERIAL.println(msg);
    }
#else
    return;
#endif
}

/**
 * Initializes the debug serial
 */
bool init_debug()
{
#ifdef __DEBUG_LOGGING_ENABLED__
    if (!DEBUG_SERIAL) {
        DEBUG_SERIAL.begin(DEBUG_BAUD);
        int tries = 0;
        while (!DEBUG_SERIAL) {
            delay(1);
            tries++;
            if (tries > LOGGER_CONNECT_TIMEOUT) {
                return false; // giveup
            }
        }
        DEBUG_SERIAL.println("Debug initialized!");
    }
    return true;
#else
    return false;
#endif
}
