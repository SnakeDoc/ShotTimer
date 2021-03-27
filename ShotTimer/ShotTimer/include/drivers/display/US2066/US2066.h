/* 
* US2066.h
* 
* https://www.newhavendisplay.com/app_notes/US2066.pdf
* https://www.newhavendisplay.com/specs/NHD-0420CW-AB3.pdf
*
* Created: 3/27/2021
* Author: Jason Sipula
*/


#ifndef __US2066_H__
#define __US2066_H__

#include "stddef.h"
#include "stdint.h"

#include "Arduino.h"

class US2066
{
//variables
public:
protected:
private:

//functions
public:
	US2066();
	~US2066();
	void init();
	void setCursor(uint8_t col, uint8_t row);
	size_t print(const String &s);
protected:
private:
	US2066( const US2066 &c );
	US2066& operator=( const US2066 &c );

}; //US2066

#endif //__US2066_H__
