/*
//todo fix
  Panel.h can be used to display stuff on a hub75 panel with up to 32 x 64 pixels
  designed for ARDUINO NANO.

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

// many thanks to LAutour/ElectronicsInFocus for his ESP32-HUB75-MatrixPanel-DMA library, was a great help in getting the initialization to work
// also shout out to sebitimewaster for his implementation on the esp32 as an arduino sketch
// and http://kuku.eu.org/?projects/hub75e/index for reverse engineering the row selection shift registers.
// i also retraced them and came to the same conclusion, so i can be very certain that the chips are equivalent, led drivers and row drivers

// BIGGEST help overall was the stp1612pw05 datasheet, i found this chip and its datasheet after searching for comparable chips
// and it has a full description of everything we need to control those chips

// row shift registers: A-> CLK   B-> OE    C-> SIN

// 4 SM5368 in series, in 2 rows gives the 8 we find on the board. they just shift form 1st to 32nd output, in parallel for bottom and top -> 64 rows total, just like standard hub75

/*
Pin mapping:
A A0,
B A1,
C A2,
D A3,
LAT A4,
R1 2,
G1 3,
B1 4,
R2 5,
G2 6,
B2 7,
CLK A5,
OE 9,
GND GND
*/

// todo replace all here constant definitions with named constants from a namespace

#include <Arduino.h>

#ifndef Panel_hub75e_h
#define Panel_hub75e_h
#ifndef PANEL_NO_BUFFER
/////////////////////
// #define PANEL_BIG  // use 2 bit rgb image buffer
// #define PANEL_CLUT // use 6 bit CLUT image buffer
#define PANEL_ICN_LIKE_CONTROL
// #define PANEL_RGB_FLIPPED_TO_BGR
/////////////////////
#endif
#ifndef PANEL_X
#define PANEL_X 64
#endif
#ifndef PANEL_Y
#define PANEL_Y 32
#endif

#define PANEL_BUFFERSIZE (PANEL_X * PANEL_Y / 8)
#define PANEL_CHUNKSIZE (PANEL_X / 4)

#define MAX_COLORDEPTH 2
#define MAX_COLOR (MAX_COLORDEPTH * MAX_COLORDEPTH - 1)
#define MAX_ITER ((MAX_COLOR + 1) * (MAX_COLOR + 1) * (MAX_COLOR + 1))
#define COLOR_CLAMP (255.0 / (MAX_COLOR))

// ref https://roboticsbackend.com/arduino-fast-digitalwrite/#Using_direct_port_manipulation_instead_of_digitalWrite
// helper definitions
#define high_pin(port, number) port |= 1UL << number
#define toggle_pin(port, number) port ^= 1UL << number
#define clear_pin(port, number) port &= ~(1UL << number)
#define pulse_pin(port, number) \
    high_pin(port, number);     \
    clear_pin(port, number)
#define set_pin(port, number, value) (port = (value << number) | (port & ~(1UL << number)))
#define PORTB_high_pin(number) high_pin(PORTB, number)
#define PORTC_high_pin(number) high_pin(PORTC, number)
#define PORTD_high_pin(number) high_pin(PORTD, number)
#define PORTB_toggle_pin(number) toggle_pin(PORTB, number)
#define PORTC_toggle_pin(number) toggle_pin(PORTC, number)
#define PORTD_toggle_pin(number) toggle_pin(PORTD, number)
#define PORTB_clear_pin(number) clear_pin(PORTB, number)
#define PORTC_clear_pin(number) clear_pin(PORTC, number)
#define PORTD_clear_pin(number) clear_pin(PORTD, number)

// actual pin numbers
#define RA 14  // register selector a
#define RB 15  // register selector b
#define RC 16  // register selector c
#define RD 17  // register selector d
#define RE 18  // register selector d
#define RF 2   // red first byte
#define GF 3   // green first byte
#define BF 4   // blue first byte
#define RS 5   // red second byte
#define GS 6   // green second byte
#define BS 7   // blue second byte
#define LAT 9  // data latch
#define CLK 10 // clock signal
#define OE 11  // output enable

