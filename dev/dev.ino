// #define PANEL_BIG

#include "Panel.h"

// create an instance of the panel
Panel panel = {};

void setup()
{
    // clear buffer
    // panel.fillBuffer(panel.BLACK);
    // panel.createBufferBG(26);//background red

    // testVoltageIssues();

    // testBig();
    testSquares();
    //  testDrawing();

    // panel.fillScreenColor(2);
}

#ifdef PANEL_BIG
void testVoltageIssues()
{
    //~800 white pixels in rows
    panel.drawRect(0, 0, 63, 11, panel.DARKERWHITE, true);
    // vs in coloumns, coloumnds are better
    // panel.drawRect(0, 0, 15, 31, panel.DARKERWHITE, true);
    // panel.drawRect(16, 0, 24, 31, panel.DARKERWHITE, true);

    /*
    panel.drawRect(0, 0, 15, 5, panel.DARKERWHITE, true);
    panel.drawRect(16, 6, 31, 11, panel.DARKERWHITE, true);
    panel.drawRect(32, 12, 47, 17, panel.DARKERWHITE, true);
    panel.drawRect(48, 18, 63, 23, panel.DARKERWHITE, true);
    */
    /*
    panel.drawRect(0, 8, 63, 14, panel.DARKERWHITE, true);
    panel.drawRect(0, 16, 63, 19, panel.DARKERWHITE, true);
    panel.drawRect(0, 24, 63, 30, panel.DARKERWHITE, true);
    */
}
#endif

#ifdef PANEL_BIG
void testBig()
{
    panel.fillBuffer(FULL_TO_HIGH_COLORF(0.4f, 0, 0));
    panel.drawRect(0, 0, 5, 10, FULL_TO_HIGH_COLORF(1.0f, 0, 1.0f), true);
    panel.drawRect(23, 16, 29, 23, FULL_TO_HIGH_COLORF(0, 1.0f, 0), false);
    panel.drawRect(24, 17, 28, 22, FULL_TO_HIGH_COLORF(0, 0.7f, 0), false);
    panel.drawRect(25, 18, 27, 21, FULL_TO_HIGH_COLORF(0, 0.4f, 0), false);
    panel.drawLine(6, 0, 63, 31, FULL_TO_HIGH_COLORF(0.4f, 0.7f, 1.0f));
    panel.drawCircle(50, 10, 9, FULL_TO_HIGH_COLORF(0, 0.7f, 1.0f), false);
    panel.drawCircle(11, 25, 5, FULL_TO_HIGH_COLORF(0.7f, 1.0f, 0), true);
}
#endif

void testDrawing()
{
    panel.drawRect(0, 0, 5, 10, panel.PURPLE, true);
    panel.drawRect(25, 16, 29, 23, panel.RED, false);
    panel.drawLine(6, 0, 63, 31, panel.CYAN);
    panel.drawCircle(50, 10, 10, panel.GREEN, false);
    panel.drawCircle(11, 25, 5, panel.BLUE, true);
    panel.drawBigChar(26, 0, 'A', panel.WHITE, 2);
    panel.drawChar(60, 0, 'B', panel.WHITE);
}

void testSquares()
{
    panel.drawRect(0, 0, 7, 7, panel.PURPLE, true);     // filled rectangle top left
    panel.drawRect(8, 0, 15, 7, panel.WHITE, true);     // filled rectangle top left
    panel.drawRect(16, 0, 23, 7, panel.YELLOW, true);   // filled rectangle top left
    panel.drawRect(24, 0, 31, 7, panel.BLUE, true);     // filled rectangle top left
    panel.drawRect(32, 0, 39, 7, panel.CYAN, true);     // filled rectangle top left
    panel.drawRect(40, 0, 47, 7, panel.GREEN, true);    // filled rectangle top left
    panel.drawRect(48, 0, 55, 7, panel.PURPLE, true);   // filled rectangle top left
    panel.drawRect(56, 0, 63, 7, panel.WHITE, true);    // filled rectangle top left
    panel.drawRect(0, 8, 7, 15, panel.YELLOW, true);    // filled rectangle top left
    panel.drawRect(8, 8, 15, 15, panel.BLUE, true);     // filled rectangle top left
    panel.drawRect(16, 8, 23, 15, panel.CYAN, true);    // filled rectangle top left
    panel.drawRect(24, 8, 31, 15, panel.GREEN, true);   // filled rectangle top left
    panel.drawRect(32, 8, 39, 15, panel.PURPLE, true);  // filled rectangle top left
    panel.drawRect(40, 8, 47, 15, panel.WHITE, true);   // filled rectangle top left
    panel.drawRect(48, 8, 55, 15, panel.YELLOW, true);  // filled rectangle top left
    panel.drawRect(56, 8, 63, 15, panel.BLUE, true);    // filled rectangle top left
    panel.drawRect(0, 16, 7, 23, panel.CYAN, true);     // filled rectangle top left
    panel.drawRect(8, 16, 15, 23, panel.GREEN, true);   // filled rectangle top left
    panel.drawRect(16, 16, 23, 23, panel.PURPLE, true); // filled rectangle top left
    panel.drawRect(24, 16, 31, 23, panel.WHITE, true);  // filled rectangle top left
    panel.drawRect(32, 16, 39, 23, panel.YELLOW, true); // filled rectangle top left
    panel.drawRect(40, 16, 47, 23, panel.BLUE, true);   // filled rectangle top left
    panel.drawRect(48, 16, 55, 23, panel.CYAN, true);   // filled rectangle top left
    panel.drawRect(56, 16, 63, 23, panel.GREEN, true);  // filled rectangle top left
    panel.drawRect(0, 24, 7, 31, panel.PURPLE, true);   // filled rectangle top left
    panel.drawRect(8, 24, 15, 31, panel.WHITE, true);   // filled rectangle top left
    panel.drawRect(16, 24, 23, 31, panel.YELLOW, true); // filled rectangle top left
    panel.drawRect(24, 24, 31, 31, panel.BLUE, true);   // filled rectangle top left
    panel.drawRect(32, 24, 39, 31, panel.CYAN, true);   // filled rectangle top left
    panel.drawRect(40, 24, 47, 31, panel.GREEN, true);  // filled rectangle top left
    panel.drawRect(48, 24, 55, 31, panel.PURPLE, true); // filled rectangle top left
    panel.drawRect(56, 24, 63, 31, panel.WHITE, true);  // filled rectangle top left
}

void testTVStyle()
{
    panel.drawRect(0, 0, 63, 31, Panel::CYAN, true);
    panel.drawRect(4, 4, 59, 27, Panel::YELLOW, true);
    panel.drawRect(8, 8, 55, 23, Panel::PURPLE, true);
    panel.drawRect(12, 12, 51, 19, Panel::WHITE, true);
    panel.drawCircle(32, 15, 10, Panel::BLACK, false);
}

void loop()
{
    panel.displayBuffer(); // makes the buffer visible and the leds all blinky blinky
    // panel.fillScreenColor(1 << 11 | 0 << 5 | 0);
    // panel.fillScreenColor(panel.DARKERWHITE);
}