/* 
* EventManager.h
*
* Created: 12/14/2020 10:45:33 PM
* Author: sipul
*/


#ifndef __EVENTMANAGER_H__
#define __EVENTMANAGER_H__

#include <stddef.h>
#include <stdint.h>

#include "EventListener.h"

class EventManager
{
// variables
public:
protected:
	const EventListener** _eventListeners;
	const int _max;
	int _size = 0;
private:

//functions
public:
	EventManager() = delete;
	EventManager(const int maxListeners);
	virtual ~EventManager();
	const bool RegisterEventListener(const EventListener& listener);
	const bool RemoveEventListener(const int index);
	const bool RemoveEventListener(const EventListener& listener);
protected:
	void FireEventListeners(const Event& event) const;
private:
	uint8_t PackArray();

}; //EventManager

#endif //__EVENTMANAGER_H__
