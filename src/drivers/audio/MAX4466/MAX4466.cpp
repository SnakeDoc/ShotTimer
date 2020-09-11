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

#include "MAX4466.hpp"

unsigned long sample_count;
SampleDataUnisgnedInt data_copy[QUEUE_MAX_SIZE];
const int DEBUG_RATE = 10;
CircularFIFOQueue<SampleDataUnisgnedInt> Queue(QUEUE_MAX_SIZE);

SampleDataLinkedList<SampleDataUnisgnedInt> list;

void MAX4466::RefreshData()
{
    Queue.GetDataCopy(data_copy);
}

void MAX4466::CalculateStatistics()
{
    mean = CalcMean();
    stdev = CalcStdev();
    s68 = Calc68();
    s95 = Calc95();
    s997 = Calc997();
}

double MAX4466::TakeSampleReading()
{
    unsigned int sample;
    double decibels;

    //unsigned int peak_to_peak = 0;   // peak-to-peak level

    SampleDataLinkedList<SampleDataUnisgnedInt> data_list;
 
    //unsigned int signal_max = 0;
    //unsigned int signal_min = 1024;

    unsigned long start_millis = millis();  // Start of sample window

    // collect data for SAMPLE_WINDOW_MS mS
    while (millis() - start_millis < SAMPLE_WINDOW_MS)
    {
        //DebugPrintln("reading Sample!");
        sample = analogRead(SAMPLE_PIN);
        DebugPrint(F("Sample: "));
        NSDebugPrintln(sample);
        if (sample < 1024)  // toss out spurious readings
        {
            // if (sample > signal_max)
            // {
            //     signal_max = sample;  // save just the max levels
            // }
            // else if (sample < signal_min)
            // {
            //     signal_min = sample;  // save just the min levels
            // }

            SampleDataUnisgnedInt* sampleData = new SampleDataUnisgnedInt(sample);
            //DebugPrintln(F("Created "));
            data_list.Insert(sampleData);
            //DebugPrintln(F("Inserted "));
        }
    }

    double rms = data_list.RMS();

    data_list.Clear();

    //NSDebugPrintln(F(""));
    DebugPrint(F("RMS: "));
    NSDebugPrintln(rms);
    //NSDebugPrintln(F(""));

    decibels = rms; // just for now

    // peak_to_peak = signal_max - signal_min;  // max - min = peak-peak amplitude

    // convert sample to volts
    // arduino uses a 10 bit analog to digital converter. possible values are 0 - 1023
    //  
    // https://www.arduino.cc/reference/en/language/functions/analog-io/analogread/
    //double volts = (peak_to_peak * VCC) / 1024;

    // convert to Db SPL: https://electronics.stackexchange.com/questions/96205/how-to-convert-volts-in-db-spl
    //decibels = (20 * log(volts / ELECTRET_MIC_V_RMS)) + ELECTRET_MIC_SENSITIVITY + Pa_2_dB;

    // if ((CalcZScore(decibels) * GetStdev()) > s997
    //         && decibels > DECIBELS_THRESHOLD
    //         && !rejectBounceback) {
    //     ShotDetected();
    //     rejectBounceback = true;
    // } else { // reject detects, so we don't learn to ignore them
    //     Queue.Enqueue(decibels);
    //     RefreshData();
    //     CalculateStatistics();
    //     rejectBounceback = false;
    // }



 //   DebugPrint(F("Volts: "));
//    NSDebugPrintln(volts);

    //DebugPrint(F("Decibels: "));
    //NSDebugPrintln(decibels);

    //if (++sample_count % DEBUG_RATE == 0) {
        // DebugPrint(F("CNT: "));
        // NSDebugPrint(sample_count);
        // NSDebugPrint(F(" MIN: "));
        // NSDebugPrint(signal_min);
        // NSDebugPrint(F(" MAX: "));
        // NSDebugPrint(signal_max);
//        NSDebugPrint(F(" AMP: "));
//        NSDebugPrintln(peak_to_peak);
        // NSDebugPrint(F(" MEAN: "));
        // NSDebugPrint(GetMean());
        // NSDebugPrint(F(" STDEV: "));
        // NSDebugPrint(stdev);
        // NSDebugPrint(F(" 68: "));
        // NSDebugPrint(s68);
        // NSDebugPrint(F(" 95: "));
        // NSDebugPrint(s95);
        // NSDebugPrint(F(" 99.7: "));
        // NSDebugPrint(s997);
        // NSDebugPrint(F(" Z-Score: "));
        // NSDebugPrintln(CalcZScore(peak_to_peak));
    //}
    return decibels;
}

double MAX4466::CalcMean()
{
    unsigned long sum = 0;
    unsigned long count = 0;
    unsigned int i;
    for (i = 0; i < QUEUE_MAX_SIZE; i++) {
        if (data_copy[i].data != 0) {
            sum = sum + data_copy[i].data;
            count++;
        }
    }

    return ((double)sum) / ((double)count);
}

double MAX4466::CalcStdev()
{
    unsigned long count = 0;
    double tmp = 0.0;
    unsigned int i;
    for (i = 0; i < QUEUE_MAX_SIZE; i++) {
        if (data_copy[i].data != 0.0) {
            count++;
            // sum the (sample - mean) squared
            tmp += pow((data_copy[i].data) - GetMean(), 2.0);
        }
    }
    // divide by the population to get variance
    tmp /= count;
    // square root variance to get stdev
    return sqrt(tmp);
}

double MAX4466::Calc68()
{
    return MAX4466::GetMean() + GetStdev();
}

double MAX4466::Calc95()
{
    return MAX4466::GetStdev() + (GetStdev() * 2.0);
}

double MAX4466::Calc997()
{
    return MAX4466::GetStdev() + (GetStdev() * 3.0);
}

double MAX4466::CalcZScore(unsigned int x)
{
    // double e = 0.0;
    // double d = 0.0;

    // e = pow(EULER, -(pow( x - GetMean(), 2.0)) / (2 * pow(GetStdev(), 2.0)));
    // d = GetStdev() * sqrt(2 * PI);
    // return ((((double)1.0) / (d)) * e);

    return (x - GetMean()) / GetStdev();
}

double MAX4466::GetMean()
{
    return mean;
}

double MAX4466::GetStdev()
{
    return stdev;
}

double MAX4466::Get68()
{
    return s68;
}

double MAX4466::Get95()
{
    return s95;
}

double MAX4466::Get997()
{
    return s997;
}

// long get_time_weighted_average()
// {
//     long weight = 1.0;
//     long weight_sum = 0.0;
//     long temp_mult = 0.0;
//     long temp_sum = 0.0;
//     long sample = 0;

//     int long sample_index = head;
//     while (sample_index != tail) {
//         // get the newest sample
//         sample = data[sample_index];
//         if (sample != 0) {
//             // multiply the sample by the weight
//             temp_mult = sample * weight;
//             // add the weighted value to the running sum
//             temp_sum += temp_mult;
//             // sum weight
//             weight_sum += weight;
//             // increment the weight
//             weight += WEIGHT_INCREMENT;
//         }

//         if (++sample_index > QUEUE_MAX_SIZE) {
//             sample_index = 0;
//         }
//     }

//     // return time weighted average
//     return temp_sum / weight_sum;

// }
