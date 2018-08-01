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
 */

#ifndef __DEBUG_LOGGER_H__
#define __DEBUG_LOGGER_H__

#include "Arduino.h"

/*
 * Choose which serial output you need
 * Options are dependent on your platform,
 * however most ATMega's have a HW Serial called 'Serial',
 * along with Software Serials.
 * If you decide to use Software Serial, you must define it
 * somwhere within your program and then specify the variable
 * name here.
 * 
 * Example:
 * 
 * // in your program somewhere
 * SoftwareSerial mySerial(10, 11); // RX, TX
 * 
 * // and then below
 * #define DEBUG_SERIAL mySerial
 */
#define DEBUG_SERIAL Serial

/*
 * Choose your baud rate, common bauds are:
 * 
 * 300, 600, 1200, 2400, 4800, 9600, 14400,
 * 19200, 28800, 38400, 57600, or 115200
 */
#define DEBUG_BAUD 9600

/*
 * timeout in seconds for debug serial connection attempts
 */
#define LOGGER_CONNECT_TIMEOUT 1000

void print(char* msg);
void println(char* msg);
bool init_debug();

#endif
