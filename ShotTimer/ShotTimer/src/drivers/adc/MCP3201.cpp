/* 
* MCP3201.cpp
*
* Created: 3/13/2021
* Author: Jason Sipula
*/


#include "drivers/adc/MCP3201.h"

// default constructor
MCP3201::MCP3201(const uint8_t CS_PIN, const uint32_t SCK) :
	_CS_PIN(CS_PIN),
	_SCK(SCK > _MAX_SCK ? _MAX_SCK : SCK)
{
	pinMode(_CS_PIN, OUTPUT);
	digitalWrite(_CS_PIN, HIGH); // pull CS high to disable chip
	
}

// default destructor
MCP3201::~MCP3201()
{
	digitalWrite(_CS_PIN, HIGH); // pull CS high to disable chip
} //~MCP3201


const uint32_t MCP3201::MaxSupportedSCK()
{
	return _MAX_SCK;
}

const uint16_t MCP3201::ReadSample() const
{
	// begin SPI transaction with MCP3201 settings
	SPI.beginTransaction(SPISettings(_SCK, _BIT_ORDER, _DATA_MODE));
	
	digitalWrite(_CS_PIN, LOW); // take CS low to start read
	
	uint16_t sample = SPI.transfer(0x00); // READ
	
	digitalWrite(_CS_PIN, HIGH); // take CS high to end read
	
	SPI.endTransaction();
	
	return sample;
}
