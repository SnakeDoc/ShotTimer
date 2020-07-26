/**
 * Shot Timer
 * 
 * Debug Logger Utilities
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */

#include "Debug.hpp"

Debug::Debug()
{
    #ifdef __DEBUG_LOGGING_ENABLED__
        Serial.begin(DEBUG_BAUD);
    #endif
}

/**
 * Print Version of Debug Statements
 */
void Debug::DebugPrint(String msg)
{
    #ifdef __DEBUG_LOGGING_ENABLED__
        Debug::_debug_print(true, false, msg);
    #endif
}

/**
 * No Stamp Version of Debug Print Statements
 */
void Debug::NSDebugPrint(String msg)
{
    #ifdef __DEBUG_LOGGING_ENABLED__
        Debug::_debug_print(false, false, msg);
    #endif
}

/**
 * Println Versions of Debug Statements
 */
void Debug::DebugPrintln(String msg)
{
    #ifdef __DEBUG_LOGGING_ENABLED__
        Debug::_debug_print(true, true, msg);
    #endif
}

/**
 * No Stamp Version of Debug Println Statements
 */
void Debug::NSDebugPrintln(String msg)
{
    #ifdef __DEBUG_LOGGING_ENABLED__
        Debug::_debug_print(false, true, msg);
    #endif
}

void Debug::_debug_print(bool stamp, bool newLine, String msg)
{
    #ifdef __DEBUG_LOGGING_ENABLED__
        if (stamp) {
            Serial.print(millis());
            Serial.print(' ');
            Serial.print(__PRETTY_FUNCTION__);
            Serial.print(" [");
            Serial.print(__FILE__);
            Serial.print(':');
            Serial.print(__LINE__);
            Serial.print("] - ");
        }
        newLine ?  Serial.println(msg) : Serial.print(msg);
    #endif
}
