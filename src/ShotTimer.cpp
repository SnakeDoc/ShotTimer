/**
 * Shot Timer
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */

#include "Arduino.h"
#include "utils/Debug.hpp"
#include "drivers/audio/MAX4466/MAX4466.hpp"

#include "Wire.h"
#include "Adafruit_LiquidCrystal.h"

#define ACT_LED_PIN A0 // Pin 0 of Port C (PC0), chip pin 23 (A0)

// Drivers
MAX4466 MAX4466AudioDriver;
Adafruit_LiquidCrystal lcd(0x00);

double max = 0;
double min = INT8_MAX;
bool shotDetected = false;
int cycle = 0;

/**
 * The following is essentially a default Arduino main.cpp,
 * hooking into Shot Timer's runtime.
 * 
 */

int atexit(void (*func)(void));
int main();
void setup();
void loop();
void shot_detected();

int atexit(void (*func)(void)) { return 0; }    // normal program exit 

int main(void)
{
    init();     // initialize AVR platform, timers, etc.
    setup();    // setup program
    for (;;) {
        loop(); // run program logic loop
    }
    return 0;
}

void setup()
{
    DebugInitialize();
    pinMode(ACT_LED_PIN, OUTPUT); // we'll blink on each loop to show activity
    MAX4466AudioDriver.RegisterShotDetectedCallback(shot_detected);

    // set up the LCD's number of rows and columns: 
    lcd.begin(20, 4);
    lcd.setCursor(0, 0);
    lcd.println("CUR: ");
    lcd.setCursor(0, 1);
    lcd.println("MAX: ");
    lcd.setCursor(0, 2);
    lcd.println("MIN: ");
    //lcd.setBacklight(HIGH);
    DebugPrintln("Startup Complete!");
}

void loop()
{
    digitalWrite(ACT_LED_PIN, !digitalRead(ACT_LED_PIN)); // toggle activity led
    double db = MAX4466AudioDriver.TakeSampleReading();

    if (db > max) {
        max = db;
    }
    if (db < min) {
        min = db;
    }

    // set the cursor to column 0, line 1
    // (note: line 1 is the second row, since counting begins with 0):
    // print the number of seconds since reset:
    //lcd.print(millis()/1000);

    lcd.setCursor(5, 0);
    lcd.print(db);
    lcd.print("    ");

    lcd.setCursor(5, 1);
    lcd.print(max);
    lcd.print("    ");

    lcd.setCursor(5, 2);
    lcd.print(min);
    lcd.print("    ");

    if (shotDetected) {
        if (cycle % 10 == 0) {
            lcd.setCursor(0, 3);
            lcd.print("              ");
            shotDetected = false;
        }
    }
    cycle++;
}

void shot_detected()
{
    shotDetected = true;
    lcd.setCursor(0, 3);
    lcd.print("Shot Detected!");
    DebugPrintln("Shot Detected!");
}
