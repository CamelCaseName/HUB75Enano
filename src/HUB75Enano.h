/*
  Panel_HUB75E.h can be used to display stuff on a hub75e (icnd2153 or clone) panel with row shift registers with 64x128px in either 8 colors, 64 or 4096 colors
  designed for ARDUINO nano.

  (c) Leonhard Seidel, 2023

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 3 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/

// shout out to sebitimewaster for his implementation on the esp32 as an arduino sketch, in the end i rebuilt it all from scratch tho, as none of the available implementations worked.
// also thanks to http://kuku.eu.org/?projects/hub75e/index for reverse engineering the row selection shift registers.
// i also retraced them and came to the same conclusion, so i can be very certain that the chips are equivalent, led drivers and row drivers

// the pwclk is also going through the buffer shift registers so we need to set clock it in with the other stuff.
// it is however split 4 times for each coloumn of drivers. so we must also clock the pwclock with the serial clock, no hardware clock sadly

// BIGGEST help overall was the stp1612pw05 datasheet, i found this chip and its datasheet after searching for comparable chips
// and it has a full description of everything we need to control those chips

// PINs for the row shift registers: A-> CLK   B-> OE    C-> SIN

// 4 SM5368 in series, in 2 rows gives the 8 we find on the board. they just shift form 1st to 32nd output, in parallel for bottom and top -> 64 rows total, just like standard hub75

/*
Pin mapping:
A A0,
C A2,
R1 2,
G1 3,
B1 4,
R2 5,
G2 6,
B2 7,
LAT 9,
CLK 10,
OE 11,
GND GND
*/

#include <Arduino.h>
#include <avr/pgmspace.h>

#ifndef PANEL_HUB75E_H
#define PANEL_HUB75E_H

/////////////////////
// #define PANEL_BIG // use 2 bit rgb image buffer
// #define PANEL_FLASH // 4 bit flash buffer
// #define PANEL_NO_BUFFER //no buffer, immediate mode only
// #define PANEL_GPIO_NON_INTRUSIVE //dont overwrite the other pins in GPIOB
// #define PANEL_SMALL_BRIGHT // much brighter but with ghosting
// #define PANEL_ENABLE_FLASH_EDIT // enables editing the flash during runtime, // NOT YET IMPLEMENTED, MIGHT NEED A CUSTOM BOOTLOADER
// #define PANEL_5_PIN_ROW // switches row adressing from shift registers to direct multiplexed adressing
// #define PANEL_NO_FONT //disables everything font related, saves some flash
// #define PANEL_HIGH_RES //enables high res (single pixel) output in a 64x64 window
/////////////////////

// check we are on uno or nano
#ifndef ARDUINO_AVR_UNO
#ifndef ARDUINO_AVR_NANO
#error "This library only supports the Arduino nano and Uno, so the atm368p with 2kb sram, 1kb eeprom and 32kb flash. For other chips/boards, please see the internet or try to adapt this library here, but no guarantees"
#endif
#endif

#ifndef PANEL_X
#define PANEL_X 64
#endif

#ifndef PANEL_Y
#define PANEL_Y 32
#endif

// safeguard while its not implemented, but most basic support from library side is there
#ifdef PANEL_ENABLE_FLASH_EDIT
#error "Editing the Flash is not yet implemented"
#undef PANEL_ENABLE_FLASH_EDIT
#endif

#ifdef PANEL_NO_BUFFER
#undef PANEL_FLASH
#undef PANEL_BIG
#undef PANEL_SMALL_BRIGHT
#undef PANEL_ENABLE_FLASH_EDIT
#undef PANEL_HIGH_RES
#define PANEL_NO_FONT
#endif

#ifdef PANEL_HIGH_RES
#ifdef PANEL_BIG
#error "The high resolution mode is only available with the flash buffer or 1 bit buffer"
#endif
#endif

#ifdef PANEL_ENABLE_FLASH_EDIT
#ifndef PANEL_FLASH
#undef PANEL_ENABLE_FLASH_EDIT
#endif
#undef PANEL_HIGH_RES // not supported, probably never will b
#endif

#ifdef PANEL_HIGH_RES
#define PANEL_X 64
#define PANEL_Y 64
#endif

#ifdef PANEL_FLASH
#undef PANEL_BIG
#ifdef PANEL_HIGH_RES
// have it bigger a size as we have more available lol
#define PANEL_BUFFERSIZE (PANEL_X * PANEL_Y * 2) // 4 byte per led, we have 6 bit per 2 led per color depth -> about 4k
#else
#define PANEL_BUFFERSIZE (PANEL_X * PANEL_Y * 2) // 4 byte per led, we have 6 bit per 2 led per color depth -> about 4k
#endif
#endif

#ifndef PANEL_BUFFERSIZE
#define PANEL_BUFFERSIZE (PANEL_X * PANEL_Y / 8)
#endif

#ifndef MAX_COLORDEPTH
#ifdef PANEL_BIG
#define MAX_COLORDEPTH 2
#else
#ifdef PANEL_FLASH
#define MAX_COLORDEPTH 4
#else
#ifdef PANEL_NO_BUFFER
#define MAX_COLORDEPTH 8
#else
#define MAX_COLORDEPTH 1
#endif
#endif
#endif
#endif

#define MAX_COLOR (MAX_COLORDEPTH * MAX_COLORDEPTH - 1)
#define COLOR_CLAMP (255.0 / (MAX_COLOR))

// ref https://roboticsbackend.com/arduino-fast-digitalwrite/#Using_direct_port_manipulation_instead_of_digitalWrite
// helper definitions
#define high_pin(port, number) port |= 1 << number
#define clear_pin(port, number) port &= ~(1 << number)

// actual pin numbers
#define RA 14  // register selector a
#define RC 16  // register selector c
#define RF 2   // red first byte
#define GF 3   // green first byte
#define BF 4   // blue first byte
#define RS 5   // red second byte
#define GS 6   // green second byte
#define BS 7   // blue second byte
#define CLK 9  // clock signal
#define LAT 10 // data latch
#define OE 11  // output enable
#ifdef PANEL_5_PIN_ROWS
#define RB 15
#define RD 17
#define RE 18
#endif

// pin access defines, rows
#define HIGH_RA high_pin(PORTC, 0)
#define CLEAR_RA clear_pin(PORTC, 0)
#define HIGH_RC high_pin(PORTC, 2)
#define CLEAR_RC clear_pin(PORTC, 2)
#ifdef PANEL_5_PIN_ROWS
#define HIGH_RB high_pin(PORTC, 1)
#define CLEAR_RB clear_pin(PORTC, 1)
#define HIGH_RD high_pin(PORTC, 3)
#define CLEAR_RD clear_pin(PORTC, 3)
#define HIGH_RE high_pin(PORTC, 4)
#define CLEAR_RE clear_pin(PORTC, 4)
#define SET_ROW(row) \
    PORTC = row & (uint8_t)31 | PORTC & (uint8_t)224
