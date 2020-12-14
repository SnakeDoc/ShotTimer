/**
 * Shot Timer
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */

#include "ShotTimer.h"


int ShotTimer::main(void)
{
    setup();    // setup program
    for (;;) {
        loop(); // run program logic loop
    }
    return 0;
}

void ShotTimer::setup()
{
    // configure watchdog timer
   // wdt_enable(WDTO_8S);

	Wire.setClock(I2C_HIGH_SPEED);

    DebugInitialize();
    pinMode(ACT_LED_PIN, OUTPUT); // we'll blink on each loop to show activity
    MAX4466AudioDriver.RegisterShotDetectedCallback(*this);

    // set up the LCD's number of rows and columns: 
    lcd.begin(20, 4);
    lcd.setCursor(0, 0);
    lcd.print("CUR: ");
    lcd.setCursor(0, 1);
    lcd.print("MAX: ");
    lcd.setCursor(0, 2);
    lcd.print("MIN: ");
	lcd.setCursor(0, 3);
    lcd.print("Z-Score: ");
    lcd.setBacklight(HIGH);
    DebugPrintln(F("Startup Complete!"));
}

void ShotTimer::loop()
{
    	
    //wdt_reset(); // reset watchdog timer every loop
    digitalWrite(ACT_LED_PIN, !digitalRead(ACT_LED_PIN)); // toggle activity led
	
	MAX4466AudioDriver.poll();

/*#ifdef DEBUG_DISPLAY
    if (sample.data > max) {
        max = sample.data;
    }
    if (sample.data < min) {
        min = sample.data;
    }

    lcd.setCursor(5, 0);
    lcd.print(sample.data);
    lcd.print("    ");

    lcd.setCursor(5, 1);
    lcd.print((int)max);
    lcd.print("    ");

    lcd.setCursor(5, 2);
    lcd.print((int)min);
    lcd.print("    ");
	
	lcd.setCursor(9, 3);
   // lcd.print(zscore);
	lcd.print("    ");
#endif
*/
}

void ShotDetectedHandler::shotDetected()
{
    //shot_detected = true;
    //lcd.setCursor(15, 0);
    //lcd.print("SHOT");
	//lcd.setCursor(15, 1);
	//lcd.print("DTCD");
    DebugPrintln(F("Shot Detected!"));
}
