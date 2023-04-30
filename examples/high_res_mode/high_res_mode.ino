// include arduino lib for all the standard definitions
#include <Arduino.h>
// enable high res 64x64 output
#define PANEL_HIGH_RES
// include the library
#include "HUB75Enano.h"

// create an instance of the panel
Panel panel = {};

// runs once, we set up the image here
void setup()
{
    // draws the shapes onto the buffer, which is then displayed on the led matrix
    panel.fillBuffer(panel.BLACK);
    panel.drawCircle(32, 32, 25, panel.CYAN, true);
    panel.drawEllipse(61, 40, 2, 7, panel.WHITE, true);
    panel.drawChar(35, 42, 'x', panel.YELLOW);
    panel.drawSquare(0, 24, 2, panel.RED, true);
    panel.drawSquare(0, 32, 2, panel.GREEN, true);
    panel.drawSquare(0, 40, 2, panel.BLUE, true);
    panel.drawSquare(0, 48, 2, panel.RED, true);
    panel.drawSquare(0, 56, 2, panel.GREEN, true);
    panel.drawLine(0, 0, 63, 63, panel.GREEN);
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
}

// runs forever after setup
void loop()
{
    // output the buffer to the screen in a loop
    panel.displayBuffer();
}