#endif

// bulk pin access color, only good if pins are in right order
#if RF == 2 and GF == 3 and BF == 4 and RS == 5 and GS == 6 and BS == 7
// set 6 color pins and keep the rx tx pins as are
#define SET_COLOR(value) \
    PORTD = ((value & (uint8_t)63) << (uint8_t)2) | PORTD & (uint8_t)3
#else
#error "Please keep the same pin numbering on the color pins, its not fast enough with different pins"
#endif

// pin access defines, rest
#define HIGH_CLK high_pin(PORTB, 1)
#define CLEAR_CLK clear_pin(PORTB, 1)
#define HIGH_LAT high_pin(PORTB, 2)
#define CLEAR_LAT clear_pin(PORTB, 2)
#define HIGH_OE high_pin(PORTB, 3)
#define CLEAR_OE clear_pin(PORTB, 3)

#define PWCLK_GCLK \
    HIGH_CLK;      \
    CLEAR_CLK
#define PWCLK \
    HIGH_OE;  \
    CLEAR_OE;
#ifdef PANEL_GPIO_NON_INTRUSIVE
#define PWCLK_GCLK                          \
    PORTB |= 5 << 1;                        \
    /*turn on clk and oe at the same time*/ \
    PORTB &= ~(5 << 1);                     \
    /*turn off clk and oe at the same time*/
#define LATCH_GCLK PWCLK_GCLK
#else
#define PWCLK_GCLK                                                           \
    PORTB = 5 << (uint8_t)1;                                                 \
    /*turn on clk and oe at the same time, with no regards to other values*/ \
    PORTB = 0;                                                               \
    /*turn off clk and oe at the same time, with no regards to other values*/
#define LATCH_GCLK                                                           \
    PORTB = 7 << (uint8_t)1; /*pin 1, 2 and 3 of byte b*/                    \
    /*turn on clk and oe at the same time, with no regards to other values*/ \
    PORTB = 4; /*pin 2 of byte b*/                                           \
    /*turn off clk and oe at the same time, with no regards to other values*/
#endif

#pragma region color_helpers
inline void HIGH_TO_FULL_COLOR(uint16_t color, uint8_t *red, uint8_t *green, uint8_t *blue)
{
    *blue = (color >> (uint8_t)11) & (uint8_t)31;
    *green = (color >> (uint8_t)5) & (uint8_t)63;
    *red = color & (uint8_t)31;
}

constexpr uint16_t FULL_TO_HIGH_COLOR(uint8_t r, uint8_t g, uint8_t b)
{
    return (((r & (uint8_t)31) << (uint8_t)11) | ((g & (uint8_t)63) << (uint8_t)5) | (b & (uint8_t)31));
}

constexpr uint16_t FULL_TO_HIGH_COLOR_FULL(uint8_t r, uint8_t g, uint8_t b)
{
    return ((int)(((double)r / 8) - 0.5) << (uint8_t)11) | ((int)(((double)g / 4) - 0.5) << (uint8_t)5) | (int)(((double)b / 8) - 0.5);
}

constexpr uint16_t FULL_TO_HIGH_COLOR_CLAMPED(uint8_t r, uint8_t g, uint8_t b)
{
    return ((int)(((double)r / COLOR_CLAMP) + 0.5) << 11) | ((int)(((double)g / COLOR_CLAMP) + 0.5) << 5) | (int)(((double)b / COLOR_CLAMP) + 0.5);
}

constexpr uint16_t FULL_TO_HIGH_COLORF(float r, float g, float b)
{
    return (((int)(r * MAX_COLOR + 0.5f)) << (uint8_t)11) | ((int)((g * MAX_COLOR + 0.5f)) << (uint8_t)5) | (int)((b * MAX_COLOR) + 0.5f);
}
#pragma endregion

