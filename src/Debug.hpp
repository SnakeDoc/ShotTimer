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
#define __DEBUG_LOGGING_ENABLED__

/**
 * Choose your baud rate, common bauds are:
 * 
 * 300, 600, 1200, 2400, 4800, 9600, 14400,
 * 19200, 28800, 38400, 57600, or 115200
 */
#define DEBUG_BAUD 9600

#ifdef __DEBUG_LOGGING_ENABLED__

    /**
     * Initializes the debug system
     * Call this function in your program
     * setup routine.
     */
    #define DebugInitialize() Serial.begin(DEBUG_BAUD)

    /**
     * Print Version of Debug Statements
     */
    #define DebugPrint(...)                 \
        Serial.print(millis());             \
        Serial.print(F(" "));                  \
        Serial.print(__PRETTY_FUNCTION__);  \
        Serial.print(F(" ["));                 \
        Serial.print(__FILE__);             \
        Serial.print(F(":"));                  \
        Serial.print(__LINE__);             \
        Serial.print(F("] - "));               \
        Serial.print(__VA_ARGS__)

    /**
     * No Stamp Version of Debug Print Statements
     */
    #define NSDebugPrint(...)  Serial.print(__VA_ARGS__)

    /**
     * Println Versions of Debug Statements
     */
    #define DebugPrintln(...)               \
        Serial.print(millis());             \
        Serial.print(F(" "));                  \
        Serial.print(__PRETTY_FUNCTION__);  \
        Serial.print(F(" ["));                 \
        Serial.print(__FILE__);             \
        Serial.print(F(":"));                  \
        Serial.print(__LINE__);             \
        Serial.print(F("] - "));               \
        Serial.println(__VA_ARGS__)

    /**
     * No Stamp Version of Debug Println Statements
     */
    #define NSDebugPrintln(...) Serial.println(__VA_ARGS__)
#else

  #define DebugPrint(...)
  #define NSDebugPrint(...)
  #define DebugPrintln(...)
  #define NSDebugPrintln(...)

#endif

#endif
