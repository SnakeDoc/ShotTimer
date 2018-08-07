/**
 * Shot Timer
 * 
 * MAX4466 Electret Microphone Ampliphier Driver
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 * 
 * Adafruit Product Link: https://www.adafruit.com/product/1063
 *
 */

#include "MAX4466.h"

int sample_pin = DEFAULT_SAMPLE_PIN;

void set_sample_pin(int pin)
{
    sample_pin = pin;
    DebugPrintln("Setting Sample Pin: " + pin);
}

unsigned int sample(unsigned long window)
{
    unsigned int sample;

    unsigned long start_millis = millis();  // Start of sample window
    unsigned int peak_to_peak = 0;   // peak-to-peak level
 
    unsigned int signal_max = 0;
    unsigned int signal_min = 1024;
    
    // collect data for 50 mS
    while (millis() - start_millis < window)
    {
        sample = analogRead(sample_pin);
        if (sample < 1024)  // toss out spurious readings
        {
            if (sample > signal_max)
            {
                signal_max = sample;  // save just the max levels
            }
            else if (sample < signal_min)
            {
                signal_min = sample;  // save just the min levels
            }
        }
    }
    peak_to_peak = signal_max - signal_min;  // max - min = peak-peak amplitude

    DebugPrint("peak_to_peak: ");
    NSDebugPrintln(peak_to_peak);

    return peak_to_peak;
}
