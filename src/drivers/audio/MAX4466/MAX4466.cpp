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

void MAX4466::poll()
{
	auto sample = TakeSampleReading();
	double zscore = CalcZScore(sample);
	
	switch (sensitivity)
	{
		case _LOWEST:
		// Z-Score of 0.0 is = 50%
		if (zscore > 0.0)
		{
			this->handler->shotDetected();
		}
		break;
		case _LOW:
		// Z-Score of 0.465 is = 68%
		if (zscore > 0.465)
		{
			this->handler->shotDetected();
		}
		break;
		case  _MEDIUM:
		// Z-Score of 1.645 is = 95%
		if (zscore > 1.645)
		{
			this->handler->shotDetected();
		}
		break;
		case _HIGH:
		// Z-Score of 2.75 is = 99.7%
		if (zscore > 2.75)
		{
			this->handler->shotDetected();
		}
		break;
	}
	
	SaveSampleReading(sample);
}

const SampleData<unsigned int>& MAX4466::TakeSampleReading()
{
    unsigned int sample;

    unsigned int peak_to_peak = 0;   // peak-to-peak level
 
    unsigned int signal_max = 0;
    unsigned int signal_min = 1024;

    unsigned long start_millis = millis();  // Start of sample window

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
    const SampleData<unsigned int>& sampleData = *(new SampleData<unsigned int>(peak_to_peak));
	
	return sampleData;
}

void MAX4466::SaveSampleReading(const SampleData<unsigned int>& sample)
{
	MAX4466::sampleDataQueue.enqueue(sample);
}

double MAX4466::CalcMean()
{
    unsigned long sum = 0;
    unsigned long count = 0;
    for (int i = 0; i < sampleDataQueue.size; i++) {
        if (((SampleData<unsigned int>)MAX4466::sampleDataQueue.get(i)).data != 0) {
            sum = sum + ((SampleData<unsigned int>)MAX4466::sampleDataQueue.get(i)).data;
            count++;
        }
    }

    return ((double)sum) / ((double)count);
}

double MAX4466::CalcStdev()
{
    unsigned long count = 0;
    double tmp = 0.0;
    for (int i = 0; i < MAX4466::sampleDataQueue.size; i++) {
        if (((SampleData<unsigned int>)MAX4466::sampleDataQueue.get(i)).data != 0.0) {
            count++;
            // sum the (sample - mean) squared
            tmp += pow(((SampleData<unsigned int>)MAX4466::sampleDataQueue.get(i)).data - MAX4466::CalcMean(), 2.0);
        }
    }
    // divide by the population to get variance
    tmp /= count;
    // square root variance to get stdev
    return sqrt(tmp);
}

double MAX4466::CalcZScore(const SampleData<unsigned int>& x)
{
    return (x.data - MAX4466::CalcMean()) / MAX4466::CalcStdev();
}
