// set the buffer to 2 bit mode
#define PANEL_BIG
// include arduino library
#include <Arduino.h>
// include library for the panel
#include "HUB75Enano.h"

// create panel instance
Panel panel = {};

// runs once at start, best to create and define the image here (at least the static parts)
void setup()
{
    // define the image, this will produce 3 stripes of red, green and blue each with 3 levels of dimming
    panel.fillBuffer(panel.BLACK);
    panel.drawRect(0, 0, 63, 1, FULL_TO_HIGH_COLOR(3, 0, 0), true);
    panel.drawRect(0, 2, 63, 3, FULL_TO_HIGH_COLOR(2, 0, 0), true);
    panel.drawRect(0, 4, 63, 5, FULL_TO_HIGH_COLOR(1, 0, 0), true);
    panel.drawRect(0, 6, 63, 7, FULL_TO_HIGH_COLOR(0, 3, 0), true);
    panel.drawRect(0, 8, 63, 9, FULL_TO_HIGH_COLOR(0, 2, 0), true);
    panel.drawRect(0, 10, 63, 11, FULL_TO_HIGH_COLOR(0, 1, 0), true);
    panel.drawRect(0, 12, 63, 13, FULL_TO_HIGH_COLOR(0, 0, 3), true);
    panel.drawRect(0, 14, 63, 15, FULL_TO_HIGH_COLOR(0, 0, 2), true);
    panel.drawRect(0, 16, 63, 17, FULL_TO_HIGH_COLOR(0, 0, 1), true);
}

// runs forever after setup
void loop()
{
    // output the buffer to the screen in a loop
    panel.displayBuffer();
}