#pragma region font
#ifndef PANEL_NO_FONT
// Copyright <2010> <Robey Pointer, https://robey.lag.net/> =========>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of this softwareand associated documentation files(the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and /or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions :
// The above copyright noticeand this permission notice shall be included in all copies or substantial portions of the Software.
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//  Font Definition
const uint8_t font4x6[96][2] PROGMEM = {
    {0x00, 0x00}, /*SPACE*/
    {0x49, 0x08}, /*'!'*/
    {0xb4, 0x00}, /*'"'*/
    {0xbe, 0xf6}, /*'#'*/
    {0x7b, 0x7a}, /*'$'*/
    {0xa5, 0x94}, /*'%'*/
    {0x55, 0xb8}, /*'&'*/
    {0x48, 0x00}, /*'''*/
    {0x29, 0x44}, /*'('*/
    {0x44, 0x2a}, /*')'*/
    {0x15, 0xa0}, /*'*'*/
    {0x0b, 0x42}, /*'+'*/
    {0x00, 0x50}, /*','*/
    {0x03, 0x02}, /*'-'*/
    {0x00, 0x08}, /*'.'*/
    {0x25, 0x90}, /*'/'*/
    {0x76, 0xba}, /*'0'*/
    {0x59, 0x5c}, /*'1'*/
    {0xc5, 0x9e}, /*'2'*/
    {0xc5, 0x38}, /*'3'*/
    {0x92, 0xe6}, /*'4'*/
    {0xf3, 0x3a}, /*'5'*/
    {0x73, 0xba}, /*'6'*/
    {0xe5, 0x90}, /*'7'*/
    {0x77, 0xba}, /*'8'*/
    {0x77, 0x3a}, /*'9'*/
    {0x08, 0x40}, /*':'*/
    {0x08, 0x50}, /*';'*/
    {0x2a, 0x44}, /*'<'*/
    {0x1c, 0xe0}, /*'='*/
    {0x88, 0x52}, /*'>'*/
    {0xe5, 0x08}, /*'?'*/
    {0x56, 0x8e}, /*'@'*/
    {0x77, 0xb6}, /*'A'*/
    {0x77, 0xb8}, /*'B'*/
    {0x72, 0x8c}, /*'C'*/
    {0xd6, 0xba}, /*'D'*/
    {0x73, 0x9e}, /*'E'*/
    {0x73, 0x92}, /*'F'*/
    {0x72, 0xae}, /*'G'*/
    {0xb7, 0xb6}, /*'H'*/
    {0xe9, 0x5c}, /*'I'*/
    {0x64, 0xaa}, /*'J'*/
    {0xb7, 0xb4}, /*'K'*/
    {0x92, 0x9c}, /*'L'*/
    {0xbe, 0xb6}, /*'M'*/
    {0xd6, 0xb6}, /*'N'*/
    {0x56, 0xaa}, /*'O'*/
    {0xd7, 0x92}, /*'P'*/
    {0x76, 0xee}, /*'Q'*/
    {0x77, 0xb4}, /*'R'*/
    {0x71, 0x38}, /*'S'*/
    {0xe9, 0x48}, /*'T'*/
    {0xb6, 0xae}, /*'U'*/
    {0xb6, 0xaa}, /*'V'*/
    {0xb6, 0xf6}, /*'W'*/
    {0xb5, 0xb4}, /*'X'*/
    {0xb5, 0x48}, /*'Y'*/
    {0xe5, 0x9c}, /*'Z'*/
    {0x69, 0x4c}, /*'['*/
    {0x91, 0x24}, /*'\'*/
    {0x64, 0x2e}, /*']'*/
    {0x54, 0x00}, /*'^'*/
    {0x00, 0x1c}, /*'_'*/
    {0x44, 0x00}, /*'`'*/
    {0x0e, 0xae}, /*'a'*/
    {0x9a, 0xba}, /*'b'*/
    {0x0e, 0x8c}, /*'c'*/
    {0x2e, 0xae}, /*'d'*/
    {0x0e, 0xce}, /*'e'*/
    {0x56, 0xd0}, /*'f'*/
    {0x55, 0x3B}, /*'g'*/
    {0x93, 0xb4}, /*'h'*/
    {0x41, 0x44}, /*'i'*/
    {0x41, 0x51}, /*'j'*/
    {0x97, 0xb4}, /*'k'*/
    {0x49, 0x44}, /*'l'*/
    {0x17, 0xb6}, /*'m'*/
    {0x1a, 0xb6}, /*'n'*/
    {0x0a, 0xaa}, /*'o'*/
    {0xd6, 0xd3}, /*'p'*/
    {0x76, 0x67}, /*'q'*/
    {0x17, 0x90}, /*'r'*/
    {0x0f, 0x38}, /*'s'*/
    {0x9a, 0x8c}, /*'t'*/
    {0x16, 0xae}, /*'u'*/
    {0x16, 0xba}, /*'v'*/
    {0x16, 0xf6}, /*'w'*/
    {0x15, 0xb4}, /*'x'*/
    {0xb5, 0x2b}, /*'y'*/
    {0x1c, 0x5e}, /*'z'*/
    {0x6b, 0x4c}, /*'{'*/
    {0x49, 0x48}, /*'|'*/
    {0xc9, 0x5a}, /*'}'*/
    {0x54, 0x00}, /*'~'*/
    {0x56, 0xe2}  /*''*/
};

//<=============================================================================
//
// Copyright <2015> <https://hackaday.io/PK.3>========================>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of this softwareand associated documentation files(the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and /or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions :
// The above copyright noticeand this permission notice shall be included in all copies or substantial portions of the Software.
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
// Font retreival function - ugly, but needed.
// kindly stolen from https://hackaday.io/project/6309-vga-graphics-over-spi-and-serial-vgatonic/log/20759-a-tiny-4x6-pixel-font-that-will-fit-on-almost-any-microcontroller-license-mit#header
inline unsigned char getFontLine(unsigned char data, int line_num)
{
    const uint8_t index = (data - 32);
    unsigned char pixel = 0;
    if (pgm_read_byte(&font4x6[index][1]) & (uint8_t)1 == 1)
        line_num -= 1;
    if (line_num == 0)
    {
        pixel = (pgm_read_byte(&font4x6[index][0])) >> (uint8_t)4;
    }
    else if (line_num == 1)
    {
        pixel = (pgm_read_byte(&font4x6[index][0])) >> (uint8_t)1;
    }
    else if (line_num == 2)
    {
        // Split over 2 bytes
        return (((pgm_read_byte(&font4x6[index][0])) & (uint8_t)0x03) << (uint8_t)2) | (((pgm_read_byte(&font4x6[index][1])) & (uint8_t)0x02));
    }
    else if (line_num == 3)
    {
        pixel = (pgm_read_byte(&font4x6[index][1])) >> (uint8_t)4;
    }
    else if (line_num == 4)
    {
        pixel = (pgm_read_byte(&font4x6[index][1])) >> (uint8_t)1;
    }
    return pixel & (uint8_t)0xE;
} //<=============================================================================
#endif
#pragma endregion // font

class Panel
{
public:
#pragma region constructors
#ifdef PANEL_FLASH
    Panel(PGM_VOID_P buffer_in)
    {
        buffer = buffer_in;
        pinMode(RA, OUTPUT);
        pinMode(RC, OUTPUT);
        pinMode(RF, OUTPUT);
        pinMode(RS, OUTPUT);
        pinMode(GF, OUTPUT);
        pinMode(GS, OUTPUT);
        pinMode(BF, OUTPUT);
        pinMode(BS, OUTPUT);
        pinMode(CLK, OUTPUT);
        pinMode(LAT, OUTPUT);
        pinMode(OE, OUTPUT);
#ifdef PANEL_5_PIN_ROWS
        pinMode(RB, OUTPUT);
        pinMode(RD, OUTPUT);
        pinMode(RE, OUTPUT);
#endif
        /*using pwm on the OE doesnt work, as it also passes through the buffer registers and therefore needs to be in sync with the CLK.
         All data also needs to be in sync with the CLK, so no PWM for the GCLK*/
    }

#else
    Panel()
    {
        pinMode(RA, OUTPUT);
        pinMode(RC, OUTPUT);
        pinMode(CLK, OUTPUT);
        pinMode(RF, OUTPUT);
        pinMode(RS, OUTPUT);
        pinMode(GF, OUTPUT);
        pinMode(GS, OUTPUT);
        pinMode(BF, OUTPUT);
        pinMode(BS, OUTPUT);
        pinMode(LAT, OUTPUT);
        pinMode(OE, OUTPUT);
#ifdef PANEL_5_PIN_ROWS
        pinMode(RB, OUTPUT);
        pinMode(RD, OUTPUT);
        pinMode(RE, OUTPUT);
#endif
    }
#endif

#pragma endregion // constructors

    void fillScreenColor(uint16_t c)
    {
        // fills the screeen with the set color
        // switches all the colors and sets the values depending on colors
        HIGH_TO_FULL_COLOR(c, &red, &green, &blue); // gets first couple colors
        fillScreenColor(red, green, blue);
    }