// pin access defines, rows
#define HIGH_RA high_pin(PORTC, 0)
#define CLEAR_RA clear_pin(PORTC, 0)
#define SET_RA(value) set_pin(PORTC, 0, value)
#define HIGH_RB high_pin(PORTC, 1)
#define CLEAR_RB clear_pin(PORTC, 1)
#define SET_RB(value) set_pin(PORTC, 1, value)
#define HIGH_RC high_pin(PORTC, 2)
#define CLEAR_RC clear_pin(PORTC, 2)
#define SET_RC(value) set_pin(PORTC, 2, value)
#define HIGH_RD high_pin(PORTC, 3)
#define CLEAR_RD clear_pin(PORTC, 3)
#define SET_RD(value) set_pin(PORTC, 3, value)
#define HIGH_RE high_pin(PORTC, 4)
#define CLEAR_RE clear_pin(PORTC, 4)
#define SET_RE(value) set_pin(PORTC, 4, value)

// pin access defines, color
#define HIGH_RF high_pin(PORTD, 2)
#define CLEAR_RF clear_pin(PORTD, 2)
#define SET_RF(value) set_pin(PORTD, 2, value)
#define HIGH_GF high_pin(PORTD, 3)
#define CLEAR_GF clear_pin(PORTD, 3)
#define SET_GF(value) set_pin(PORTD, 3, value)
#define HIGH_BF high_pin(PORTD, 4)
#define CLEAR_BF clear_pin(PORTD, 4)
#define SET_BF(value) set_pin(PORTD, 4, value)
#define HIGH_RS high_pin(PORTD, 5)
#define CLEAR_RS clear_pin(PORTD, 5)
#define SET_RS(value) set_pin(PORTD, 5, value)
#define HIGH_GS high_pin(PORTD, 6)
#define CLEAR_GS clear_pin(PORTD, 6)
#define SET_GS(value) set_pin(PORTD, 6, value)
#define HIGH_BS high_pin(PORTD, 7)
#define CLEAR_BS clear_pin(PORTD, 7)
#define SET_BS(value) set_pin(PORTD, 7, value)

// bulk pin access color, only good if pins are in right order
#if RF == 2 and GF == 3 and BF == 4 and RS == 5 and GS == 6 and BS == 7
// set 6 color pins and keep the rx tx pins as are
#define SET_COLOR(value) \
    PORTD = ((value & 63) << 2) | PORTD & 3
#endif

// pin access defines, rest
#define HIGH_LAT high_pin(PORTB, 2)
#define CLEAR_LAT clear_pin(PORTB, 2)
#define SET_LAT(value) set_pin(PORTB, 2, value)
#define HIGH_CLK high_pin(PORTB, 1)
#define CLEAR_CLK clear_pin(PORTB, 1)
#define SET_CLK(value) set_pin(PORTB, 1, value)
#define HIGH_OE high_pin(PORTB, 3)
#define CLEAR_OE clear_pin(PORTB, 3)
#define SET_OE(value) set_pin(PORTB, 3, value)

inline void sendScanLine(uint8_t row)
{
    PORTC = row | PORTC & 224;
}
#define SET_ROW_PINS(row) PORTC = row | PORTC & 240

#define LATCH \
    HIGH_LAT; \
    CLEAR_LAT
#define CLOCK \
    HIGH_CLK; \
    CLEAR_CLK
#define OUTPUT_ENABLE \
    HIGH_OE;          \
    CLEAR_OE
#define LATCH_DATA \
    LATCH;         \
    OUTPUT_ENABLE

