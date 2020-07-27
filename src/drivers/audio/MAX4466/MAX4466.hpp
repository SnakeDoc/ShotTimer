/**
 * Shot Timer
 * 
 * MAX4466 Electret Microphone Ampliphier Driver Header
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 * 
 * Adafruit Product Link: https://www.adafruit.com/product/1063
 * 
 * The amplifier has only 3 connections, so wiring is simple:
 * GND -> GND
 * VCC -> 3.3V
 * OUT -> AIN0
 * VCC can be anywhere from 2.4-5VDC. For the best performance, we use the 3.3v pin because it is the "quietest" supply on the Arduino.
 * 
 * The output will have a DC bias of VCC/2 so when its perfectly quiet, the voltage will be a steady VCC/2 (1.65v)
 */

#ifndef __MAX4466_DRIVER_H__
#define __MAX4466_DRIVER_H__

#include "Arduino.h"
#include "Math.h"
#include "../AudioDriver.hpp"
#include "CircularFIFOQueue.hpp"
#include "../../../Debug.hpp"

#define SAMPLE_PIN A0 // A0 is a macro for Analog Pin 0
#define VCC 3.3 // 3.3, 5, etc...
#define SAMPLE_WINDOW_MS 200 // Sample window width in ms (200ms = 5Hz, 50 ms = 20Hz, 1ms = 1000Hz)
#define DECIBELS_THRESHOLD 110 // 110 Decibels is about where low powered rimfire cartridges are...

class MAX4466 : public AudioDriver
{
    private:
        double mean;
        double stdev;
        double s68;
        double s95;
        double s997;
        bool rejectBounceback = false;
    public:
        void SetSamplePin(int pin);
        void TakeSampleReading(void);
        void RefreshData(void);
        void CalculateStatistics(void);
        double CalcMean(void);
        double CalcStdev(void);
        double Calc68(void);
        double Calc95(void);
        double Calc997(void);
        double CalcZScore(unsigned int x);
        double GetMean(void);
        double GetStdev(void);
        double Get68(void);
        double Get95(void);
        double Get997(void);
};

#endif