    void fillScreenColor(uint8_t r, uint8_t g, uint8_t b)
    {
        // todo continue work here building it up, but not top priority
        for (uint8_t y = 0; y < 32; y++) // 32 rows
        {
            // bitness needs to be between 1 and 8, changes sent bitdepth. the lower, the faster
            for (uint8_t bitness = MAX_COLORDEPTH - 1; bitness < MAX_COLORDEPTH; bitness--)
            {
                SET_COLOR((((r >> (uint8_t)bitness) & (uint8_t)1) << (uint8_t)5) | (((g >> (uint8_t)bitness) & (uint8_t)1) << (uint8_t)4) | (((b >> (uint8_t)bitness) & (uint8_t)1) << (uint8_t)3) | (((r >> (uint8_t)bitness) & (uint8_t)1) << (uint8_t)2) | (((g >> (uint8_t)bitness) & (uint8_t)1) << (uint8_t)1) | ((b >> (uint8_t)bitness) & (uint8_t)1));
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;

                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;

                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;

                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;

                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;

                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;

                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;

                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                PWCLK_GCLK;
                if (bitness != 0)
                {
                    PWCLK_GCLK;
                    PWCLK_GCLK;
                }
                //  latch data from shift registers to latch register, "buffer" for global release to pwm
                HIGH_LAT;
                LATCH_GCLK;
                CLEAR_LAT;
            }

            //  display row once done, so move data from latch registers to pwm modules
            HIGH_LAT;
            LATCH_GCLK;
            LATCH_GCLK;
            CLEAR_LAT;

            // advance 1 in row once we are done with one
            stepRow();
        }
    }

#pragma region buffer_specifics

#pragma region led_struct_definition
#ifdef PANEL_BIG
#define LED LED_long
#else
#define LED LED_short
#endif

#pragma pack(1)
    typedef struct LED_short
    { // 3 bytes long, contains 8 leds at 1 bit color depth
        uint8_t redUpperBit1Led1 : 1;
        uint8_t greenUpperBit1Led1 : 1;
        uint8_t blueUpperBit1Led1 : 1;
        uint8_t redLowerBit1Led1 : 1;
        uint8_t greenLowerBit1Led1 : 1;
        uint8_t blueLowerBit1Led1 : 1;
        uint8_t redUpperBit1Led2 : 1;
        uint8_t greenUpperBit1Led2 : 1;
        uint8_t : 0;
        uint8_t blueUpperBit1Led2 : 1;
        uint8_t redLowerBit1Led2 : 1;
        uint8_t greenLowerBit1Led2 : 1;
        uint8_t blueLowerBit1Led2 : 1;
        uint8_t redUpperBit1Led3 : 1;
        uint8_t greenUpperBit1Led3 : 1;
        uint8_t blueUpperBit1Led3 : 1;
        uint8_t redLowerBit1Led3 : 1;
        uint8_t : 0;
        uint8_t greenLowerBit1Led3 : 1;
        uint8_t blueLowerBit1Led3 : 1;
        uint8_t redUpperBit1Led4 : 1;
        uint8_t greenUpperBit1Led4 : 1;
        uint8_t blueUpperBit1Led4 : 1;
        uint8_t redLowerBit1Led4 : 1;
        uint8_t greenLowerBit1Led4 : 1;
        uint8_t blueLowerBit1Led4 : 1;
        uint8_t : 0;
    } LED_short;
#pragma pack(1)
    typedef struct LED_long
    { // 6 bytes long, contains 8 leds at 2 bit color depth
        uint8_t redUpperBit1Led1 : 1;
        uint8_t greenUpperBit1Led1 : 1;
        uint8_t blueUpperBit1Led1 : 1;
        uint8_t redLowerBit1Led1 : 1;
        uint8_t greenLowerBit1Led1 : 1;
        uint8_t blueLowerBit1Led1 : 1;
        uint8_t redUpperBit2Led1 : 1;
        uint8_t greenUpperBit2Led1 : 1;
        uint8_t : 0;
        uint8_t blueUpperBit2Led1 : 1;
        uint8_t redLowerBit2Led1 : 1;
        uint8_t greenLowerBit2Led1 : 1;
        uint8_t blueLowerBit2Led1 : 1;
        uint8_t redUpperBit1Led2 : 1;
        uint8_t greenUpperBit1Led2 : 1;
        uint8_t blueUpperBit1Led2 : 1;
        uint8_t redLowerBit1Led2 : 1;
        uint8_t : 0;
        uint8_t greenLowerBit1Led2 : 1;
        uint8_t blueLowerBit1Led2 : 1;
        uint8_t redUpperBit2Led2 : 1;
        uint8_t greenUpperBit2Led2 : 1;
        uint8_t blueUpperBit2Led2 : 1;
        uint8_t redLowerBit2Led2 : 1;
        uint8_t greenLowerBit2Led2 : 1;
        uint8_t blueLowerBit2Led2 : 1;
        uint8_t : 0;
        uint8_t redUpperBit1Led3 : 1;
        uint8_t greenUpperBit1Led3 : 1;
        uint8_t blueUpperBit1Led3 : 1;
        uint8_t redLowerBit1Led3 : 1;
        uint8_t greenLowerBit1Led3 : 1;
        uint8_t blueLowerBit1Led3 : 1;
        uint8_t redUpperBit2Led3 : 1;
        uint8_t greenUpperBit2Led3 : 1;
        uint8_t : 0;
        uint8_t blueUpperBit2Led3 : 1;
        uint8_t redLowerBit2Led3 : 1;
        uint8_t greenLowerBit2Led3 : 1;
        uint8_t blueLowerBit2Led3 : 1;
        uint8_t redUpperBit1Led4 : 1;
        uint8_t greenUpperBit1Led4 : 1;
        uint8_t blueUpperBit1Led4 : 1;
        uint8_t redLowerBit1Led4 : 1;
        uint8_t : 0;
        uint8_t greenLowerBit1Led4 : 1;
        uint8_t blueLowerBit1Led4 : 1;
        uint8_t redUpperBit2Led4 : 1;
        uint8_t greenUpperBit2Led4 : 1;
        uint8_t blueUpperBit2Led4 : 1;
        uint8_t redLowerBit2Led4 : 1;
        uint8_t greenLowerBit2Led4 : 1;
        uint8_t blueLowerBit2Led4 : 1;
        uint8_t : 0;
    } LED_long;
#pragma endregion // led_struct_definition

#ifdef PANEL_FLASH
    void swapBuffer(PGM_VOID_P newBuffer)
    {
        buffer = newBuffer;
    }
#else
    void swapBuffer(const LED *newBuffer, uint8_t bufferLength)
    {
        memcpy(buffer, newBuffer, bufferLength);
    }
#endif
    void fillBuffer(uint16_t color)
    {
        // get colors
        HIGH_TO_FULL_COLOR(color, &red, &green, &blue);

        // fills the buffer
        for (uint8_t x = 0; x < PANEL_X; x++)
        {
            for (uint8_t y = 0; y < PANEL_X; y++)
            {
                setBuffer(x, y, red, green, blue);
            }
        }
    }

#pragma region buffer_setting_definitions:
    inline void setBuffer(uint8_t x, uint8_t y, uint8_t red_, uint8_t green_, uint8_t blue_)
    {
#ifdef PANEL_BIG
        setBigBuffer(x, y, red_, green_, blue_); // 1 bit buffer in ram
#else
#ifndef PANEL_FLASH
        setSmallBuffer(x, y, red_, green_, blue_); // 2 bit buffer in ram
#else
#ifdef PANEL_ENABLE_FLASH_EDIT
        setFlashBuffer(x, y, red_, green_, blue_);
#endif
#endif
#endif
    }
#pragma endregion // buffer_setting_definitions

#pragma region drawing

