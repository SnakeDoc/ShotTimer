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

class AudioDriver
{
    public:
        AudioDriver() {}
        virtual ~AudioDriver() {}
		template <typename T> const SampleData<T>& TakeSampleReading(void);
		void operator delete(void* p, size_t size) { free(p); }
};

#endif

