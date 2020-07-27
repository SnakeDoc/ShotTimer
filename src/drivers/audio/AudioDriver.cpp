/**
 * Shot Timer - MAX4466 Driver
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */

#include "AudioDriver.hpp"

AudioDriver::AudioDriver()
{
    // nothing to do
}

void AudioDriver::RegisterShotDetectedCallback(func_p_t callback)
{
    CallbackFunction = *callback;
}

void AudioDriver::ShotDetected()
{
    CallbackFunction();
}
