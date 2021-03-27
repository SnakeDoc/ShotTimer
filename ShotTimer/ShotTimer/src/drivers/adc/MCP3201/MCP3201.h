/* 
* MCP3201.h
*
* Driver for Microchip Technology MCP3201-CI/P
* 16 Bit Analog to Digital Converter
*
* https://ww1.microchip.com/downloads/en/DeviceDoc/21290F.pdf
*
* Created: 3/13/2021
* Author: Jason Sipula
*/


#ifndef __MCP3201_H__
#define __MCP3201_H__

#include "Arduino.h"

#include "stdint.h"

#include "../../../libs/SPI.h"

#define MAX_SCK 1600000 // 1.6MHz

class MCP3201
{
//variables
public:
protected:
private:
	const uint8_t _CS_PIN;
	const uint32_t _SCK; // max of 1600000 Hz
	const uint8_t _BIT_ORDER = MSBFIRST;
	const uint8_t _DATA_MODE = SPI_MODE0; // MCP3201 supports modes 0,0 and 1,1

//functions
public:
	MCP3201() = delete;
	MCP3201(const uint8_t CS_PIN, const uint32_t SCK);
	~MCP3201();
	static const uint32_t MaxSupportedSCK();
	const uint16_t ReadSample() const;
protected:
private:
	MCP3201( const MCP3201 &c );
	MCP3201& operator=( const MCP3201 &c );

}; //MCP3201

#endif //__MCP3201_H__