#ifdef PANEL_RGB_FLIPPED_TO_BGR
constexpr uint16_t FULL_TO_HIGH_COLOR(uint8_t r, uint8_t g, uint8_t b)
{
    return (((b & 31) << 11) | ((g & 63) << 5) | (r & 31));
}
constexpr uint16_t FULL_TO_HIGH_COLOR_FULL(uint8_t r, uint8_t g, uint8_t b)
{
    return ((int)(((double)b / 255) + 0.5) << 11) | ((int)(((double)g / 255) + 0.5) << 5) | (int)(((double)r / 255) + 0.5);
}
constexpr uint16_t FULL_TO_HIGH_COLOR_CLAMPED(uint8_t r, uint8_t g, uint8_t b)
{
    return ((int)(((double)b / COLOR_CLAMP) + 0.5) << 11) | ((int)(((double)g / COLOR_CLAMP) + 0.5) << 5) | (int)(((double)r / COLOR_CLAMP) + 0.5);
}
constexpr uint16_t FULL_TO_HIGH_COLORF(float r, float g, float b)
{
    return (((int)(b * MAX_COLOR + 0.5f)) << 11) | ((int)((g * MAX_COLOR + 0.5f)) << 5) | (int)((r * MAX_COLOR) + 0.5f);
}
inline void HIGH_TO_FULL_COLOR(uint16_t color, uint8_t *red, uint8_t *green, uint8_t *blue)
{
    *blue = (color >> 11) & 31;
    *green = (color >> 5) & 63;
    *red = color & 31;
}
#else
constexpr uint16_t FULL_TO_HIGH_COLOR(uint8_t r, uint8_t g, uint8_t b)
{
    return (((r & 31) << 11) | ((g & 63) << 5) | (b & 31));
}
constexpr uint16_t FULL_TO_HIGH_COLOR_FULL(uint8_t r, uint8_t g, uint8_t b)
{
    return ((int)(((double)r / 255) + 0.5) << 11) | ((int)(((double)g / 255) + 0.5) << 5) | (int)(((double)b / 255) + 0.5);
}
constexpr uint16_t FULL_TO_HIGH_COLOR_CLAMPED(uint8_t r, uint8_t g, uint8_t b)
{
    return ((int)(((double)r / COLOR_CLAMP) + 0.5) << 11) | ((int)(((double)g / COLOR_CLAMP) + 0.5) << 5) | (int)(((double)b / COLOR_CLAMP) + 0.5);
}
constexpr uint16_t FULL_TO_HIGH_COLORF(float r, float g, float b)
{
    return (((int)(r * MAX_COLOR + 0.5f)) << 11) | ((int)((g * MAX_COLOR + 0.5f)) << 5) | (int)((b * MAX_COLOR) + 0.5f);
}
inline void HIGH_TO_FULL_COLOR(uint16_t color, uint8_t *red, uint8_t *green, uint8_t *blue)
{
    *red = (color >> 11) & 31;
    *green = (color >> 5) & 63;
    *blue = color & 31;
}
#endif

#pragma region icn2053 // icn / fm chip specifics, hub75e with 3 row lines only
#define PREFIX_CLOCK_COUNT 14
#define VSYNC_CLOCK_COUNT 3
#define CHIP_REGISTER_COUNT 5

// clocks 16 times
inline void sendClockSpacer16()
{
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
}

inline void clearPins()
{
    SET_COLOR(0);
    CLEAR_LAT;
    CLEAR_CLK;
    HIGH_OE;
}

inline void sendPWMClock()
{
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    // 10
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    // 20
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    // 30
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    // 40
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    // 50
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    // 60
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    // 70
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    // 80
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    // 90
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    // 100
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    // 110
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    // 120
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    // 130
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    OUTPUT_ENABLE;
    // 138 clocks
}

inline void sendPrefix()
{
    // start latch
    HIGH_LAT;
    // prefix command, 14 clocks
    for (uint8_t i = 0; i < PREFIX_CLOCK_COUNT; i++)
    {
        CLOCK;
    }
    CLEAR_LAT;
}

inline void sendVsync()
{
    // start latch
    HIGH_LAT;
    // prefix command, 14 clocks
    for (uint8_t i = 0; i < VSYNC_CLOCK_COUNT; i++)
    {
        CLOCK;
    }
    CLEAR_LAT;
}

