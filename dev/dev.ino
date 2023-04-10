// #define PANEL_BIG
// #define PANEL_NO_BUFFER
#define PANEL_ICN_LIKE_CONTROL
#define PANEL_RGB_FLIPPED_TO_BGR
#include "Panel_HUB75E.h"
#include <Arduino.h>

// create an instance of the panel
Panel panel = {};
uint8_t row = 0;

void setup()
{
    // panel.setupHUB75E();
    panel.fillBuffer(panel.BLACK);

    panel.drawSquare(63, 1, 0, panel.CYAN, true);
    panel.drawRect(0, 0, 5, 31, panel.YELLOW, true);    // yellow filled rectangle top left
    panel.drawRect(25, 16, 29, 23, panel.GREEN, false); // green hollow rectangle somewhere in the middle
    panel.drawLine(6, 0, 63, 31, panel.WHITE);          // white diagonal through nearly the whole frame
    panel.drawCircle(50, 10, 5, panel.BLUE, false);     // hollow blue circle top right
    panel.drawCircle(11, 25, 5, panel.RED, true);       // filled cyan circle bottom left
    panel.drawEllipse(30, 6, 6, 3, panel.GREEN, false);
    panel.drawEllipse(61, 19, 2, 7, panel.PURPLE, true);
    panel.drawChar(7, 12, 'b', panel.PURPLE);
}

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

void loop()
{
    uint16_t basic_index = 0;
    for (uint8_t y = 0; y < 32; y++) // 32 rows
    {
        sendPWCLKReference();
        // bitness needs to be between 1 and 12, changes sent bitdepth. the lower, the faster
        for (uint8_t bitness = 0; bitness < 4; bitness++)
        {
            basic_index = ((y >> 1) * 16); // advance over 16 led to the next chip (4 led at 2x2 real life led per index in buffer -> 16/4/2=2)

            // we integer divide the screen by 2 and then set 16 led to 8 values in pairs

            // chip 0

            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;

            basic_index += 2;

            // chip 1

            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;

            basic_index += 2;

            // chip 2
            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;

            basic_index += 2;

            // chip 3
            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;

            basic_index += 2;

            // chip 4
            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;

            basic_index += 2;

            // chip 5
            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;

            basic_index += 2;

            // chip 6
            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;

            basic_index += 2;

            // chip 7
            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
            CLOCK;

            //  latch data from shift registers to latch register, "buffer" for global release to pwm
            HIGH_LAT;
            CLOCK;
            CLEAR_LAT;
        }
        SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));

        //  display row once done, so move data from latch registers to pwm modules
        HIGH_LAT;
        CLOCK;
        CLOCK;
        CLEAR_LAT;

        // advance 1 in row once we are done with one
        stepRow();
    }
}