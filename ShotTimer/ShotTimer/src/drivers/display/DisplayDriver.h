/* 
* DisplayDriver.h
*
* Created: 12/13/2020 11:14:24 PM
* Author: sipul
*/


#ifndef __DISPLAYDRIVER_H__
#define __DISPLAYDRIVER_H__

#include <stddef.h>
#include <inttypes.h>

#include "Arduino.h"

class DisplayDriver
{
//functions
public:
	DisplayDriver() {}
	virtual ~DisplayDriver() {}
	
	virtual void init() = 0;
	virtual void clear() = 0;
	virtual void home() = 0;
	virtual void setCursor(uint8_t col, uint8_t row) = 0;
	
	virtual size_t print(const __FlashStringHelper *ifsh) = 0;
	virtual size_t print(const String &s) = 0;
	virtual size_t print(const char str[]) = 0;
	virtual size_t print(char c) = 0;
	virtual size_t print(unsigned char b, int base) = 0;
	virtual size_t print(int n, int base) = 0;
	virtual size_t print(unsigned int n, int base) = 0;
	virtual size_t print(long n, int base) = 0;
	virtual size_t print(unsigned long n, int base) = 0;
	virtual size_t print(double n, int digits) = 0;
	virtual size_t print(const Printable& x) = 0;

	virtual size_t println(const __FlashStringHelper *ifsh) = 0;
	virtual size_t println(const String &s) = 0;
	virtual size_t println(const char str[]) = 0;
	virtual size_t println(char c) = 0;
	virtual size_t println(unsigned char b, int base) = 0;
	virtual size_t println(int n, int base) = 0;
	virtual size_t println(unsigned int n, int base) = 0;
	virtual size_t println(long n, int base) = 0;
	virtual size_t println(unsigned long n, int base) = 0;
	virtual size_t println(double n, int digits) = 0;
	virtual size_t println(const Printable& x) = 0;
	
	virtual size_t println(void) = 0;
	
	void operator delete(void* p, size_t size) { free(p); }
	
}; //DisplayDriver

#endif //__DISPLAYDRIVER_H__