inline void sendLatch(uint8_t clocks)
{
    // start latch
    HIGH_LAT;
    // prefix command, 14 clocks
    for (uint8_t i = 0; i < clocks; i++)
    {
        CLOCK;
    }
    CLEAR_LAT;
}

inline void sendOE(uint8_t clocks)
{
    // start latch
    HIGH_OE;
    for (uint8_t i = 0; i < clocks; i++)
    {
        CLOCK;
    }
    CLEAR_OE;
}

inline void sendRegisterConfig(uint8_t register_index, uint16_t register_data)
{
    // 128 pixels -> 16 led per chip -> 8 chips
    uint8_t i = 0;
    for (i = 0; i < 16; i++)
    {
        SET_COLOR(63 * ((register_data >> i) & 1));
        CLOCK;
    }
    for (i = 0; i < 16; i++)
    {
        SET_COLOR(63 * ((register_data >> i) & 1));
        CLOCK;
    }
    for (i = 0; i < 16; i++)
    {
        SET_COLOR(63 * ((register_data >> i) & 1));
        CLOCK;
    }
    for (i = 0; i < 16; i++)
    {
        SET_COLOR(63 * ((register_data >> i) & 1));
        CLOCK;
    }
    for (i = 0; i < 16; i++)
    {
        SET_COLOR(63 * ((register_data >> i) & 1));
        CLOCK;
    }
    for (i = 0; i < 16; i++)
    {
        SET_COLOR(63 * ((register_data >> i) & 1));
        CLOCK;
    }
    for (i = 0; i < 16; i++)
    {
        SET_COLOR(63 * ((register_data >> i) & 1));
        CLOCK;
    }
    for (i = 0; i < 16; i++)
    {
        SET_COLOR(63 * ((register_data >> i) & 1));
        CLOCK;
        if (register_index == 16 - i)
            HIGH_LAT;
    }
    CLEAR_LAT;
}
// for config register explanation, see https://github.com/LAutour/ESP32-HUB75-MatrixPanel-DMA-ICN2053/blob/main/ESP32-HUB75-MatrixPanel-DMA-leddrivers.h
#pragma endregion
// end specifics

class Panel
{
public:
    Panel();
    void setupHUB75E();
    void selectLine(uint8_t lineIndex);
    void fillScreenShift(uint8_t s, uint8_t f, uint8_t o);
    void fillScreenColor(uint16_t color);
    void fillScreenColor(uint8_t r, uint8_t g, uint8_t b);
    void sendTwoPixels(uint8_t redUpper, uint8_t greenUpper, uint8_t blueUpper, uint8_t redLower, uint8_t greenLower, uint8_t blueLower);
    void sendWholeRow(uint8_t redUpper, uint8_t greenUpper, uint8_t blueUpper, uint8_t redLower, uint8_t greenLower, uint8_t blueLower);
    const uint8_t ICN_INIT_COMMAND_ID[5] = {
        4 /*write config 1*/,
        6 /*write config 2*/,
        8 /*write config 3*/,
        10 /*write config 4*/,
        2 /*write debug config*/,
    };

