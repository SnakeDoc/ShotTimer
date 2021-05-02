/* 
* US2066.h
* 
* SPI Driver for the US2066 family of Display Controllers
*
* Resources:
*	https://www.newhavendisplay.com/app_notes/US2066.pdf
*	https://www.newhavendisplay.com/specs/NHD-0420CW-AB3.pdf
*
* Influenced by the I2C HD44780 Compatible LiquidCrystal Library
* https://github.com/arduino-libraries/LiquidCrystal
*
* The US2066 implements much of the standard Hitachi HD44780 interface.
* Although, there are enough differences in the US2066 specifications which
* prevent direct use of existing libraries.
*
* Created: 3/27/2021
* Author: Jason Sipula
*/


#ifndef __US2066_H__
#define __US2066_H__

#include <stddef.h>
#include <stdint.h>

#include <Arduino.h>
#include <Print.h>
#include <SPI.h>

class US2066 : public Print // print() and println() to your heart's content...
{
//variables
public:
protected:
private:
	static const uint32_t _MAX_SCK = 5000000; // 5MHz (page 51 of US2066 docs) >>> NOTE: atmega328p can only do about 4Mhz at best
	static const uint8_t _BIT_ORDER = MSBFIRST;
	static const uint8_t _DATA_MODE = SPI_MODE0; // US2066 supports modes 0,0 and 1,1
	
	/*
	 * SPI commands are sent to the US2066 by emulating the HD44780 controller's MSB parallel binary interface.
	 * We convert the binary command into hex, and send via the SPI bus after dropping the display controller's
	 * Chip Select (CS) pin low.
	 *
	 * Example:
	 *
	 *	|	D7	|	D6	|	D5	|	D4	|	D3	|	D2	|	D1	|	D0	| <- Parallel binary pins
	 *	|	0	|	0	|	0	|	0	|	0	|	0	|	0	|	1	| 0x01 == Clear Display
	 *
	 * We configure complex commands using flags combined with bitwise OR.
	 *
	 * Example:
	 *
	 * uint8_t display_control = ( DISPLAY_CONTROL | DISPLAY_ON | CURSOR_ON | BLINK_OFF );
	 *	0x0E = 14 = 1110 = ( 1000 | 0100 | 0010 | 0000 ) = ( 0x08 | 0x04 | 0x02 | 0x00 )
	 *
	 * NOTE: POR = Power On Reset, the default value
	 *
	 */
	
	// Fundamental Command Set
	static const uint8_t CLEAR_DISPLAY = 0x01;		// 00000001
	static const uint8_t RETURN_HOME = 0x02;		// 00000010
	static const uint8_t ENTRY_MODE_SET = 0x04;		// 00000100
	static const uint8_t DISPLAY_CONTROL = 0x08;	// 00001000
	static const uint8_t CURSOR_SHIFT = 0x10;		// 00010000
	static const uint8_t FUNCTION_SET = 0x20;		// 00100000
	static const uint8_t SET_CGRAM_ADDR = 0x40;		// 01000000
	static const uint8_t SET_DDRAM_ADDR = 0x80;		// 10000000
	
	// Flags for Entry Mode
	static const uint8_t ENTRY_LEFT = 0x00;  // after placing a char, shift cursor to left
	static const uint8_t ENTRY_RIGHT = 0x02; // POR // or to the right (decrement/increment DDRAM addr)
	static const uint8_t ENTRY_DISABLE_SHIFT = 0x00; // POR // shift chars to the left after cursor's current pos
	static const uint8_t ENTRY_ENABLE_SHIFT = 0x01;  // or to the right
	
	// Flags for Display Control
	static const uint8_t DISPLAY_ON = 0x04;
	static const uint8_t DISPLAY_OFF = 0x00; // POR
	static const uint8_t CURSOR_ON = 0x02;
	static const uint8_t CURSOR_OFF = 0x00; // POR
	static const uint8_t BLINK_ON = 0x01;
	static const uint8_t BLINK_OFF = 0x00; // POR
	
	// Flags for Cursor Shift
	static const uint8_t DISPLAY_MOVE = 0x08;
	static const uint8_t CURSOR_MOVE = 0x00;
	static const uint8_t RIGHT_MOVE = 0x04;
	static const uint8_t LEFT_MOVE = 0x00;
	
