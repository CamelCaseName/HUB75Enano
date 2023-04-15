// #define PANEL_BIG
// #define PANEL_NO_BUFFER
// #define PANEL_FLASH
#include "Panel_HUB75E.h"
#include <Arduino.h>

// create an instance of the panel
Panel panel = {};
Panel::LED *buffer = panel.buffer;
uint8_t row = 0;

void stepRow()
{
    if (row == 0)
    {
        HIGH_RC;
        HIGH_RA;
        CLEAR_RA;
        CLEAR_RC;
    }
    else
    {
        HIGH_RA;
        CLEAR_RA;
    }
    row = (row + 1) & 31;
}

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
    panel.drawSquare(0, 0, 2, FULL_TO_HIGH_COLOR(3, 0, 0), true);
    panel.drawSquare(8, 0, 3, FULL_TO_HIGH_COLOR(2, 0, 0), true);
    panel.drawSquare(16, 0, 4, FULL_TO_HIGH_COLOR(1, 0, 0), true);
    panel.drawSquare(0, 8, 2, FULL_TO_HIGH_COLOR(0, 3, 0), true);
    panel.drawSquare(8, 8, 3, FULL_TO_HIGH_COLOR(0, 2, 0), true);
    panel.drawSquare(16, 8, 4, FULL_TO_HIGH_COLOR(0, 1, 0), true);
    panel.drawSquare(0, 16, 2, FULL_TO_HIGH_COLOR(0, 0, 3), true);
    panel.drawSquare(8, 16, 3, FULL_TO_HIGH_COLOR(0, 0, 2), true);
    panel.drawSquare(16, 16, 4, FULL_TO_HIGH_COLOR(0, 0, 1), true);
#endif
}

void loop()
{
    panel.displayBuffer();
    /*
    uint16_t basic_index = 0;
    for (uint8_t y = 0; y < 32; y++) // 32 rows
    {
        // bitness needs to be between 1 and 12, changes sent bitdepth. the lower, the faster
        basic_index = ((y >> 1) * 16); // advance over 16 led to the next chip (4 led at 2x2 real life led per index in buffer -> 16/4/2=2)

        // we integer divide the screen by 2 and then set 16 led to 8 values in pairs
#pragma region LSB

        // chip 0
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        // chip 1
        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        // chip 2
        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        // chip 3
        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        // chip 4
        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        // chip 5
        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        // chip 6
        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        // chip 7
        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + sizeof(uint8_t)))) >> 4));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 4)))) >> 4));
        PWCLK_GCLK;

        //  latch data from shift registers to latch register, "buffer" for global release to pwm
        HIGH_LAT;
        CLOCK;
        CLEAR_LAT;

#pragma endregion

        // reset index for new bits
        basic_index = ((y >> 1) * 16);

#pragma region MSB
        // chip 0
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        // chip 1
        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        // chip 2
        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        // chip 3
        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        // chip 4
        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        // chip 5
        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        // chip 6
        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        // chip 7
        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;

        ++basic_index;
        SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
        PWCLK_GCLK;
        PWCLK_GCLK;
        SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 3)))) >> 6));
        PWCLK_GCLK;

        // shift data into buffers
        HIGH_LAT;
        CLOCK;
        CLEAR_LAT;

        SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));

        //  display row once done, so move data from latch registers to pwm modules, now with two bits of information
        HIGH_LAT;
        CLOCK;
        CLOCK;
        CLEAR_LAT;
#pragma endregion

        // advance 1 in row once we are done with one
        stepRow();
    }*/
}