    void drawLine(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint16_t color)
    { // draws a line with color between the coords given
      // get colors
        HIGH_TO_FULL_COLOR(color, &red, &green, &blue);

        // calculate both gradients
        int8_t dx = abs(x2 - x1);
        int8_t dy = -abs(y2 - y1);
        // create de-/increment values for walking the line
        int8_t sx = x1 < x2 ? 1 : -1;
        int8_t sy = y1 < y2 ? 1 : -1;
        // error corerction
        float err = dx + dy, e2;
        while (1)
        {
            setBuffer(x1, y1, red, green, blue);
            e2 = 2 * err;
            if (e2 >= dy)
            {
                if (x1 == x2)
                    break;
                err += dy;
                x1 += sx;
            }
            if (e2 <= dx)
            {
                if (y1 == y2)
                    break;
                err += dx;
                y1 += sy;
            }
        }
    }

    void drawEllipse(uint8_t xm, uint8_t ym, uint8_t a, uint8_t b, uint16_t color, bool fill)
    {
        // get colors
        HIGH_TO_FULL_COLOR(color, &red, &green, &blue);

        int8_t x = -a;
        int8_t y = 0; /* II. quadrant from bottom left to top right */
        int16_t a2 = a * a;
        int16_t b2 = b * b;
        int16_t e2 = b * b;
        int16_t err = x * (2 * e2 + x) + e2; /* error of 1.step */

        do
        {
            setBuffer(xm - x, ym + y, red, green, blue); /*   I. Quadrant */
            setBuffer(xm + x, ym + y, red, green, blue); /*  II. Quadrant */
            setBuffer(xm + x, ym - y, red, green, blue); /* III. Quadrant */
            setBuffer(xm - x, ym - y, red, green, blue); /*  IV. Quadrant */
            e2 = 2 * err;
            if (e2 >= (x * 2 + 1) * b2) /* e_xy+e_x > 0 */
                err += (++x * 2 + 1) * b2;
            if (e2 <= (y * 2 + 1) * a2) /* e_xy+e_y < 0 */
                err += (++y * 2 + 1) * a2;
        } while (x <= 0);

        while (y++ < b)
        {                                            /* to early stop of flat ellipses a=1, */
            setBuffer(xm, ym + y, red, green, blue); /* -> finish tip of ellipse */
            setBuffer(xm, ym - y, red, green, blue);
        }

        if (fill)
        {
            while (a > 0)
            {
                drawEllipse(xm, ym, --a, b, color, true);
            }
        }
    }

    void drawCircle(uint8_t xm, uint8_t ym, uint8_t radius, uint16_t color, bool fill)
    {
        // draws a circle at the coords with radius and color
        // get colors
        HIGH_TO_FULL_COLOR(color, &red, &green, &blue);

        int8_t x = -radius;
        int8_t y = 0;
        int8_t new_radius = radius;
        int16_t err = 2 - 2 * radius; // bottom left to top right
        do
        {
            setBuffer(xm - x, ym + y, red, green, blue); //   I. Quadrant +x +y
            setBuffer(xm - y, ym - x, red, green, blue); //  II. Quadrant -x +y
            setBuffer(xm + x, ym - y, red, green, blue); // III. Quadrant -x -y
            setBuffer(xm + y, ym + x, red, green, blue); //  IV. Quadrant +x -y

            new_radius = err;
            if (new_radius <= y)
                err += ++y * 2 + 1;        // e_xy+e_y < 0
            if (new_radius > x || err > y) // e_xy+e_x > 0 or no 2nd y-step
                err += ++x * 2 + 1;        // -> x-step now
        } while (x < 0);

        if (fill) // fill works
        {
            // check if point in circle, then fill
            for (int8_t i = -radius; i < radius; i++)
            {
                for (int8_t j = -radius; j < radius; j++)
                {
                    if (((int16_t)i * i + (int16_t)j * j) < ((radius - 0.5) * (radius - 0.5)))
                    {
                        setBuffer(xm + i, ym + j, red, green, blue);
                    }
                }
            }
        }
    }

    void drawRect(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint16_t color, bool fill)
    {
        // draws a rect filled ro not filled with the given color at coords (landscape, origin in upper left corner)
        // get colors
        HIGH_TO_FULL_COLOR(color, &red, &green, &blue);

        if (fill)
        {
            for (uint8_t i = x1; i <= x2; i++)
            {
                for (uint8_t j = y1; j <= y2; j++)
                {
                    setBuffer(i, j, red, green, blue);
                }
            }
        }
        else
        {
            // left line
            for (uint8_t j = y1; j <= y2; j++)
            {
                setBuffer(x1, j, red, green, blue);
            }

            // right line
            for (uint8_t j = y1; j <= y2; j++)
            {
                setBuffer(x2, j, red, green, blue);
            }

            // top line
            for (uint8_t i = x1; i <= x2; i++)
            {
                setBuffer(i, y1, red, green, blue);
            }

            // bottom line
            for (uint8_t i = x1; i <= x2; i++)
            {
                setBuffer(i, y2, red, green, blue);
            }
        }
    }

