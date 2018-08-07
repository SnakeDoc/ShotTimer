/**
 * Shot Timer
 * 
 * MAX4466 Electret Microphone Ampliphier Driver Header
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 * 
 * Adafruit Product Link: https://www.adafruit.com/product/1063
 * 
 * The amplifier has only 3 connections, so wiring is simple:
 * GND -> GND
 * VCC -> 3.3V
 * OUT -> AIN0
 * VCC can be anywhere from 2.4-5VDC. For the best performance, we use the 3.3v pin because it is the "quietest" supply on the Arduino.
 * 
 * The output will have a DC bias of VCC/2 so when its perfectly quiet, the voltage will be a steady VCC/2 (1.65v)
 */

#ifndef __MAX4466_DRIVER_H__
#define __MAX4466_DRIVER_H__

#include "Arduino.h"
#include "../debug.h"
#include "../audio_sensor.h"

#define DEFAULT_SAMPLE_PIN A0 // A0 is a macro for Analog Pin 0

#endif