	// Flags for Function Set
	static const uint8_t ONE_LINE_DISPLAY = 0x00;
	static const uint8_t TWO_LINE_DISPLAY = 0x08;
	static const uint8_t THREE_LINE_DISPLAY = 0x00;
	static const uint8_t FOUR_LINE_DISPLAY = 0x08;
	static const uint8_t DOUBLE_HEIGHT_FONT = 0x04;
	static const uint8_t NORMAL_HEIGHT_FONT = 0x00; // normal being 1 display line
	static const uint8_t ENABLE_EXTENDED_COMMAND_SET = 0x02; // sets RE register high
	
	// Extended Command Set
	static const uint8_t EXTENDED_FUNCTION_SET = 0x08;
	static const uint8_t FUNCTION_SELECTION_A = 0x71; // this command is always followed by a data send, 0x00 = 2.8v mode, 0x5C = 5v mode
	static const uint8_t FUNCTION_SELECTION_B = 0x72; // this command is always followed by a data send
	static const uint8_t OLED_CHARACTERIZATION = 0x78;
	static const uint8_t EXTENDED_ENTRY_MODE_SET = 0x04;
	
	// Flags for Extended Function Set
	static const uint8_t FONT_WIDTH_5_DOT = 0x00; // POR
	static const uint8_t FONT_WIDTH_6_DOT = 0x04;
	static const uint8_t ENABLE_INVERTING_CURSOR = 0x02;
	static const uint8_t DISABLE_INVERTING_CURSOR = 0x00; // POR
	static const uint8_t TWO_LINE_OR_LESS_MODE = 0x00;
	static const uint8_t FOUR_LINE_OR_LESS_MODE = 0x01;
	
	// Flags for Function Selection A
	static const uint8_t REGULATE_5V_MODE = 0x5C; // POR
	static const uint8_t REGULATE_2_8V_Mode = 0x00;
	
	// Flags for Function Selection B
	static const uint8_t SELECT_CHARACTER_ROM_A = 0x00; // Char ROM A, CGROM 240, CGRAM 8 -- ROM A has room for the maximum custom definable characters
	static const uint8_t SELECT_CHARACTER_ROM_B = 0x04; // Char ROM B, CGROM 240, CGRAM 8 -- ROM B also has room
	static const uint8_t SELECT_CHARACTER_ROM_C = 0x0B; // Char ROM C, CGROM 256, CGRAM 0 -- ROM C occupies all available CGROM, we don't want to overwrite chars
	
	// Flags for OLED Characterization
	static const uint8_t ENABLE_OLED_COMMAND_SET = 0x01;
	
	// Flags for Extended Entry Mode Set
	static const uint8_t BIDIRECTION_COMMON_DESC = 0x00;
	static const uint8_t BIDIRECTION_COMMON_ASC = 0x02; // POR
	static const uint8_t BIDIRECTION_SEGMENT_DESC = 0x00; // POR
	static const uint8_t BIDIRECTION_SEGMENT_ASC = 0x01; // use this to go left to right
	
	// OLED Command Set
	static const uint8_t SET_SEG_PINS_HW_CONFIG = 0xDA; // this command is always followed by a command send, controls how the controller maps to the screen
	static const uint8_t FUNCTION_SELECTION_C = 0xDC; // this command is always followed by a command send
	static const uint8_t SET_CONTRAST_CONTROL = 0x81; // this command is always followed by a command send, 1-256 levels of contrast, increasing with value. 0x7F is POR
	static const uint8_t SET_PHASE_LENGTH = 0xD9; // this command is always followed by a command send
	static const uint8_t SET_VCOMH_DESELECT_LEVEL = 0xDB; // this command is always followed by a command send
	
	// Flags for SEG Pins Hardware Configuration
	static const uint8_t SEG_PIN_SEQUENTIAL = 0x00;
	static const uint8_t SEG_PIN_ALTERNATIVE = 0x10; // POR // Alternative (odd/even)
	static const uint8_t DISABLE_SEG_LEFT_RIGHT_REMAP = 0x00; // POR // disables left/right remap
	static const uint8_t ENABLE_SEG_LEFT_RIGHT_REMAP = 0x20; // enables left/right remap
	
	// Flags for Function Selection C
	static const uint8_t INTERNAL_VSL = 0x00; // POR
	static const uint8_t EXTERNAL_VSL = 0x80; // if we need to feed the controller an external voltage reference for the segments
	static const uint8_t GPIO_INPUT_DISABLED = 0x00; // these are for the controller's free GPIO pins
	static const uint8_t GPIO_INPUT_ENABLED = 0x01;
	static const uint8_t GPIO_OUTPUT_LOW = 0x02;
	static const uint8_t GPIO_OUTPUT_HIGH = 0x03;
	
	// Flags for Contrast Control
	static const uint8_t DEFAULT_CONTRAST = 0x7F; // POR
	
