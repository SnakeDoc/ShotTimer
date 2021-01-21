/* 
* ShotDetectionManager.cpp
*
* Created: 12/19/2020 12:56:10 AM
* Author: sipul
*/


#include "ShotDetectionManager.h"

void ShotDetectionManager::SaveSampleReading(const SampleData<uint16_t>& sample)
{
	_sampleDataQueue.enqueue(sample);
}

double ShotDetectionManager::CalcMean()
{
	unsigned long sum = 0;
	unsigned long count = 0;
	for (int i = 0; i < _sampleDataQueue.size; i++) {
		if (((SampleData<uint16_t>)_sampleDataQueue.get(i)).data != 0) {
			sum = sum + ((SampleData<uint16_t>)_sampleDataQueue.get(i)).data;
			count++;
		}
	}

	return ((double)sum) / ((double)count);
}

double ShotDetectionManager::CalcStdev()
{
	unsigned long count = 0;
	double tmp = 0.0;
	for (int i = 0; i < _sampleDataQueue.size; i++) {
		if (((SampleData<uint16_t>)_sampleDataQueue.get(i)).data != 0.0) {
			count++;
			// sum the (sample - mean) squared
			tmp += pow(((SampleData<uint16_t>)_sampleDataQueue.get(i)).data - CalcMean(), 2.0);
		}
	}
	// divide by the population to get variance
	tmp /= count;
	// square root variance to get stdev
	return sqrt(tmp);
}

double ShotDetectionManager::CalcZScore(const SampleData<uint16_t>& x)
{
	return (x.data - CalcMean()) / CalcStdev();
}
