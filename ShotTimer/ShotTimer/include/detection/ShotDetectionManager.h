/* 
* ShotDetectionManager.h
*
* Created: 12/19/2020 12:56:10 AM
* Author: sipul
*/


#ifndef __SHOTDETECTIONMANAGER_H__
#define __SHOTDETECTIONMANAGER_H__

#include "ShotTimer.h"

#include "SensitivityLevel.h"
#include "ShotDetectedEvent.h"

#include "event/EventManager.h"
#include "util/CircularFIFOQueue.h"

class ShotDetectionManager : public EventManager
{
//variables
public:
protected:
private:
	static const SensitivityLevel _SENSITIVITY = SensitivityLevel::_HIGH;
	const Event* SHOT_DETECTED_EVENT;
	CircularFIFOQueue<uint16_t> _sampleDataQueue;

//functions
public:
	ShotDetectionManager(const uint8_t sampleQueueSize = 64) : EventManager(1), SHOT_DETECTED_EVENT(new const ShotDetectedEvent()), _sampleDataQueue(sampleQueueSize) {}
	~ShotDetectionManager() {}
	void ExecuteOnce(void) override;
protected:
private:
	void SaveSampleReading(const uint16_t sample);
	void CalculateStatistics(void);
	double CalcMean(void);
	double CalcStdev(void);
	double CalcZScore(const uint16_t x);

}; //ShotDetectionManager

#endif //__SHOTDETECTIONMANAGER_H__
