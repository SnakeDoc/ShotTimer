/* 
* ShotDetectionManager.cpp
*
* Created: 12/19/2020 12:56:10 AM
* Author: sipul
*/


#include "ShotDetectionManager.h"

void ShotDetectionManager::ExecuteOnce(void)
{
	
	//const auto sample = ShotTimer::Audio->TakeSampleReading<uint16_t>();
	
	const double zscore = CalcZScore(NULL);//sample);
	
	switch (ShotDetectionManager::_SENSITIVITY)
	{
		case SensitivityLevel::_LOWEST:
		// Z-Score of 0.0 is = 50%
		if (zscore > 0.0)
		{
			FireEventListeners(*SHOT_DETECTED_EVENT);
		}
		break;
		case SensitivityLevel::_LOW:
		// Z-Score of 0.465 is = 68%
		if (zscore > 0.465)
		{
			FireEventListeners(*SHOT_DETECTED_EVENT);
		}
		break;
		case  SensitivityLevel::_MEDIUM:
		// Z-Score of 1.645 is = 95%
		if (zscore > 1.645)
		{
			FireEventListeners(*SHOT_DETECTED_EVENT);
		}
		break;
		case SensitivityLevel::_HIGH:
		// Z-Score of 2.75 is = 99.7%
		if (zscore > 2.75)
		{
			FireEventListeners(*SHOT_DETECTED_EVENT);
		}
		break;
	}
	
	SaveSampleReading(NULL);//sample);
}

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
