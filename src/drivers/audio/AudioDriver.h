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

#include "SampleData.h"

template <typename T>
class AudioDriver
{
    public:
        AudioDriver();
		virtual ~AudioDriver();
		virtual const SampleData<T>& TakeSampleReading() = 0;
};

#endif

