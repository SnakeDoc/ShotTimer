/* 
* ShotDetectedListener.h
*
* Created: 12/19/2020
* Author: Jason Sipula
*/


#ifndef __SHOTDETECTEDLISTENER_H__
#define __SHOTDETECTEDLISTENER_H__

#include "event/EventListener.h"

class ShotDetectedListener : public EventListener
{
//variables
public:
protected:
private:

//functions
public:
	ShotDetectedListener();
	~ShotDetectedListener();
	void HandleEvent(const Event& event) const override;
protected:
private:

}; //ShotDetectedListener

#endif //__SHOTDETECTEDLISTENER_H__