    void drawSquare(uint8_t x, uint8_t y, uint8_t size, uint16_t color, bool fill)
    {
        drawRect(x, y, x + size, y + size, color, fill);
    }

#ifndef PANEL_NO_FONT
    void drawChar(uint8_t x, uint8_t y, char letter, uint16_t color)
    {
        // color for the char
        HIGH_TO_FULL_COLOR(color, &red, &green, &blue);
        // iterate through the character line by line
        char out;
        for (uint8_t i = 0; i < 5; i++)
        {
            out = getFontLine(letter, i);
            // iterate through the character bit by bit
            for (uint8_t j = 4; j > 0; --j)
            {
                // shift by j and check for bit set
                if (out & (uint8_t)(1 << (uint8_t)j))
                {
                    // set pixel at i and j
                    setBuffer(x + 4 - j, y + i, red, green, blue);
                }
            }
        }
    }

    void drawBigChar(uint8_t x, uint8_t y, char letter, uint16_t color, uint8_t size_modifier)
    {
        // new with scaling, but may be slower
        // color for the char
        HIGH_TO_FULL_COLOR(color, &red, &green, &blue);

        // iterate through the character line by line
        char out;
        for (uint8_t i = 0; i < 5 * size_modifier; i++)
        {
            out = getFontLine(letter, i / size_modifier);
            // iterate through the character bit by bit
            for (uint8_t j = 4 * size_modifier; j > 0; --j)
            {
                // shift by j and check for bit set
                if (out & (uint8_t)(1 << (uint8_t)(j / size_modifier)))
                {
                    // set pixel at i and j
                    setBuffer(x + 4 * size_modifier - j, y + i, red, green, blue);
                }
            }
        }
    }
#endif
    // todo add drawing methods for
    // - triangle with arbitrary points
    // - triangle with right angle, rotation and side lengths
    // - line with given width

#pragma endregion // drawing

#pragma region color_enum_definition
    enum Colors
    {
        RED = FULL_TO_HIGH_COLOR(3, 0, 0),
        GREEN = FULL_TO_HIGH_COLOR(0, 3, 0),
        BLUE = FULL_TO_HIGH_COLOR(0, 0, 3),
        WHITE = FULL_TO_HIGH_COLOR(3, 3, 3),
        BLACK = FULL_TO_HIGH_COLOR(0, 0, 0),
        PURPLE = FULL_TO_HIGH_COLOR(3, 0, 3),
        YELLOW = FULL_TO_HIGH_COLOR(3, 3, 0),
        CYAN = FULL_TO_HIGH_COLOR(0, 3, 3),
        DARKRED = FULL_TO_HIGH_COLOR(2, 0, 0),
        DARKGREEN = FULL_TO_HIGH_COLOR(0, 2, 0),
        DARKBLUE = FULL_TO_HIGH_COLOR(0, 0, 2),
        DARKWHITE = FULL_TO_HIGH_COLOR(2, 2, 2),
        DARKPURPLE = FULL_TO_HIGH_COLOR(2, 0, 2),
        DARKYELLOW = FULL_TO_HIGH_COLOR(2, 2, 0),
        DARKCYAN = FULL_TO_HIGH_COLOR(0, 2, 2),
        DARKERRED = FULL_TO_HIGH_COLOR(1, 0, 0),
        DARKERGREEN = FULL_TO_HIGH_COLOR(0, 1, 0),
        DARKERBLUE = FULL_TO_HIGH_COLOR(0, 0, 1),
        DARKERWHITE = FULL_TO_HIGH_COLOR(1, 1, 1),
        DARKERPURPLE = FULL_TO_HIGH_COLOR(1, 0, 1),
        DARKERYELLOW = FULL_TO_HIGH_COLOR(1, 1, 0),
        DARKERCYAN = FULL_TO_HIGH_COLOR(0, 1, 1),
    };
#pragma endregion // color_enum_definition

#ifndef PANEL_NO_BUFFER
#ifdef PANEL_BIG
    LED buffer[PANEL_BUFFERSIZE]; // uses 768 bytes on max size display with 1 bit, 1536 bytes with 2 bits of depth
#else
#ifdef PANEL_FLASH
    PGM_VOID_P buffer = 0;
#else
    LED buffer[PANEL_BUFFERSIZE];
#endif
#endif

#pragma region buffer_output_definitions:
    inline void displayBuffer()
    {
        // puts the  buffer contents onto the panel
#ifdef PANEL_BIG
        displayBigBuffer(); // 1 bit buffer in ram
#else
#ifdef PANEL_FLASH
        displayFlashBuffer();                                             // 4 bit buffer in flash
#else
        displaySmallBuffer(); // 2 bit buffer in ram
#endif
#endif
    }
#pragma endregion // buffer_output_definitions
#else
    LED buffer[0];
#endif

private:
    uint8_t row = 0, red, green, blue;

    inline void stepRow()
    {
#ifdef PANEL_5_PIN_ROWS
        SET_ROW(row);
#else
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
#endif
        row = (row + 1) & (uint8_t)31;
    }

#ifndef PANEL_FLASH
    void displaySmallBuffer()
    {
        LED *index = (LED *)&buffer;
        for (uint8_t y = 0; y < 32; y++) // 32 rows
        {
#ifndef PANEL_SMALL_BRIGHT
            stepRow();
#endif

#ifdef PANEL_HIGH_RES
            index = (LED *)(&buffer) + (y << (uint8_t)4); // advance over last row

            // chip 0
            SET_COLOR(0);
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;

            // chip 3
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;

            // chip 4
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;

            // chip 5
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(0);
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

#ifdef PANEL_SMALL_BRIGHT

            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

#else
            PWCLK_GCLK;
            PWCLK_GCLK;

            //  latch data from shift registers to latch register, "buffer" for global release to pwm
            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

            // fake new data so we fill the buffer
#pragma region LSB_fake
            // no need to set color to 0 as it already is

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;
#pragma endregion // LSB_fake
#endif
#else
            index = (LED *)(&buffer) + ((y & (uint8_t)~1) << (uint8_t)3); // advance over last row
            // we integer divide the screen by 2 and then set 16 led to 8 values in pairs

            // chip 0
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index) + sizeof(uint8_t))))) >> (uint8_t)4));
            PWCLK_GCLK;

#ifdef PANEL_SMALL_BRIGHT

            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));

#else
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;

            //  latch data from shift registers to latch register, "buffer" for global release to pwm
            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

            // fake new data so we fill the buffer
#pragma region LSB_fake
            SET_COLOR(0);

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;
#pragma endregion // LSB_fake
#endif
#endif
            //  display row once done, so move data from latch registers to pwm modules
            HIGH_LAT;
            LATCH_GCLK;
            LATCH_GCLK;
            CLEAR_LAT;

#ifdef PANEL_SMALL_BRIGHT
            // advance 1 in row once we are done with one
            stepRow();
