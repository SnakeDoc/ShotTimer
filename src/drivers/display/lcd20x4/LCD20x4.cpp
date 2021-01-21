/* 
* LCD20x4.cpp
*
* Created: 12/13/2020 11:23:06 PM
* Author: sipul
*/


#include "LCD20x4.h"

// default constructor
LCD20x4::LCD20x4() : lcd(0x00)
{
	Wire.setClock(I2C_HIGH_SPEED);
	init();
}

// default destructor
LCD20x4::~LCD20x4() {}

void LCD20x4::init()
{
	LCD20x4::lcd.setBacklight(HIGH);
}

void LCD20x4::clear()
{
	LCD20x4::lcd.clear();
}
void LCD20x4::home()
{
	LCD20x4::lcd.home();
}
void LCD20x4::setCursor(uint8_t col, uint8_t row)
{
	if (col > 20) col = 20;
	if (row > 4) row = 4;
	LCD20x4::lcd.setCursor(col, row);
}

size_t LCD20x4::print(const __FlashStringHelper *ifsh)
{
	return LCD20x4::lcd.print(ifsh);
}
size_t LCD20x4::print(const String &s)
{
	return LCD20x4::lcd.print(s);
}
size_t LCD20x4::print(const char str[])
{
	return LCD20x4::lcd.print(str);
}
size_t LCD20x4::print(char c)
{
	return LCD20x4::lcd.print(c);
}
size_t LCD20x4::print(unsigned char b, int base)
{
	return LCD20x4::lcd.print(b, base);
}
size_t LCD20x4::print(int n, int base)
{
	return LCD20x4::lcd.print(n, base);
}
size_t LCD20x4::print(unsigned int n, int base)
{
	return LCD20x4::lcd.print(n, base);
}
size_t LCD20x4::print(long n, int base)
{
	return LCD20x4::lcd.print(n, base);
}
size_t LCD20x4::print(unsigned long n, int base)
{
	return LCD20x4::lcd.print(n, base);
}
size_t LCD20x4::print(double n, int digits)
{
	return LCD20x4::lcd.print(n, digits);
}
size_t LCD20x4::print(const Printable& x)
{
	return LCD20x4::lcd.print(x);
}

size_t LCD20x4::println(const __FlashStringHelper *ifsh)
{
	return LCD20x4::lcd.println(ifsh);
}
size_t LCD20x4::println(const String &s)
{
	return LCD20x4::lcd.println(s);
}
size_t LCD20x4::println(const char str[])
{
	return LCD20x4::lcd.println(str);
}
size_t LCD20x4::println(char c)
{
	return LCD20x4::lcd.println(c);
}
size_t LCD20x4::println(unsigned char b, int base)
{
	return LCD20x4::lcd.println(b, base);
}
size_t LCD20x4::println(int n, int base)
{
	return LCD20x4::lcd.println(n, base);
}
size_t LCD20x4::println(unsigned int n, int base)
{
	return LCD20x4::lcd.println(n, base);
}
size_t LCD20x4::println(long n, int base)
{
	return LCD20x4::lcd.println(n, base);
}
size_t LCD20x4::println(unsigned long n, int base)
{
	return LCD20x4::lcd.println(n, base);
}
size_t LCD20x4::println(double n, int digits)
{
	return LCD20x4::lcd.println(n, digits);
}
size_t LCD20x4::println(const Printable& x)
{
	return LCD20x4::lcd.println(x);
}

size_t LCD20x4::println(void)
{
	return LCD20x4::lcd.println();
}
