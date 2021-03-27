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
#include "SampleDataLinkedList.tpp"
#include "../AudioDriver.hpp"
#include "../../../utils/SampleDataUnsignedInt.hpp"
#include "../../../utils/CircularFIFOQueue.tpp"
#include "../../../utils/Debug.hpp"

#define SAMPLE_PIN A1 // A1 is a macro for Analog Pin 1
#define VCC 5 // VCC of the system, not the mic, due to 10 bit AD converter in the atmega328p - 3.3, 5, etc...
#define SAMPLE_WINDOW_MS 10 // Sample window width in ms (200ms = 5Hz, 50 ms = 20Hz, 1ms = 1000Hz)
#define DECIBELS_THRESHOLD 50 //110 // 110 Decibels is about where suppressed low powered rimfire cartridges are...
#define VOLTS_PER_SAMPLE_UNIT 0.001611328125 // Mic Reference Voltage over 1024 sample units, 3.3 / 1024.
                                             // analogRead() uses a 10 bit analog to digital converter, so 0 - 1023 units.
                                             // https://www.arduino.cc/reference/en/language/functions/analog-io/analogread/
#define Pa_2_dB 94 // 94dB = 1 Pa
#define ELECTRET_MIC_SENSITIVITY -44 // -44dB (1V/Pa)
#define ELECTRET_MIC_V_RMS 0.006309573444802 // https://electronics.stackexchange.com/questions/96205/how-to-convert-volts-in-db-spl
                                             // https://www.translatorscafe.com/unit-converter/en-US/microphone-sensitivity/

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
        double TakeSampleReading(void);
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