	// Flags for Phase Length
	/*
	 * Details about Phases and Phase Length can be found on pages 14-15 of the US2066 documentation
	 *
	 * Phase 1 determines how many display clock ticks it takes to discharge the current pixels (chars)
	 * Phase 2 determines how many display clock ticks it takes to charge the next pixels (chars)
	 *
	 * Phase 1 Valid Values: 0, 2 - 32 (each 4 bit value is multiplied by 2)
	 * Phase 2 Valid Values: 1 - 15
	 *
	 * By increasing or decreasing these values, you can control how quickly characters on screen are drawn/faded
	 */
	static const uint8_t DEFAULT_PHASE_1_PERIOD = 0x08; // POR
	static const uint8_t DEFAULT_PHASE_2_PERIOD = 0x70; // POR (0111 << 4)
	
	// Flags for VCOMH Deselect Level
	static const uint8_t DESELECT_LEVEL_0_65 = 0x00; // ~0.65 X Vcc
	static const uint8_t DESELECT_LEVEL_0_71 = 0x10; // ~0.71 X Vcc
	static const uint8_t DESELECT_LEVEL_0_77 = 0x20; // ~0.77 X Vcc // POR
	static const uint8_t DESELECT_LEVEL_0_83 = 0x30; // ~0.83 X Vcc
	static const uint8_t DESELECT_LEVEL_1_00 = 0x40; // ~1 X Vcc
	
	/*
	 * Pages 9 and 10 of the US2066 documentation describe the start byte sequence.
	 *
	 * 1) Five "HIGH" bits
	 * 2) R/W Control Bit: 0 = Write, 1 = Read (we only support Write)
	 * 3) Register Selection Bit (DC): 0 = Command, 1 = Data
	 * 4) End "LOW" Bit indicating end of start byte
	 */
	static const uint8_t START_BYTE = 0xF8; // 11111000
	
	// start byte flags
	static const uint8_t SEND_DATA = 0x02;
	static const uint8_t SEND_COMMAND = 0x00;
	
	/*
	 * Pages 18 - 20 of the US2066 documentation describe the controller's DDRAM layout.
	 *
	 * Each DDRAM "row" represents a line on the display, and each "column" represents a character.
	 * We can support up to 4 line displays.
	 *
	 * NOTE: OFFSET_LINE_3 is LINE_2 when the display has only 2 lines, otherwise the number sequence is in order.
	 */
	static const uint8_t OFFSET_LINE_1 = 0x00;
	static const uint8_t OFFSET_LINE_2 = 0x20;
	static const uint8_t OFFSET_LINE_3 = 0x40; // this is line 2 when the display has only 2 lines
	static const uint8_t OFFSET_LINE_4 = 0x60;

	// configuration
	const uint8_t _COLS;
	const uint8_t _LINES;
	const uint8_t _CS_PIN;
	const uint32_t _SCK;
	
	// internal state vars
	uint8_t _displayFunction;
	uint8_t _displayControl;
	uint8_t _displayMode;
	uint8_t _row_offsets[4];
	
	// keep track of local transaction
	bool _spiTransactionStarted = false;

//functions
public:
	US2066() = delete;
	US2066(uint8_t cols, uint8_t lines, uint8_t cs_pin, uint32_t sck);
	virtual ~US2066();
	void operator delete(void* p, size_t size) { free(p); }
	
	static const uint32_t MaxSupportedSCK();
	
	void init();
	
	// Takes CS low and starts SPI transaction
	// !!! Must be called before any communication to US2066
	// may be called safely multiple sequential times
	// call close() to end communication
	void open();
	// stops SPI transaction and takes CS high
	// !!! Must be called to end all communication to US2066
	// call open() to start communication again
	void close();
	
	void clear();
	void home();
	
	void setCursor(uint8_t col, uint8_t row);
	
	void displayOn();
	void displayOff();
	void blinkOn();
	void blinkOff();
	void cursorOn();
	void cursorOff();
	
	void scrollLeft();
	void scrollRight();
	
	void leftToRight();
	void rightToLeft();
	
	void autoScrollOn();
	void autoScrollOff();
	
	void createChar(uint8_t location, uint8_t charmap[]);
	
	void command(uint8_t data);
	
	// <Print.h>, invoked by all print() and println() functions
	size_t write(uint8_t data) override;
	size_t write(const uint8_t *buffer, size_t size) override;
	
protected:
private:
	void _sendCommandStartByte();
	void _sendDataStartByte();
	void _send(uint8_t data);
	void _sendCommand(uint8_t cmd);

}; //US2066

#endif //__US2066_H__
