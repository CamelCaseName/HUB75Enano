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

    // panel.drawRect(0, 1, 0, 1, panel.RED, true);
    // panel.drawRect(4, 0, 4, 0, panel.BLUE, true);
    panel.drawRect(0, 0, 0, 0, panel.WHITE, true);
    // panel.drawRect(63, 31, 63, 31, panel.WHITE, true);
    /*panel.drawRect(0, 0, 5, 10, panel.YELLOW, true);    // yellow filled rectangle top left
    panel.drawRect(25, 16, 29, 23, panel.GREEN, false); // green hollow rectangle somewhere in the middle
    panel.drawLine(6, 0, 63, 31, panel.WHITE);          // white diagonal through nearly the whole frame
    panel.drawCircle(50, 10, 5, panel.BLUE, false);     // hollow blue circle top right
    panel.drawCircle(11, 25, 5, panel.RED, true);       // filled cyan circle bottom left
    panel.drawEllipse(30, 6, 6, 3, panel.GREEN, false);
    panel.drawEllipse(60, 19, 3, 8, panel.PURPLE, true);*/
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
 *
 */

void loop()
{
    sendVsync();
    uint16_t index = 0;
    uint16_t basic_index = 0;
    uint8_t current_pixel = 0;
    for (uint8_t y = 0; y < 32; y++) // 32 rows
    {
        stepRow();
        for (uint8_t bitness = 0; bitness < 12; bitness++)
        {
            // advance 1 in row once we are done with one
            for (uint8_t chip = 0; chip < 8; chip++) // 8 chips
            {
                basic_index = y * 16 + chip * 2; // advance over 16 led to the next chip (4 led at 2x2 real life led per index in buffer -> 16/4/2=2)

                for (uint8_t led = 0; led < 16; led++) // 16 led per chip
                {
                    // we set first pixel of each chip one by one, so we jump over 16 pixels per chip

                    index = basic_index + led / 8;

                    /*
                    switch ((led / 2) & 3) // 2 led are the same, then we advance one, basically (led / 2) % 4
                    {
                    case 0:
                    {
                        current_pixel = *(uint8_t *)(&panel.buffer[index]);
                        break;
                    }
                    case 1:
                    {
                        current_pixel = (uint8_t)((*((uint16_t *)(&panel.buffer[index])) >> 6));
                        break;
                    }
                    case 2:
                    {
                        current_pixel = (uint8_t)((*((uint16_t *)(((uint8_t *)(&panel.buffer[index]) + sizeof(uint8_t))))) >> 4);
                        break;
                    }
                    case 3:
                    {
                        current_pixel = ((*(((uint8_t *)(&panel.buffer[index])) + (sizeof(uint8_t) * 2))) >> 2);
                        break;
                    }
                    }
                    */
                    // todo find out how to confirm the led data to one chip? seems we set the same chip and then iterate by led in blocks over all??
                    if (y < 2 && chip == 0 && led == 1)
                        current_pixel = 9; // blue
                    else
                        current_pixel = 0;

                    // reads color on falling edge it seems?
                    HIGH_CLK;
                    SET_COLOR(current_pixel);
                    CLEAR_CLK;
                    OUTPUT_ENABLE; // todo replace by hardware clock. yeeeesss
                }
            }
            // latch data from shift registers to latch register, "buffer" for global release to pwm
            HIGH_LAT;
            CLOCK;
            CLEAR_LAT;
        }
        // display row once done, so move data from latch registers to pwm modules
        HIGH_LAT;
        CLOCK;
        CLOCK;
        CLEAR_LAT;
    }
}