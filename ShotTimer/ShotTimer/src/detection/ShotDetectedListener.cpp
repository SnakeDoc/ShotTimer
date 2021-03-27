/* 
* ShotDetectedListener.cpp
*
* Created: 12/19/2020 12:49:33 AM
* Author: sipul
*/

#include "ShotTimer.h"
#include "util/Debug.h"
#include "detection/ShotDetectedListener.h"

// default constructor
ShotDetectedListener::ShotDetectedListener() {}

// default destructor
ShotDetectedListener::~ShotDetectedListener() {}

void ShotDetectedListener::HandleEvent(const Event& event) const
{
	ShotTimer::Display->setCursor(15, 0);
	ShotTimer::Display->print("SHOT");
	ShotTimer::Display->setCursor(15, 1);
	ShotTimer::Display->print("DTCD");
	DebugPrintln(F("Shot Detected!"));
}
