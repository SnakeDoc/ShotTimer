/* 
* US2066.cpp
*
* Created: 3/27/2021
* Author: Jason Sipula
*/


#include "drivers/display/US2066.h"

US2066::US2066(uint8_t cols, uint8_t lines, uint8_t cs_pin, uint32_t sck) :
	_COLS(cols),
	_LINES(lines),
	_CS_PIN(cs_pin),
	_SCK(sck > _MAX_SCK ? _MAX_SCK : sck)
{
	pinMode(_CS_PIN, OUTPUT);
	digitalWrite(_CS_PIN, HIGH); // pull CS high to disable chip
		
}

US2066::~US2066()
{
	digitalWrite(_CS_PIN, HIGH); // pull CS high to disable chip
}

const uint32_t US2066::MaxSupportedSCK()
{
	return _MAX_SCK;
}

void US2066::init()
{
	/*
	 * even though the following settings are generally the Power On Reset values for the controller,
	 * the init() function sets them anyway to act as a sort-of soft reset
	 */
	
	// default configuration
	_displayFunction = FUNCTION_SET | FOUR_LINE_DISPLAY | NORMAL_HEIGHT_FONT;
	_displayControl = DISPLAY_CONTROL | DISPLAY_OFF | CURSOR_OFF | BLINK_OFF;
	_displayMode = ENTRY_MODE_SET | ENTRY_RIGHT | ENTRY_DISABLE_SHIFT;
	
	_sendCommandStartByte();
	
	/*
	 * Page 21 of the NHD-0420CW documentation describes a typical initialization routine.
	 * Reference commands with the command table found in the US2066 documentation pages 26 - 31.
	 */
	_displayFunction |= ENABLE_EXTENDED_COMMAND_SET;
	_send(_displayFunction);																// function set (extended command set)
	
	_send(FUNCTION_SELECTION_A);															// function selection A
	_sendDataStartByte(); // function A always requires a data packet next
	_send(REGULATE_5V_MODE);																// enable 5v mode
	_sendCommandStartByte(); // back to commands
	
	_displayFunction &= ~ENABLE_EXTENDED_COMMAND_SET;
	_send(_displayFunction);																// function set (fundamental command set)
	_send(_displayControl);																	// display off, cursor off, blink off
	
	_displayFunction |= ENABLE_EXTENDED_COMMAND_SET;
	_send(_displayFunction);																// function set (extended command set)
	
	_send(OLED_CHARACTERIZATION | ENABLE_OLED_COMMAND_SET);									// OLED command set enabled
	_send(SEG_PIN_ALTERNATIVE | DISABLE_SEG_LEFT_RIGHT_REMAP);								// default Sequential SEG & left/right
	_send(FUNCTION_SELECTION_C);															// function selection C
	_send(GPIO_INPUT_DISABLED);																// disable GPIO on the controller, we're not using it
	_send(SET_CONTRAST_CONTROL);															// set contrast
	_send(DEFAULT_CONTRAST);																// default is POR value of 0x7F
	_send(SET_PHASE_LENGTH);																// set phase length
	_send(DEFAULT_PHASE_1_PERIOD | DEFAULT_PHASE_2_PERIOD);									// default is POR values of Phase 1: 16 dsp clks | Phase 2: 7 dsp clks
	_send(SET_VCOMH_DESELECT_LEVEL);														// set VCOMH deselect level
	_send(DESELECT_LEVEL_1_00);																// default is POR value of ~1.0 x Vcc
	_send(OLED_CHARACTERIZATION & ~ENABLE_OLED_COMMAND_SET);								// OLED command set disabled, back to extended function set
	
	_send(EXTENDED_FUNCTION_SET | FOUR_LINE_OR_LESS_MODE);									// 4 line display mode, default no inverting cursor and 5 dot font width
	_send(EXTENDED_ENTRY_MODE_SET | BIDIRECTION_COMMON_ASC | BIDIRECTION_SEGMENT_ASC);		// COM SEG Direction (COM0 -> COM31, SEG0 -> SEG99), left to right on display
	
	_send(FUNCTION_SELECTION_B);															// function selection B
	_sendDataStartByte(); // function B always requires a data packet
	_send(SELECT_CHARACTER_ROM_A);															// selection Character ROM A
	_sendCommandStartByte(); // back to commands
	
	_send(_displayFunction);																// exit extended command set, back to function set (fundamental command set)
	
	// tidy up, then turn the screen on
	clear();
	home();
	displayOn();
	delay(100); // give it some time to turn on
	
}

void US2066::clear()
{

}

void US2066::home()
{

}

void US2066::displayOn()
{

}

void US2066::displayOff()
{

}

void US2066::blinkOn()
{

}

void US2066::blinkOff()
{

}

void US2066::cursorOn()
{

}

void US2066::cursorOff()
{

}

void US2066::scrollLeft()
{

}

void US2066::scrollRight()
{

}

void US2066::leftToRight()
{

}

void US2066::rightToLeft()
{

}

void US2066::autoScrollOn()
{

}

void US2066::autoScrollOff()
{

}

void US2066::setRowOffsets(const uint8_t row1, const uint8_t row2, const uint8_t row3, const uint8_t row4)
{

}

void US2066::createChar(uint8_t location, uint8_t charmap[])
{

}

void US2066::setCursor(uint8_t col, uint8_t row)
{

}

void US2066::command(uint8_t data)
{
	_sendCommandStartByte();
	_send(data);
}

size_t US2066::write(uint8_t data)
{
	_send(data);
	return 1; // assume success, report 1 byte written to satisfy <Print.h>
}

size_t US2066::write(const uint8_t *buffer, size_t size)
{
	_sendDataStartByte(); // never a command if we come through this function
	
	while (size--) {
		write(*buffer++);
	}
	
	return size; // assume success, report 'size' bytes written to satisfy <Print.h>
}

void US2066::open()
{
	if (!_spiTransactionStarted) {
		// begin SPI transaction with US2066 settings
		SPI.beginTransaction(SPISettings(_SCK, _BIT_ORDER, _DATA_MODE));
		digitalWrite(_CS_PIN, LOW); // take CS low to start command/data send
		_spiTransactionStarted = true;
	}
}

void US2066::close()
{
	digitalWrite(_CS_PIN, HIGH); // take CS high to end send
	SPI.endTransaction();
	_spiTransactionStarted = false;
}

void US2066::_sendCommandStartByte()
{
	SPI.transfer( START_BYTE | SEND_COMMAND );
}

void US2066::_sendDataStartByte()
{
	SPI.transfer( START_BYTE | SEND_DATA );
}

// expects _open() has been previously called
void US2066::_send(uint8_t data)
{
	/* 
	 * Pages 9 and 10 of the US2066 documentation describe the data packet sequence.
	 *
	 * 8-bit data is transfered in two 8 bit packets, with each 4 bits of the data followed by 4 bits of zero's.
	 *
	 * If data is 10110001, the 2 packets become 10110000 00010000
	 *
	 * We can send as many packets as we want with only one start byte sequence.
	 */
	uint8_t firstPacket = (data & 0xF0); // Mask off just the first 4 bits for first packet | 10110000 = ( 10110001 & 11110000 )
	uint8_t secondPacket = ( (data & 0x0F) << 4 ); // Mask the second 4 bits, then shift to the left 4 bits for the second packet | 00010000 = ( 10110001 & 00001111 ) << 4
	
	SPI.transfer(firstPacket);
	SPI.transfer(secondPacket);
}
