/* 
* ShotDetectionManager.h
*
* Created: 12/19/2020 12:56:10 AM
* Author: sipul
*/


#ifndef __SHOTDETECTIONMANAGER_H__
#define __SHOTDETECTIONMANAGER_H__

#include "../event/EventManager.h"
#include "../drivers/audio/SampleData.h"
#include "../utils/CircularFIFOQueue.h"

class ShotDetectionManager : public EventManager
{
//variables
public:
protected:
private:
	CircularFIFOQueue<SampleData<uint16_t>> _sampleDataQueue;

//functions
public:
	ShotDetectionManager(const uint8_t sampleQueueSize = 64) : EventManager(1), _sampleDataQueue(sampleQueueSize) {}
	~ShotDetectionManager();
protected:
private:
	void SaveSampleReading(const SampleData<uint16_t>& sample);
	void CalculateStatistics(void);
	double CalcMean(void);
	double CalcStdev(void);
	double CalcZScore(const SampleData<uint16_t>& x);

}; //ShotDetectionManager

#endif //__SHOTDETECTIONMANAGER_H__
