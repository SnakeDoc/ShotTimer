/* 
* ShotDetectedEvent.h
*
* Created: 1/24/2021
* Author: Jason Sipula
*/


#ifndef __SHOTDETECTEDEVENT_H__
#define __SHOTDETECTEDEVENT_H__

#include "event/Event.h"

class ShotDetectedEvent : public Event
{
//variables
public:
protected:
private:

//functions
public:
	ShotDetectedEvent() : Event::Event(EventType::SHOT) {}
	~ShotDetectedEvent() {}
protected:
private:

}; //ShotDetectedEvent

#endif //__SHOTDETECTEDEVENT_H__
