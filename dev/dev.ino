// #define PANEL_BIG
//  #define PANEL_NO_BUFFER
//  #define PANEL_FLASH
#include "Panel_HUB75E.h"
#include <Arduino.h>

// create an instance of the panel
Panel panel = {};

void setup()
{
    panel.fillBuffer(panel.BLACK);
#ifndef PANEL_BIG
    panel.drawSquare(63, 1, 0, panel.CYAN, true);
    panel.drawRect(0, 0, 5, 31, panel.YELLOW, true);    // yellow filled rectangle top left
    panel.drawRect(25, 16, 29, 23, panel.GREEN, false); // green hollow rectangle somewhere in the middle
    panel.drawLine(6, 0, 63, 31, panel.WHITE);          // white diagonal through nearly the whole frame
    panel.drawCircle(50, 10, 5, panel.BLUE, false);     // hollow blue circle top right
    panel.drawCircle(11, 25, 5, panel.RED, true);       // filled cyan circle bottom left
    panel.drawEllipse(30, 6, 6, 3, panel.GREEN, false);
    panel.drawEllipse(61, 19, 2, 7, panel.PURPLE, true);
    panel.drawChar(7, 12, 'b', panel.PURPLE);
    panel.drawSquare(0, 0, 2, panel.RED, true);
    panel.drawSquare(0, 8, 2, panel.GREEN, true);
    panel.drawSquare(0, 16, 2, panel.BLUE, true);
#else

    panel.drawRect(0, 0, 63, 1, FULL_TO_HIGH_COLOR(3, 0, 0), true);
    panel.drawRect(0, 2, 63, 3, FULL_TO_HIGH_COLOR(2, 0, 0), true);
    panel.drawRect(0, 4, 63, 5, FULL_TO_HIGH_COLOR(1, 0, 0), true);
    panel.drawRect(0, 6, 63, 7, FULL_TO_HIGH_COLOR(0, 3, 0), true);
    panel.drawRect(0, 8, 63, 9, FULL_TO_HIGH_COLOR(0, 2, 0), true);
    panel.drawRect(0, 10, 63, 11, FULL_TO_HIGH_COLOR(0, 1, 0), true);
    panel.drawRect(0, 12, 63, 13, FULL_TO_HIGH_COLOR(0, 0, 3), true);
    panel.drawRect(0, 14, 63, 15, FULL_TO_HIGH_COLOR(0, 0, 2), true);
    panel.drawRect(0, 16, 63, 17, FULL_TO_HIGH_COLOR(0, 0, 1), true);

#endif
}

void loop()
{
    panel.displayBuffer();
}