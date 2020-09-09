/**
 * Shot Timer - Utils
 * 
 * Data Sample from Audio Sensor
 *
 * Copyright (C) 2020 Jason Sipula <alupis1@gmail.com>
 * 
 */
#ifndef __UTILS_SampleDataUnisgnedInt_H__
#define __UTILS_SampleDataUnisgnedInt_H__

class SampleDataUnisgnedInt
{
    private:
        unsigned int sample;

    public:
        SampleDataUnisgnedInt()
        {
            this->sample = 0;
        }

        SampleDataUnisgnedInt(unsigned int sample)
        {
            this->sample = sample;
        }

        unsigned int getSample()
        {
            return sample;
        }

        void setSample(unsigned int sample)
        {
            this->sample = sample;
        }

        unsigned int getData()
        {
            return sample;
        }
        
};

#endif