    const uint16_t ICN_INIT_COMMAND_DATA[5] = {
        4976 /*write config 1*/,
        24027 /*write config 2*/,
        16455 /*write config 3*/,
        3648 /*write config 4*/,
        8 /*write debug config*/,
    };

#ifndef PANEL_NO_BUFFER
    struct LED;
    void setBuffer(uint8_t x, uint8_t y, uint8_t r, uint8_t g, uint8_t b);
    void swapBuffer(const LED *newBuffer, uint8_t bufferLength);
    void displayBuffer();
    void fillBuffer(uint16_t color);
    void drawRect(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint16_t color, bool fill);
    void drawSquare(uint8_t x, uint8_t y, uint8_t size, uint8_t color, bool fill);
    void drawLine(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint16_t color);
    void drawEllipse(uint8_t xm, uint8_t ym, uint8_t a, uint8_t b, uint16_t color, bool fill);
    void drawCircle(uint8_t xm, uint8_t ym, uint8_t radius, uint16_t color, bool fill);
    void drawChar(uint8_t x, uint8_t y, char letter, uint16_t color);
    void drawBigChar(uint8_t x, uint8_t y, char letter, uint16_t color, uint8_t size_modifier);
#endif

#ifndef PANEL_NO_BUFFER
#ifndef PANEL_BIG
#pragma pack(1)
    struct LED
    { // 3 bytes long, contains 8 leds at 1 bit color depth
        uint8_t redUpper1 : 1;
        uint8_t greenUpper1 : 1;
        uint8_t blueUpper1 : 1;
        uint8_t redLower1 : 1;
        uint8_t greenLower1 : 1;
        uint8_t blueLower1 : 1;
        uint8_t redUpper2 : 1;
        uint8_t greenUpper2 : 1;
        uint8_t : 0;
        uint8_t blueUpper2 : 1;
        uint8_t redLower2 : 1;
        uint8_t greenLower2 : 1;
        uint8_t blueLower2 : 1;
        uint8_t redUpper3 : 1;
        uint8_t greenUpper3 : 1;
        uint8_t blueUpper3 : 1;
        uint8_t redLower3 : 1;
        uint8_t : 0;
        uint8_t greenLower3 : 1;
        uint8_t blueLower3 : 1;
        uint8_t redUpper4 : 1;
        uint8_t greenUpper4 : 1;
        uint8_t blueUpper4 : 1;
        uint8_t redLower4 : 1;
        uint8_t greenLower4 : 1;
        uint8_t blueLower4 : 1;
        uint8_t : 0;
    };

#else
#pragma pack(1)
    struct LED
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
    };
#endif
#endif
    enum Colors
    {
        RED = FULL_TO_HIGH_COLOR(255, 0, 0),
        GREEN = FULL_TO_HIGH_COLOR(0, 255, 0),
        BLUE = FULL_TO_HIGH_COLOR(0, 0, 255),
        WHITE = FULL_TO_HIGH_COLOR(255, 255, 255),
        BLACK = FULL_TO_HIGH_COLOR(0, 0, 0),
        PURPLE = FULL_TO_HIGH_COLOR(255, 0, 255),
        YELLOW = FULL_TO_HIGH_COLOR(255, 255, 0),
        CYAN = FULL_TO_HIGH_COLOR(0, 255, 255),
        DARKRED = FULL_TO_HIGH_COLOR(127, 0, 0),
        DARKGREEN = FULL_TO_HIGH_COLOR(0, 127, 0),
        DARKBLUE = FULL_TO_HIGH_COLOR(0, 0, 127),
        DARKWHITE = FULL_TO_HIGH_COLOR(127, 127, 127),
        DARKPURPLE = FULL_TO_HIGH_COLOR(127, 0, 127),
        DARKYELLOW = FULL_TO_HIGH_COLOR(127, 127, 0),
        DARKCYAN = FULL_TO_HIGH_COLOR(0, 127, 127),
        DARKERRED = FULL_TO_HIGH_COLOR(63, 0, 0),
        DARKERGREEN = FULL_TO_HIGH_COLOR(0, 63, 0),
        DARKERBLUE = FULL_TO_HIGH_COLOR(0, 0, 63),
        DARKERWHITE = FULL_TO_HIGH_COLOR(63, 63, 63),
        DARKERPURPLE = FULL_TO_HIGH_COLOR(63, 0, 63),
        DARKERYELLOW = FULL_TO_HIGH_COLOR(63, 63, 0),
        DARKERCYAN = FULL_TO_HIGH_COLOR(0, 63, 63),
    };
    uint8_t rows = 0, coloumns = 0, halfbsize = 0;
    uint8_t lower = 0, row = 0, red = 0, green = 0, blue = 0;
#ifndef PANEL_NO_BUFFER
    LED buffer[PANEL_BUFFERSIZE]; // uses 768 bytes on max size display with 1 bit, 1536 bytes with 2 bits of depth - 2015 bytes of ram used
#endif
};

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
#pragma endregion
#endif
