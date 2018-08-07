/**
 * Shot Timer
 * 
 * Audio Sensor Driver Interface Header
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 * 
 */

#ifndef __AUDIO_SENSOR_H__
#define __AUDIO_SENSOR_H__

#include "Arduino.h"
#include "debug.h"

void set_sample_pin(int pin);

/**
 * Samples audio and returns a float representing audio levels.
 * 
 * Sample window width in ms (50 ms = 20Hz)
 */
unsigned int sample(unsigned long window);

#endif
