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
#include "Math.h"
#include "AudioDriver.hpp"
#include "CircularQueue.hpp"
#include "../../../Debug.hpp"

#define SAMPLE_PIN A0 // A0 is a macro for Analog Pin 0
#define SAMPLE_PIN_VCC 3.3 // 3.3 volts
#define SAMPLE_WINDOW_MS 50 // Sample window width in ms (50 ms = 20Hz, 1ms = 1000Hz)

void set_sample_pin(int pin);
void refresh_data(void);
void calculate_statistics(void);
double calc_mean(void);
double calc_stdev(void);
double calc_68(void);
double calc_95(void);
double calc_99_7(void);
double calc_pdf(unsigned int x);
double get_mean(void);
double get_stdev(void);
double get_68(void);
double get_95(void);
double get_99_7(void);

/**
 * Samples audio and returns an unsigned int representing audio level amplitude.
 */
void sample(void);

#endif
