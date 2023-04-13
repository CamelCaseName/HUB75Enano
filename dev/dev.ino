// #define PANEL_BIG
//   #define PANEL_NO_BUFFER
#include "Panel_HUB75E.h"
#include <Arduino.h>

// create an instance of the panel
Panel panel = {};

void setup()
{
    // panel.setupHUB75E();

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
    panel.drawSquare(0, 0, 2, panel.RED, true);
    panel.drawSquare(8, 0, 3, panel.DARKERRED, true);
    panel.drawSquare(16, 0, 4, panel.DARKRED, true);
    panel.drawSquare(0, 8, 2, panel.GREEN, true);
    panel.drawSquare(8, 8, 3, panel.DARKERGREEN, true);
    panel.drawSquare(16, 8, 4, panel.DARKGREEN, true);
    panel.drawSquare(0, 16, 2, panel.BLUE, true);
    panel.drawSquare(8, 16, 3, panel.DARKERBLUE, true);
    panel.drawSquare(16, 16, 4, panel.DARKBLUE, true);
#endif
}

void loop()
{
    // panel.fillScreenColor(3, 0, 1);
    panel.displayBuffer();
}