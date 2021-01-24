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

#include <stdlib.h>

#include "MAX4466.h"

template <> const SampleData<uint16_t>& MAX4466::AudioDriver::TakeSampleReading() const
{
    uint16_t sample;

    uint16_t peak_to_peak = 0;   // peak-to-peak level
 
    uint16_t signal_max = 0;
    uint16_t signal_min = 1024;

    uint32_t start_millis = millis();  // Start of sample window

    // collect data for SAMPLE_WINDOW_MS mS
    while (millis() - start_millis < SAMPLE_WINDOW_MS)
    {
        sample = analogRead(SAMPLE_PIN);
        //DebugPrint(F("Sample: "));
        //NSDebugPrintln(sample);
		
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
	
	// arduino uses a 10 bit analog to digital converter. possible values are 0 - 1023
	//
	// https://www.arduino.cc/reference/en/language/functions/analog-io/analogread/
	peak_to_peak = signal_max - signal_min;  // max - min = peak-peak amplitude
    const SampleData<uint16_t>& sampleData = *(new SampleData<uint16_t>(peak_to_peak));
	
	return sampleData;
}


