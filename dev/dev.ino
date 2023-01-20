// #define PANEL_BIG
// #define PANEL_NO_BUFFER
#define PANEL_ICN_LIKE_CONTROL
#include "Panel_HUB75E.h"

// create an instance of the panel
Panel panel = {};

void setup()
{
    panel.setupHUB75E();
    SET_ROW_PINS(15);

    panel.drawRect(0, 0, 5, 10, panel.YELLOW, true);     // yellow filled rectangle top left
    panel.drawRect(25, 16, 29, 23, panel.GREEN, false);  // green hollow rectangle somewhere in the middle
    panel.drawLine(6, 0, 63, 31, panel.WHITE);           // white diagonal through nearly the whole frame
    panel.drawCircle(50, 10, 5, panel.BLUE, false);      // hollow blue circle top right
    panel.drawCircle(11, 25, 5, panel.DARKERBLUE, true); // filled cyan circle bottom left
    panel.drawEllipse(30, 6, 6, 3, panel.GREEN, false);
    panel.drawEllipse(60, 19, 3, 8, panel.DARKERPURPLE, true);
}

void loop()
{
    panel.displayBuffer(); // makes the buffer visible and the leds all blinky blinky
    //    panel.fillScreenColor(1 << 11 | 0 << 5 | 0);
    //   panel.fillScreenColor(panel.BLUE);
}