#endif
        }
    }

    void displayBigBuffer()
    {
        LED *index = (LED *)&buffer;
        LED *index_keep;
        for (uint8_t y = 0; y < 32; y++) // 32 rows
        {
            // advance 1 in row once we are done with one
            stepRow();

            // we integer divide the screen by 2 and then set 16 led to 8 values in pairs
            // bitness needs to be between 1 and 12, changes sent bitdepth. the lower, the faster
            // advance over 16 led to the next chip (4 led at 2x2 real life led per index in buffer -> 16/4/2=2) so 8 times every second row
            index = (LED *)(&buffer) + ((y & ~1) << 3);
            index_keep = index;

#pragma region MSB
            // chip 0
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;

            // shift data into buffers
            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

#pragma endregion // MSB
            // reset index for new bits
            index = index_keep;

#pragma region MSB
            // chip 0
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR((uint8_t)((*((uint16_t *)(index)) >> (uint8_t)6)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 2))) >> (uint8_t)2));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)))) >> (uint8_t)6));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(index)) + (sizeof(uint8_t) * 5))) >> (uint8_t)2));
            PWCLK_GCLK;

            // shift data into buffers
            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

#pragma endregion // MSB
            // reset index for new bits
            index = index_keep;

#pragma region LSB

            // chip 0
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;

            //  latch data from shift registers to latch register, "buffer" for global release to pwm
            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

#pragma endregion // LSB
            // reset index for new bits
            index = index_keep;

#pragma region LLSB

            // chip 0
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;

            ++index;
            SET_COLOR(*(uint8_t *)(index));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + sizeof(uint8_t)))) >> (uint8_t)4));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(*(((uint8_t *)(index)) + (sizeof(uint8_t) * 3)));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(index)) + (sizeof(uint8_t) * 4)))) >> (uint8_t)4));
            PWCLK_GCLK;

            //  latch data from shift registers to latch register, "buffer" for global release to pwm
            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

#pragma endregion // LLSB

            // fake new data so we fill the buffer
#pragma region LSB_fake
            SET_COLOR(0);

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;
#pragma endregion // LSB_fake
        }
        //  display all leds once done, so move data from latch registers to pwm modules, now with two/four bits of information
        HIGH_LAT;
        LATCH_GCLK;
        LATCH_GCLK;
        CLEAR_LAT;
    }

    void setBigBuffer(uint8_t x, uint8_t y, uint8_t red, uint8_t green, uint8_t blue)
    {
#ifdef PANEL_BIG
        if (y < (PANEL_Y / 2))
        {
            // we are in upper half of pixels
            uint8_t index = (y * PANEL_X + x) / 4;
            switch (x % 4)
            {
            case 0: /*first pixel*/
                buffer[index].redUpperBit1Led1 = red;
                buffer[index].greenUpperBit1Led1 = green;
                buffer[index].blueUpperBit1Led1 = blue;
                buffer[index].redUpperBit2Led1 = red >> (uint8_t)1;
                buffer[index].greenUpperBit2Led1 = green >> (uint8_t)1;
                buffer[index].blueUpperBit2Led1 = blue >> (uint8_t)1;
                break;
            case 1: /*second pixel*/
                buffer[index].redUpperBit1Led2 = red;
                buffer[index].greenUpperBit1Led2 = green;
                buffer[index].blueUpperBit1Led2 = blue;
                buffer[index].redUpperBit2Led2 = red >> (uint8_t)1;
                buffer[index].greenUpperBit2Led2 = green >> (uint8_t)1;
                buffer[index].blueUpperBit2Led2 = blue >> (uint8_t)1;
                break;
            case 2: /*third pixel*/
                buffer[index].redUpperBit1Led3 = red;
                buffer[index].greenUpperBit1Led3 = green;
                buffer[index].blueUpperBit1Led3 = blue;
                buffer[index].redUpperBit2Led3 = red >> (uint8_t)1;
                buffer[index].greenUpperBit2Led3 = green >> (uint8_t)1;
                buffer[index].blueUpperBit2Led3 = blue >> (uint8_t)1;
                break;
            case 3: /*fourth pixel*/
                buffer[index].redUpperBit1Led4 = red;
                buffer[index].greenUpperBit1Led4 = green;
                buffer[index].blueUpperBit1Led4 = blue;
                buffer[index].redUpperBit2Led4 = red >> (uint8_t)1;
                buffer[index].greenUpperBit2Led4 = green >> (uint8_t)1;
                buffer[index].blueUpperBit2Led4 = blue >> (uint8_t)1;
                break;

            default:
                break;
            }
        }
        else
        {
            y -= (PANEL_Y / 2);
            // we are in lower half of pixels
            uint8_t index = (y * PANEL_X + x) / 4;
            switch (x % 4)
            {
            case 0:
                buffer[index].redLowerBit1Led1 = red;
                buffer[index].greenLowerBit1Led1 = green;
                buffer[index].blueLowerBit1Led1 = blue;
                buffer[index].redLowerBit2Led1 = red >> (uint8_t)1;
                buffer[index].greenLowerBit2Led1 = green >> (uint8_t)1;
                buffer[index].blueLowerBit2Led1 = blue >> (uint8_t)1;
                break;
            case 1: /*second pixel*/
                buffer[index].redLowerBit1Led2 = red;
                buffer[index].greenLowerBit1Led2 = green;
                buffer[index].blueLowerBit1Led2 = blue;
                buffer[index].redLowerBit2Led2 = red >> (uint8_t)1;
                buffer[index].greenLowerBit2Led2 = green >> (uint8_t)1;
                buffer[index].blueLowerBit2Led2 = blue >> (uint8_t)1;
                break;
            case 2: /*third pixel*/
                buffer[index].redLowerBit1Led3 = red;
                buffer[index].greenLowerBit1Led3 = green;
                buffer[index].blueLowerBit1Led3 = blue;
                buffer[index].redLowerBit2Led3 = red >> (uint8_t)1;
                buffer[index].greenLowerBit2Led3 = green >> (uint8_t)1;
                buffer[index].blueLowerBit2Led3 = blue >> (uint8_t)1;
                break;
            case 3: /*fourth pixel*/
                buffer[index].redLowerBit1Led4 = red;
                buffer[index].greenLowerBit1Led4 = green;
                buffer[index].blueLowerBit1Led4 = blue;
                buffer[index].redLowerBit2Led4 = red >> (uint8_t)1;
                buffer[index].greenLowerBit2Led4 = green >> (uint8_t)1;
                buffer[index].blueLowerBit2Led4 = blue >> (uint8_t)1;
                break;

            default:
                break;
            }
        }
#endif
    }

    void setSmallBuffer(uint8_t x, uint8_t y, uint8_t red, uint8_t green, uint8_t blue)
    {
#ifndef PANEL_FLASH
        if (y < (PANEL_Y / 2))
        {
            // we are in upper half of pixels
            uint16_t index = ((y * PANEL_X) + x) / 4;
            switch (x % 4)
            {
            case 0: /*first pixel*/
                buffer[index].redUpperBit1Led1 = red;
                buffer[index].greenUpperBit1Led1 = green;
                buffer[index].blueUpperBit1Led1 = blue;
                break;
            case 1: /*second pixel*/
                buffer[index].redUpperBit1Led2 = red;
                buffer[index].greenUpperBit1Led2 = green;
                buffer[index].blueUpperBit1Led2 = blue;
                break;
            case 2: /*third pixel*/
                buffer[index].redUpperBit1Led3 = red;
                buffer[index].greenUpperBit1Led3 = green;
                buffer[index].blueUpperBit1Led3 = blue;
                break;
            case 3: /*fourth pixel*/
                buffer[index].redUpperBit1Led4 = red;
                buffer[index].greenUpperBit1Led4 = green;
                buffer[index].blueUpperBit1Led4 = blue;
                break;

            default:
                break;
            }
        }
        else
        {
            y -= (PANEL_Y / 2);
            // we are in lower half of pixels
            uint16_t index = (y * PANEL_X + x) / 4;
            switch (x % 4)
            {
            case 0: /*first pixel*/
                buffer[index].redLowerBit1Led1 = red;
                buffer[index].greenLowerBit1Led1 = green;
                buffer[index].blueLowerBit1Led1 = blue;
                break;
            case 1: /*second pixel*/
                buffer[index].redLowerBit1Led2 = red;
                buffer[index].greenLowerBit1Led2 = green;
                buffer[index].blueLowerBit1Led2 = blue;
                break;
            case 2: /*third pixel*/
                buffer[index].redLowerBit1Led3 = red;
                buffer[index].greenLowerBit1Led3 = green;
                buffer[index].blueLowerBit1Led3 = blue;
                break;
            case 3: /*fourth pixel*/
                buffer[index].redLowerBit1Led4 = red;
                buffer[index].greenLowerBit1Led4 = green;
                buffer[index].blueLowerBit1Led4 = blue;
                break;

            default:
                break;
            }
        }
#endif
    }

