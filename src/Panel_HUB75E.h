/*
  Panel_HUB75E.h can be used to display stuff on a hub75e (icnd2153 or clone) panel with row shift registers with 64x128px
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

#ifndef PANEL_HUB75E_H
#define PANEL_HUB75E_H

/////////////////////
// #define PANEL_BIG // use 2 bit rgb image buffer
// #define PANEL_FLASH
// #define PANEL_NO_BUFFER
/////////////////////

#ifndef PANEL_X
#define PANEL_X 64
#endif

#ifndef PANEL_Y
#define PANEL_Y 32
#endif

#define PANEL_BUFFERSIZE (PANEL_X * PANEL_Y / 8)

#define MAX_COLORDEPTH 2
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

// pin access defines, rows
#define HIGH_RA high_pin(PORTC, 0)
#define CLEAR_RA clear_pin(PORTC, 0)
#define SET_RA(value) set_pin(PORTC, 0, value)
#define HIGH_RC high_pin(PORTC, 2)
#define CLEAR_RC clear_pin(PORTC, 2)
#define SET_RC(value) set_pin(PORTC, 2, value)

// bulk pin access color, only good if pins are in right order
#if RF == 2 and GF == 3 and BF == 4 and RS == 5 and GS == 6 and BS == 7
// set 6 color pins and keep the rx tx pins as are
#define SET_COLOR(value) \
    PORTD = ((value & 63) << 2) | PORTD & 3
#endif

// pin access defines, rest
#define HIGH_CLK high_pin(PORTB, 1)
#define CLEAR_CLK clear_pin(PORTB, 1)
#define HIGH_LAT high_pin(PORTB, 2)
#define CLEAR_LAT clear_pin(PORTB, 2)
#define HIGH_OE high_pin(PORTB, 3)
#define CLEAR_OE clear_pin(PORTB, 3)

#define CLOCK \
    HIGH_CLK; \
    CLEAR_CLK
#define PWCLK \
    HIGH_OE;  \
    CLEAR_OE;
#define PWCLK_GCLK                          \
    PORTB |= 5 << 1;                        \
    /*turn on clk and oe at the same time*/ \
    PORTB &= ~(5 << 1);                     \
    /*turn off clk and oe at the same time*/

#pragma region color_helpers
inline void HIGH_TO_FULL_COLOR(uint16_t color, uint8_t *red, uint8_t *green, uint8_t *blue)
{
    *blue = (color >> 11) & 31;
    *green = (color >> 5) & 63;
    *red = color & 31;
}

constexpr uint16_t FULL_TO_HIGH_COLOR(uint8_t r, uint8_t g, uint8_t b)
{
    return (((r & 31) << 11) | ((g & 63) << 5) | (b & 31));
}

constexpr uint16_t FULL_TO_HIGH_COLOR_FULL(uint8_t r, uint8_t g, uint8_t b)
{
    return ((int)(((double)r / 8) - 0.5) << 11) | ((int)(((double)g / 4) - 0.5) << 5) | (int)(((double)b / 8) - 0.5);
}

constexpr uint16_t FULL_TO_HIGH_COLOR_CLAMPED(uint8_t r, uint8_t g, uint8_t b)
{
    return ((int)(((double)r / COLOR_CLAMP) + 0.5) << 11) | ((int)(((double)g / COLOR_CLAMP) + 0.5) << 5) | (int)(((double)b / COLOR_CLAMP) + 0.5);
}

constexpr uint16_t FULL_TO_HIGH_COLORF(float r, float g, float b)
{
    return (((int)(r * MAX_COLOR + 0.5f)) << 11) | ((int)((g * MAX_COLOR + 0.5f)) << 5) | (int)((b * MAX_COLOR) + 0.5f);
}
#pragma endregion

#pragma region font
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
    if (pgm_read_byte(&font4x6[index][1]) & 1 == 1)
        line_num -= 1;
    if (line_num == 0)
    {
        pixel = (pgm_read_byte(&font4x6[index][0])) >> 4;
    }
    else if (line_num == 1)
    {
        pixel = (pgm_read_byte(&font4x6[index][0])) >> 1;
    }
    else if (line_num == 2)
    {
        // Split over 2 bytes
        return (((pgm_read_byte(&font4x6[index][0])) & 0x03) << 2) | (((pgm_read_byte(&font4x6[index][1])) & 0x02));
    }
    else if (line_num == 3)
    {
        pixel = (pgm_read_byte(&font4x6[index][1])) >> 4;
    }
    else if (line_num == 4)
    {
        pixel = (pgm_read_byte(&font4x6[index][1])) >> 1;
    }
    return pixel & 0xE;
} //<=============================================================================
#pragma endregion // font

