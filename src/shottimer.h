/**
 * Shot Timer
 * 
 * Shot Timer Header
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */

#ifndef __SHOT_TIMER_H__
#define __SHOT_TIMER_H__

#include "Arduino.h"
#include "debug.h"
#include "audio_sensor.h"
#include "drivers/MAX4466.h"

#define SAMPLE_WINDOW 50

void initialize(void);
void control_loop(void);

#endif
