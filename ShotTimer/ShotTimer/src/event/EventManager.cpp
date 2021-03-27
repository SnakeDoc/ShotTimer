/* 
* EventManager.cpp
*
* Created: 12/14/2020 10:45:33 PM
* Author: sipul
*/


#include "EventManager.h"

// constructor
EventManager::EventManager(const int maxListeners) : _max(maxListeners)
{
	_eventListeners = new const EventListener*[_max];
}

// functions
const bool EventManager::RegisterEventListener(const EventListener& listener)
{
	if (_size < _max)
	{
		_eventListeners[_size] = &listener;
		_size++;
		return true;
	}
	return false;
}

const bool EventManager::RemoveEventListener(const int index)
{
	if (index < _size)
	{
		_eventListeners[index] = NULL;
		_size = PackArray();
		return true;
	}
	return false;
}

const bool EventManager::RemoveEventListener(const EventListener& listener)
{
	for (int i = 0; i < _size; i++)
	{
		if (*_eventListeners[i] == listener)
		{
			delete _eventListeners[i];
			_eventListeners[i] = NULL;
			_size = PackArray();
			return true;
		}
	}
	return false;
}


void EventManager::FireEventListeners(const Event& event) const
{
	for (int i = 0; i < _size; i++)
	{
		_eventListeners[i]->HandleEvent(event);
	}
}

uint8_t EventManager::PackArray()
{
	uint8_t size = 0;
	const EventListener** tmp = new const EventListener*[_max];
	for (int i = 0; i < _max; i++)
	{
		if (_eventListeners[i] != NULL)
		{
			tmp[size] = _eventListeners[i];
			size++;
		}
	}
	delete[] _eventListeners;
	_eventListeners = tmp;
	return size;
}

// virtual destructor
EventManager::~EventManager()
{
	delete[] _eventListeners;
	_eventListeners = NULL;
}
