/**
 * Shot Timer - Driver Header
 * 
 * Minimum Priority Queue Header
 *
 * Copyright (C) 2020 Jason Sipula <alupis1@gmail.com>
 * 
 */

#ifndef __ST_AUDIO_DRIVER_H__
#define __ST_AUDIO_DRIVER_H__

#include "ShotDetectedHandler.h"

#define MAX_CALLBACKS 2

class AudioDriver
{
    protected:
        ShotDetectedHandler* handler;
    public:
        AudioDriver();
        void RegisterShotDetectedCallback(ShotDetectedHandler& handler);
        void TakeSampleReading();
		void shotDetected();
};

#endif

