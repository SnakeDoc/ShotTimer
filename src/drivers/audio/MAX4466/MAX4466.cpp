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

/*void MAX4466::poll()
{
	const SampleData<unsigned int> * sample = TakeSampleReading();
	double zscore = CalcZScore(sample);
	
	switch (sensitivity)
	{
		case _LOWEST:
		// Z-Score of 0.0 is = 50%
		if (zscore > 0.0)
		{
			handler->shotDetected();
		}
		break;
		case _LOW:
		// Z-Score of 0.465 is = 68%
		if (zscore > 0.465)
		{
			handler->shotDetected();
		}
		break;
		case  _MEDIUM:
		// Z-Score of 1.645 is = 95%
		if (zscore > 1.645)
		{
			handler->shotDetected();
		}
		break;
		case _HIGH:
		// Z-Score of 2.75 is = 99.7%
		if (zscore > 2.75)
		{
			handler->shotDetected();
		}
		break;
	}
	
	SaveSampleReading(sample);
}
*/

const SampleData<uint16_t>& MAX4466::TakeSampleReading()
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


