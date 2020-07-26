/**
 * Shot Timer
 * 
 * Debug Logger Utilities Header
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 * 
 * To Enable Debug Logging add the following directive to your program:
 * 
 * #define __DEBUG_LOGGING_ENABLED__
 * 
 * Ideas borrowed from: http://forum.arduino.cc/index.php?topic=64555.0
 *
 */

#ifndef __DEBUG_LOGGER_H__
#define __DEBUG_LOGGER_H__

#include "Arduino.h"

/**
 * To Enable Debug Logging, uncomment this
 */
//#define __DEBUG_LOGGING_ENABLED__

/**
 * Choose your baud rate, common bauds are:
 * 
 * 300, 600, 1200, 2400, 4800, 9600, 14400,
 * 19200, 28800, 38400, 57600, or 115200
 */
 #define DEBUG_BAUD 9600

class Debug
{

    private:
        static void _debug_print(bool stamp, bool newLine, String msg);
    public:
        Debug();
        static void DebugPrint(String msg);
        static void NSDebugPrint(String msg);
        static void DebugPrintln(String msg);
        static void NSDebugPrintln(String msg);
};

#endif
