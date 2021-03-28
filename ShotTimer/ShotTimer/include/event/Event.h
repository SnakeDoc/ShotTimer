/* 
* Event.h
*
* Created: 12/14/2020
* Author: Jason Sipula
*/


#ifndef __EVENT_H__
#define __EVENT_H__

#include "EventType.h"

class Event
{
// variables
public:
protected:
	const EventType _eventType;
private:

//functions
public:
	Event() = delete;
	Event(EventType eventType) : _eventType(eventType) {}
	virtual ~Event() {}
	const EventType GetEventType() { return _eventType; }
	void operator delete(void* p, size_t size) { free(p); }
protected:
private:	

}; //Event

#endif //__EVENT_H__
