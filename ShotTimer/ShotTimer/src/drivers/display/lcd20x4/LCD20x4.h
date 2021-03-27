/* 
* LCD20x4.h
*
* Created: 12/13/2020 11:23:06 PM
* Author: sipul
*/


#ifndef __LCD20X4_H__
#define __LCD20X4_H__

#include "../DisplayDriver.h"
#include "../../../libs/Wire.h"
#include "../../../libs/Adafruit_LiquidCrystal.h"

class LCD20x4 : public DisplayDriver
{
//variables
public:
	// I2C Clock Frequency (in Hertz)
	// Some uC's only support certain frequencies
	// Check documentation for your uC first.
	static const long I2C_LOW = 10000;
	static const long I2C_STANDARD = 100000;
	static const long I2C_FAST = 400000;
	static const long I2C_FAST_PLUS = 1000000;
	static const long I2C_HIGH_SPEED = 3400000;
	Adafruit_LiquidCrystal lcd;
protected:
private:

//functions
public:
	LCD20x4();
	~LCD20x4();
	void init() override;
	void clear() override;
	void home() override;
	void setCursor(uint8_t col, uint8_t row) override;
	
	size_t print(const __FlashStringHelper *ifsh) override;
	size_t print(const String &s) override;
	size_t print(const char str[]) override;
	size_t print(char c) override;
	size_t print(unsigned char b, int base) override;
	size_t print(int n, int base) override;
	size_t print(unsigned int n, int base) override;
	size_t print(long n, int base) override;
	size_t print(unsigned long n, int base) override;
	size_t print(double n, int digits) override;
	size_t print(const Printable& x) override;

	size_t println(const __FlashStringHelper *ifsh) override;
	size_t println(const String &s) override;
	size_t println(const char str[]) override;
	size_t println(char c) override;
	size_t println(unsigned char b, int base) override;
	size_t println(int n, int base) override;
	size_t println(unsigned int n, int base) override;
	size_t println(long n, int base) override;
	size_t println(unsigned long n, int base) override;
	size_t println(double n, int digits) override;
	size_t println(const Printable& x) override;
	
	size_t println(void) override;
	 
protected:
private:
	LCD20x4( const LCD20x4 &c );
	LCD20x4& operator=( const LCD20x4 &c );
}; //LCD20x4

#endif //__LCD20X4_H__