class Panel
{
public:
    Panel()
    {
        coloumns = PANEL_X;
        rows = PANEL_Y;
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
    }

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
            sendPWCLKReference();
            // bitness needs to be between 1 and 8, changes sent bitdepth. the lower, the faster
            for (uint8_t bitness = 0; bitness < 4; bitness++)
            {
                SET_COLOR((((r >> bitness) & 1) << 5) | (((g >> bitness) & 1) << 4) | (((b >> bitness) & 1) << 3) | (((r >> bitness) & 1) << 2) | (((g >> bitness) & 1) << 1) | ((b >> bitness) & 1));
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;

                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;

                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;

                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;

                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;

                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;

                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;

                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;
                CLOCK;

                //  latch data from shift registers to latch register, "buffer" for global release to pwm
                HIGH_LAT;
                CLOCK;
                CLEAR_LAT;
            }

            //  display row once done, so move data from latch registers to pwm modules
            HIGH_LAT;
            CLOCK;
            CLOCK;
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

    void swapBuffer(const LED *newBuffer, uint8_t bufferLength)
    {
        memcpy(buffer, newBuffer, bufferLength);
    }

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

    void setBuffer(uint8_t x, uint8_t y, uint8_t red, uint8_t green, uint8_t blue)
    {
#ifndef PANEL_BIG
        if (y < (PANEL_Y / 2))
        {
            // we are in upper half of pixels
            uint8_t index = (y * coloumns + x) / 4;
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
            uint8_t index = (y * coloumns + x) / 4;
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
#else
        if (y < (PANEL_Y / 2))
        {
            // we are in upper half of pixels
            uint8_t index = (y * coloumns + x) / 4;
            switch (x % 4)
            {
            case 0: /*first pixel*/
                buffer[index].redUpperBit1Led1 = red;
                buffer[index].greenUpperBit1Led1 = green;
                buffer[index].blueUpperBit1Led1 = blue;
                buffer[index].redUpperBit2Led1 = red >> 1;
                buffer[index].greenUpperBit2Led1 = green >> 1;
                buffer[index].blueUpperBit2Led1 = blue >> 1;
                break;
            case 1: /*second pixel*/
                buffer[index].redUpperBit1Led2 = red;
                buffer[index].greenUpperBit1Led2 = green;
                buffer[index].blueUpperBit1Led2 = blue;
                buffer[index].redUpperBit2Led2 = red >> 1;
                buffer[index].greenUpperBit2Led2 = green >> 1;
                buffer[index].blueUpperBit2Led2 = blue >> 1;
                break;
            case 2: /*third pixel*/
                buffer[index].redUpperBit1Led3 = red;
                buffer[index].greenUpperBit1Led3 = green;
                buffer[index].blueUpperBit1Led3 = blue;
                buffer[index].redUpperBit2Led3 = red >> 1;
                buffer[index].greenUpperBit2Led3 = green >> 1;
                buffer[index].blueUpperBit2Led3 = blue >> 1;
                break;
            case 3: /*fourth pixel*/
                buffer[index].redUpperBit1Led4 = red;
                buffer[index].greenUpperBit1Led4 = green;
                buffer[index].blueUpperBit1Led4 = blue;
                buffer[index].redUpperBit2Led4 = red >> 1;
                buffer[index].greenUpperBit2Led4 = green >> 1;
                buffer[index].blueUpperBit2Led4 = blue >> 1;
                break;

            default:
                break;
            }
        }
        else
        {
            y -= (PANEL_Y / 2);
            // we are in lower half of pixels
            uint8_t index = (y * coloumns + x) / 4;
            switch (x % 4)
            {
            case 0:
                buffer[index].redLowerBit1Led1 = red;
                buffer[index].greenLowerBit1Led1 = green;
                buffer[index].blueLowerBit1Led1 = blue;
                buffer[index].redLowerBit2Led1 = red >> 1;
                buffer[index].greenLowerBit2Led1 = green >> 1;
                buffer[index].blueLowerBit2Led1 = blue >> 1;
                break;
            case 1: /*second pixel*/
                buffer[index].redLowerBit1Led2 = red;
                buffer[index].greenLowerBit1Led2 = green;
                buffer[index].blueLowerBit1Led2 = blue;
                buffer[index].redLowerBit2Led2 = red >> 1;
                buffer[index].greenLowerBit2Led2 = green >> 1;
                buffer[index].blueLowerBit2Led2 = blue >> 1;
                break;
            case 2: /*third pixel*/
                buffer[index].redLowerBit1Led3 = red;
                buffer[index].greenLowerBit1Led3 = green;
                buffer[index].blueLowerBit1Led3 = blue;
                buffer[index].redLowerBit2Led3 = red >> 1;
                buffer[index].greenLowerBit2Led3 = green >> 1;
                buffer[index].blueLowerBit2Led3 = blue >> 1;
                break;
            case 3: /*fourth pixel*/
                buffer[index].redLowerBit1Led4 = red;
                buffer[index].greenLowerBit1Led4 = green;
                buffer[index].blueLowerBit1Led4 = blue;
                buffer[index].redLowerBit2Led4 = red >> 1;
                buffer[index].greenLowerBit2Led4 = green >> 1;
                buffer[index].blueLowerBit2Led4 = blue >> 1;
                break;

            default:
                break;
            }
        }
#endif
    }

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
    { // draws a rect filled ro not filled with the given color at coords (landscape, origin in upper left corner)
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
                if (out & (1 << j))
                {
                    // set pixel at i and j
                    setBuffer(x + 4 - j, y + i, red, green, blue);
                }
            }
        }
    }

    void drawBigChar(uint8_t x, uint8_t y, char letter, uint16_t color, uint8_t size_modifier)
    { // new with scaling, but may be slower
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
                if (out & (1 << j / size_modifier))
                {
                    // set pixel at i and j
                    setBuffer(x + 4 * size_modifier - j, y + i, red, green, blue);
                }
            }
        }
    }

    // todo add drawing methods for
    // - triangle with arbitrary points
    // - triangle with right angle, rotation and side lengths
    // - line with given width

