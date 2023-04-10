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

/*
 * theoretical order of operations:
 * - select row with shift register (set clear of row shift regs when we are in 0, at row 1 put 1 at A and clock for each row, the 1 will "travel down" all rows)
 * - OE low to enable data in with falling edge
 * - clock in data(16 bit) for one chip, then the next until all chips have one LED word in them
 * - Latch the led word in the chips from reg1 via the latch to reg2
 * - oe high to output the one led from each chip
 * - repeat the serial input, latch and OE for all 16 LED per chip -> 16 LED * 8 chips = 128 LED per row
 * - repeat the row selection and all chip stuff 32 times, each row accesses upper and lower half at once
 * -> 32 * 2 rows = 64 rows of 128 LED
 */

// interesting findings from tracing the pcb:
// - the OE/PWCLK is also buffered via the serial in serial out buffer chips,
// but split 4 times for each coloumn of drivers. so we must also clock the pwclock with the serial clock, no hardware clock sadly

void loop()
{
    uint16_t basic_index = 0;
    for (uint8_t y = 0; y < 32; y++) // 32 rows
    {
        stepRow();
        // bitness needs to be between 1 and 12, changes sent bitdepth. the lower, the faster
        for (uint8_t bitness = 0; bitness < 2; bitness++)
        {
            // advance 1 in row once we are done with one
            // todo: first 2 led, so first buffer entry are swallowed somewhere

            basic_index = ((y >> 1) * 16); // advance over 16 led to the next chip (4 led at 2x2 real life led per index in buffer -> 16/4/2=2)

            // chip 0
            for (uint8_t led = 0; led < 16; led++) // 16 led per chip
            {
                // todo simplify access code when using sram, we can then store bytes directly and dont need to shift and offset so much
                switch (led / 2) // 2 led are the same, then we advance one, basically (led / 2) % 4
                {
                case 0:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
                    break;
                }
                case 1:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
                    break;
                }
                case 2:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 3:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                case 4:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
                    break;
                }
                case 5:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
                    break;
                }
                case 6:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 7:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                }
                CLOCK;
            }
            basic_index += 2;
            // chip 1
            for (uint8_t led = 0; led < 16; led++) // 16 led per chip
            {
                switch (led / 2) // 2 led are the same, then we advance one, basically (led / 2) % 4
                {
                case 0:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
                    break;
                }
                case 1:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
                    break;
                }
                case 2:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 3:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                case 4:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
                    break;
                }
                case 5:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
                    break;
                }
                case 6:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 7:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                }
                CLOCK;
            }
            basic_index += 2;
            // chip 2
            for (uint8_t led = 0; led < 16; led++) // 16 led per chip
            {
                switch (led / 2) // 2 led are the same, then we advance one, basically (led / 2) % 4
                {
                case 0:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
                    break;
                }
                case 1:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
                    break;
                }
                case 2:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 3:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                case 4:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
                    break;
                }
                case 5:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
                    break;
                }
                case 6:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 7:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                }
                CLOCK;
            }
            basic_index += 2;
            // chip 3
            for (uint8_t led = 0; led < 16; led++) // 16 led per chip
            {
                switch (led / 2) // 2 led are the same, then we advance one, basically (led / 2) % 4
                {
                case 0:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
                    break;
                }
                case 1:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
                    break;
                }
                case 2:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 3:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                case 4:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
                    break;
                }
                case 5:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
                    break;
                }
                case 6:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 7:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                }
                CLOCK;
            }
            basic_index += 2;
            // chip 4
            for (uint8_t led = 0; led < 16; led++) // 16 led per chip
            {
                switch (led / 2) // 2 led are the same, then we advance one, basically (led / 2) % 4
                {
                case 0:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
                    break;
                }
                case 1:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
                    break;
                }
                case 2:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 3:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                case 4:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
                    break;
                }
                case 5:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
                    break;
                }
                case 6:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 7:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                }
                CLOCK;
            }
            basic_index += 2;
            // chip 5
            for (uint8_t led = 0; led < 16; led++) // 16 led per chip
            {
                switch (led / 2) // 2 led are the same, then we advance one, basically (led / 2) % 4
                {
                case 0:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
                    break;
                }
                case 1:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
                    break;
                }
                case 2:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 3:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                case 4:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
                    break;
                }
                case 5:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
                    break;
                }
                case 6:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 7:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                }
                CLOCK;
            }
            basic_index += 2;
            // chip 6
            for (uint8_t led = 0; led < 16; led++) // 16 led per chip
            {
                switch (led / 2) // 2 led are the same, then we advance one, basically (led / 2) % 4
                {
                case 0:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
                    break;
                }
                case 1:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
                    break;
                }
                case 2:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 3:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                case 4:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
                    break;
                }
                case 5:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
                    break;
                }
                case 6:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 7:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                }
                CLOCK;
            }
            basic_index += 2;
            // chip 7
            for (uint8_t led = 0; led < 15; led++) // 16 led per chip
            {
                switch (led / 2) // 2 led are the same, then we advance one, basically (led / 2) % 4
                {
                case 0:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index]));
                    break;
                }
                case 1:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index])) >> 6)));
                    break;
                }
                case 2:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 3:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                case 4:
                {
                    SET_COLOR(*(uint8_t *)(&panel.buffer[basic_index + 1]));
                    break;
                }
                case 5:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(&panel.buffer[basic_index + 1])) >> 6)));
                    break;
                }
                case 6:
                {
                    SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[basic_index + 1]) + sizeof(uint8_t))))) >> 4));
                    break;
                }
                case 7:
                {
                    SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));
                    break;
                }
                }
                CLOCK;
            }
            //  latch data from shift registers to latch register, "buffer" for global release to pwm
            HIGH_LAT;
            CLOCK;
            CLEAR_LAT;
        }
        // SET_COLOR(((*(((uint8_t *)(&panel.buffer[basic_index + 1])) + (sizeof(uint8_t) * 2))) >> 2));

        //  display row once done, so move data from latch registers to pwm modules
        HIGH_LAT;
        CLOCK;
        CLOCK;
        CLEAR_LAT;
    }
}