/* 
* EventHandler.h
*
* Created: 12/14/2020 10:59:37 PM
* Author: sipul
*/


#ifndef __EVENTLISTENER_H__
#define __EVENTLISTENER_H__

#include "Arduino.h"
#include "Event.h"

class EventListener
{
public:
	uint32_t _id;
	
//functions
public:
	EventListener() : _id(millis()) {};
	virtual ~EventListener() {}
	virtual void HandleEvent(const Event& event) const = 0;
	bool operator==(const EventListener& listener2) const
	{
		return (_id == listener2._id);
	}

}; //EventListener

#endif //__EVENTLISTENER_H__
