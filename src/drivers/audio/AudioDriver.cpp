/**
 * Shot Timer - MAX4466 Driver
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */

#include "AudioDriver.h"

AudioDriver::AudioDriver()
{
    // nothing to do
}

void AudioDriver::RegisterShotDetectedCallback(ShotDetectedHandler& handler)
{
    *this->handler = handler;
}

void AudioDriver::shotDetected()
{
    this->handler->shotDetected();
}
