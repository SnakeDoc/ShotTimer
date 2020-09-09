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

#include "../../utils/Types.hpp"

#define MAX_CALLBACKS 2

class AudioDriver
{
    private:
        func_p_t CallbackFunction;
    public:
        AudioDriver();
        void RegisterShotDetectedCallback(func_p_t);
        void ShotDetected();
        void TakeSampleReading();
};

#endif