#else

    void displayFlashBuffer()
    {
        uint16_t index = 0;
        for (uint8_t y = 0; y < 32; y++) // 32 rows
        {
            // advance 1 in row once we are done with one
            stepRow();

            // we integer divide the screen by 2 and then set 16 led to 8 values in pairs
            // bitness needs to be between 1 and 12, changes sent bitdepth. the lower, the faster
            // advance over 16 led to the next chip (4 led at 2x2 real life led per index in buffer -> 16/4/2=2) so 8 times every second row

#ifdef PANEL_HIGH_RES
            // we send first the MMSB, then MSB, LSB, LLSB
            index = buffer + (y << (uint8_t)6);

#pragma region MMSB
            // chip 0
            SET_COLOR(0);
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(0);
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // shift data into buffers
            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

#pragma endregion // MMSB

            index = buffer + (y << (uint8_t)6) + (PANEL_BUFFERSIZE / 4);

#pragma region MSB

            // chip 0
            SET_COLOR(0);
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(0);
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // shift data into buffers
            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

#pragma endregion // MSB

            index = buffer + (y << (uint8_t)6) + (PANEL_BUFFERSIZE / 2); // advance index to next section

#pragma region LSB
            // chip 0
            SET_COLOR(0);
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(0);
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // shift data into buffers
            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

#pragma endregion // LSB

            index = buffer + (y << (uint8_t)6) + (PANEL_BUFFERSIZE * 3 / 4); // advance index to next section

#pragma region LLSB

            // chip 0
            SET_COLOR(0);
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(0);
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            // shift data into buffers
            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

#pragma endregion // LLSB

#else
            // we send first the MMSB, then MSB, LSB, LLSB
            index = buffer + ((y & (uint8_t)~1) << (uint8_t)5);

#pragma region MMSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index));
            PWCLK_GCLK;

            // shift data into buffers
            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

#pragma endregion // MMSB

            index = buffer + ((y & (uint8_t)~1) << (uint8_t)5) + (PANEL_BUFFERSIZE / 4);

#pragma region MSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index));
            PWCLK_GCLK;

            // shift data into buffers
            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

#pragma endregion // MSB

            index = buffer + ((y & (uint8_t)~1) << (uint8_t)5) + (PANEL_BUFFERSIZE / 2); // advance index to next section

#pragma region LSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index));
            PWCLK_GCLK;

            // shift data into buffers
            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

#pragma endregion // LSB

            index = buffer + ((y & (uint8_t)~1) << (uint8_t)5) + (PANEL_BUFFERSIZE * 3 / 4); // advance index to next section

#pragma region LLSB
            // chip 0
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 1
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 2
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 3
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 4
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 5
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 6
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;

            // chip 7
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index++));
            PWCLK_GCLK;
            PWCLK_GCLK;
            SET_COLOR(pgm_read_byte(index));
            PWCLK_GCLK;

            // shift data into buffers
            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;

#pragma endregion // LLSB
#endif

#pragma region LSB_fake
            SET_COLOR(0);

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;
            PWCLK_GCLK;

            HIGH_LAT;
            LATCH_GCLK;
            CLEAR_LAT;
#pragma endregion // LSB_fake
        }

        //  display all leds once done, so move data from latch registers to pwm modules, now with two/four bits of information
        HIGH_LAT;
        LATCH_GCLK;
        LATCH_GCLK;
        CLEAR_LAT;
    }

#ifdef PANEL_ENABLE_FLASH_EDIT

    void setFlashBuffer(uint8_t x, uint8_t y, uint8_t red, uint8_t green, uint8_t blue)
    {
        // the SPM instruction (needed for setting flash) is only avaiulable form within the boot section of the atm328p.
        // which is occupied by the bootloader. one way would be to burn a new bootloader that allows us to access this function,
        // but that doesntseem like the most reasonable route.
        // we could also try and reduce the bootloader section somehow using the boot fuses, then place a trampoline there for us?
        // but that seems even worse haha
        // or we just save changes done to the buffer in sram, we get less pixels then tho. but for small adjustements its fine i'd say

        // i'll clock this under todo, adding a high resolution window is first
    }

#endif
#endif
#pragma endregion // buffer_specifics
#endif
};
