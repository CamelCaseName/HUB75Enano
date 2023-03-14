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
    panel.setupHUB75E();
    panel.fillBuffer(panel.BLACK);
    panel.drawRect(0, 0, 0, 1, panel.YELLOW, true);
    panel.drawRect(1, 0, 1, 1, panel.BLUE, true);
    panel.drawRect(2, 0, 2, 1, panel.RED, true);
    panel.drawRect(3, 0, 3, 1, panel.GREEN, true);
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
        stepRow();                       // sends 0-N scan lines in every 2 (4 combined) data lines
        for (uint8_t x = 0; x < 16; x++) // 16 chip outputs
        {
            // sendScanLine(y % 2 * 32 / 2 + x); // sends 0-N scan lines in every 2 (4 combined) data lines
            // sendOE(10);
            // sendPWMClock(); // send 138 (16*8 + 10) clock cycles for PWM generation inside the chips
            HIGH_OE;

            basic_index = ((y / 2) * 64 + (x / 2)) / 4;

            for (uint8_t sect = 0; sect < 8; sect++) // 8 chips per panel, left to right
            {
                // we set first pixel of each chip one by one, so we jump over 16 pixels per sect

                index = basic_index + sect * 2;

                // sendOE(16);
                switch (x % 4)
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

                SET_COLOR(current_pixel);
                CLOCK;
                SET_COLOR(current_pixel);
                CLOCK;

                // latch on end of "line" (all 8 chips had 16 bits written to them)
                if (sect == 7)
                {
                    HIGH_LAT;
                    CLEAR_LAT;
                    // oe to low so the outputs toggle on
                    CLEAR_OE;
                    CLOCK;
                    HIGH_OE;
                }
            }
        }
        // panel.displayBuffer(); // makes the buffer visible and the leds all blinky blinky
        //      panel.fillScreenColor(1 << 11 | 0 << 5 | 0);
        //     panel.fillScreenColor(panel.BLUE);
    }
}