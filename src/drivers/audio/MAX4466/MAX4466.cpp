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

const int DEBUG_RATE = 10;

long sample_count;
unsigned int data_copy[QUEUE_MAX_SIZE] = {0};

double mean;
double stdev;
double s68;
double s95;
double s99_7;

void refresh_data()
{
    get_data_copy(data_copy);
}

void calculate_statistics()
{
    mean = calc_mean();
    NSDebugPrint(F(" MEAN: "));
    NSDebugPrintln(mean);
    stdev = calc_stdev();
    NSDebugPrint(F(" STDEV: "));
    NSDebugPrintln(stdev);
    // s68 = calc_68();
    // NSDebugPrint(F(" 68: "));
    // NSDebugPrintln(s68));
    // s95 = calc_95();
    // NSDebugPrint(F(" 95: "));
    // NSDebugPrintln(s95));
    // s99_7 = calc_99_7();
    // NSDebugPrint(F(" 99.7: "));
    // NSDebugPrintln(s99_7));  
}

void sample()
{
    unsigned int sample;

    unsigned long start_millis = millis();  // Start of sample window
    unsigned int peak_to_peak = 0;   // peak-to-peak level
 
    unsigned int signal_max = 0;
    unsigned int signal_min = 1024;
    
    // collect data for 50 mS
    while (millis() - start_millis < SAMPLE_WINDOW_MS)
    {
        sample = analogRead(SAMPLE_PIN);
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
    insert_sample(peak_to_peak);

    if (++sample_count % DEBUG_RATE == 0) {

        refresh_data();
        calculate_statistics();

        DebugPrint(F("CNT: "));
        NSDebugPrint(sample_count);
        NSDebugPrint(F(" MIN: "));
        NSDebugPrint(signal_min);
        NSDebugPrint(F(" MAX: "));
        NSDebugPrint(signal_max);
        NSDebugPrint(F(" AMP: "));
        NSDebugPrint(peak_to_peak);
        NSDebugPrint(F(" MEAN: "));
        NSDebugPrint(mean);
        NSDebugPrint(F(" STDEV: "));
        NSDebugPrint(stdev);
        NSDebugPrint(F(" 68: "));
        NSDebugPrint(s68);
        NSDebugPrint(F(" 95: "));
        NSDebugPrint(s95);
        NSDebugPrint(F(" 99.7: "));
        NSDebugPrint(s99_7);
        NSDebugPrint(F(" PDF: "));
        NSDebugPrintln(calc_pdf(peak_to_peak));
        //NSDebugPrint(F(" TWA: "));
        //NSDebugPrintln(get_time_weighted_average());
    }
}

double calc_mean()
{
    unsigned long sum = 0;
    unsigned long count = 0;
    unsigned int i;
    for (i = 0; i < QUEUE_MAX_SIZE; i++) {
        if (data_copy[i] != 0) {
            sum = sum + data_copy[i];
            count++;
        }
    }

    //DebugPrintln(((double)sum) / ((double)count));

    return ((double)sum) / ((double)count);
}

double calc_stdev()
{
    unsigned long count = 0;
    double tmp = 0.0;
    unsigned int i;
    for (i = 0; i < QUEUE_MAX_SIZE; i++) {
        if (data_copy[i] != 0.0) {
            count++;
            // sum the sample - mean
            tmp = tmp + (((double)data_copy[i]) - get_mean());
            // DebugPrint("Sum: ");
            // NSDebugPrintln(tmp);
        }
    }
    DebugPrint("Sum: ");
    NSDebugPrintln(tmp);
    // square the sum
    tmp = pow(tmp, 2.0);
    DebugPrint("POW: ");
    NSDebugPrintln(tmp);
    // divide by the population to get variance
    tmp /= count;
    DebugPrint("DIV: ");
    NSDebugPrintln(tmp);
    // square root variance to get stdev
    return sqrt(tmp);
}

double calc_68()
{
    return get_stdev() * 2.0;
}

double calc_95()
{
    return get_stdev() * 3.0;
}

double calc_99_7()
{
    return get_stdev() * 4.0;
}

double calc_pdf(unsigned int x)
{
    double e = 0.0;
    double d = 0.0;

    e = pow(EULER, -((pow(x, 2.0))/2));
    d = sqrt(2 * PI);
    return ((((double)1.0) / (d)) * e);
}

double get_mean()
{
    return mean;
}

double get_stdev()
{
    return stdev;
}

double get_68()
{
    return s68;
}

double get_95()
{
    return s95;
}

double get_99_7()
{
    return s99_7;
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