#pragma region color_enum_definition
    enum Colors
    {
        RED = FULL_TO_HIGH_COLOR_FULL(255, 0, 0),
        GREEN = FULL_TO_HIGH_COLOR_FULL(0, 255, 0),
        BLUE = FULL_TO_HIGH_COLOR_FULL(0, 0, 255),
        WHITE = FULL_TO_HIGH_COLOR_FULL(255, 255, 255),
        BLACK = FULL_TO_HIGH_COLOR_FULL(0, 0, 0),
        PURPLE = FULL_TO_HIGH_COLOR_FULL(255, 0, 255),
        YELLOW = FULL_TO_HIGH_COLOR_FULL(255, 255, 0),
        CYAN = FULL_TO_HIGH_COLOR_FULL(0, 255, 255),
        DARKRED = FULL_TO_HIGH_COLOR_FULL(127, 0, 0),
        DARKGREEN = FULL_TO_HIGH_COLOR_FULL(0, 127, 0),
        DARKBLUE = FULL_TO_HIGH_COLOR_FULL(0, 0, 127),
        DARKWHITE = FULL_TO_HIGH_COLOR_FULL(127, 127, 127),
        DARKPURPLE = FULL_TO_HIGH_COLOR_FULL(127, 0, 127),
        DARKYELLOW = FULL_TO_HIGH_COLOR_FULL(127, 127, 0),
        DARKCYAN = FULL_TO_HIGH_COLOR_FULL(0, 127, 127),
        DARKERRED = FULL_TO_HIGH_COLOR_FULL(63, 0, 0),
        DARKERGREEN = FULL_TO_HIGH_COLOR_FULL(0, 63, 0),
        DARKERBLUE = FULL_TO_HIGH_COLOR_FULL(0, 0, 63),
        DARKERWHITE = FULL_TO_HIGH_COLOR_FULL(63, 63, 63),
        DARKERPURPLE = FULL_TO_HIGH_COLOR_FULL(63, 0, 63),
        DARKERYELLOW = FULL_TO_HIGH_COLOR_FULL(63, 63, 0),
        DARKERCYAN = FULL_TO_HIGH_COLOR_FULL(0, 63, 63),
    };
#pragma endregion // color_enum_definition

#ifndef PANEL_NO_BUFFER
    LED buffer[PANEL_BUFFERSIZE]; // uses 768 bytes on max size display with 1 bit, 1536 bytes with 2 bits of depth
