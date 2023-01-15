// #define PANEL_BIG
#define PANEL_NO_BUFFER
#include "Panel_HUB75E.h"

// create an instance of the panel
Panel panel = {};

void setup()
{
    panel.setupHUB75E();
}

void loop()
{
    // panel.displayBuffer(); // makes the buffer visible and the leds all blinky blinky
    //  panel.fillScreenColor(1 << 11 | 0 << 5 | 0);
    panel.fillScreenColor(panel.DARKERWHITE);
}