#else
    LED buffer[0];
#endif

#pragma region buffer_output_definitions:
    inline void displayBuffer()
    {
        // puts the  buffer contents onto the panel
#ifdef PANEL_BIG
        displayBigBuffer(); // 1 bit buffer in ram
#else
#ifdef PANEL_FLASH
        displayFLashBuffer(); // 4 bit buffer in flash
#else
        displaySmallBuffer(); // 2 bit buffer in ram
#endif
#endif
    }
#pragma endregion // buffer_output_definitions

private:
    uint8_t rows = 0, coloumns = 0, row = 0, red = 0, green = 0, blue = 0;
    inline void stepRow()
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

    inline void sendPWCLKReference()
    {
        // 64 pwclk reference clocks are enough for 5 bit, so also more than enough for 4 bit. why send more than we need...
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
        PWCLK;
    }

    void displaySmallBuffer()
    {
        uint16_t basic_index = 0;
        for (uint8_t y = 0; y < 32; y++) // 32 rows
        {
            sendPWCLKReference();
            // bitness needs to be between 1 and 12, changes sent bitdepth. the lower, the faster

            basic_index = ((y >> 1) * 16); // advance over 16 led to the next chip (4 led at 2x2 real life led per index in buffer -> 16/4/2=2)

            // we integer divide the screen by 2 and then set 16 led to 8 values in pairs

            // chip 0

            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;

            // chip 1

            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;

            // chip 2
            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;

            // chip 3
            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;

            // chip 4
            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;

            // chip 5
            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;

            // chip 6
            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;

            // chip 7
            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;
            CLOCK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));
            CLOCK;
            CLOCK;
            ++basic_index;
            SET_COLOR(*(uint8_t *)(&buffer[basic_index]));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(&buffer[basic_index])) >> 6)));
            CLOCK;
            CLOCK;
            SET_COLOR((uint8_t)((*((uint16_t *)(((uint8_t *)(&buffer[basic_index]) + sizeof(uint8_t))))) >> 4));
            CLOCK;

            //  latch data from shift registers to latch register, "buffer" for global release to pwm
            HIGH_LAT;
            CLOCK;
            CLEAR_LAT;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 2))) >> 2));

            //  display row once done, so move data from latch registers to pwm modules
            HIGH_LAT;
            CLOCK;
            CLOCK;
            CLEAR_LAT;

            // advance 1 in row once we are done with one
            stepRow();
        }
    }

    void displayBigBuffer()
    {
        uint16_t basic_index = 0;
        for (uint8_t y = 0; y < 32; y++) // 32 rows
        {
            // advance 1 in row once we are done with one
            stepRow();

            // we integer divide the screen by 2 and then set 16 led to 8 values in pairs
            // bitness needs to be between 1 and 12, changes sent bitdepth. the lower, the faster
            // advance over 16 led to the next chip (4 led at 2x2 real life led per index in buffer -> 16/4/2=2) so 8 times every second row
            basic_index = ((y & ~1) << 3);

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
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
            PWCLK_GCLK;

            // shift data into buffers
            HIGH_LAT;
            PWCLK_GCLK;
            CLEAR_LAT;

#pragma endregion // MSB
            // reset index for new bits
            basic_index = ((y & ~1) << 3);

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
            PWCLK_GCLK;
            SET_COLOR(((*(((uint8_t *)(&buffer[basic_index])) + (sizeof(uint8_t) * 5))) >> 2));
            PWCLK_GCLK;

            // shift data into buffers
            HIGH_LAT;
            PWCLK_GCLK;
            CLEAR_LAT;

#pragma endregion // MSB
            // reset index for new bits
            basic_index = ((y & ~1) << 3);

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
            PWCLK_GCLK;
            CLEAR_LAT;

#pragma endregion // LSB
            // reset index for new bits
            basic_index = ((y & ~1) << 3);

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
            PWCLK_GCLK;
            CLEAR_LAT;

#pragma endregion // LSB

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
            PWCLK_GCLK;
            CLEAR_LAT;
#pragma endregion // LSB_fake
        }
        //  display all leds once done, so move data from latch registers to pwm modules, now with two/four bits of information
        HIGH_LAT;
        PWCLK_GCLK;
        PWCLK_GCLK;
        CLEAR_LAT;
    }

    void displayFlashBuffer()
    {
    }

#pragma endregion // buffer_specifics
};
#endif
