#include "Panel_HUB75E.h"

Panel::Panel()
{
    coloumns = PANEL_X;
    rows = PANEL_Y;
    pinMode(RA, OUTPUT);
    pinMode(RB, OUTPUT);
    pinMode(RC, OUTPUT);
    pinMode(RD, OUTPUT);
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

// greatly inspired by https://github.com/SebiTimeWaster/ICN2053_ESP32_LedWall/blob/master/ICN2053_ESP32_LedWall.ino
void Panel::setupHUB75E()
{
    // todo
    clearPins();
    HIGH_OE;
    sendPrefix();
    sendLatch(12);                          // output enable
    sendLatch(3);                           // vsync
    sendPrefix();                           // prefix
    sendRegisterConfig(4, 8048 /*4976*/);   // config register 1
    sendPrefix();                           // prefix
    sendRegisterConfig(6, 65535 /*24027*/); // config register 2
    sendPrefix();                           // prefix
    sendRegisterConfig(8, 16627 /*16455*/); // config register 1
    sendPrefix();                           // prefix
    sendRegisterConfig(10, 0 /*3648*/);     // config register 2
    sendPrefix();                           // prefix
    sendRegisterConfig(2, 0 /*8*/);         // config register 2
    CLEAR_OE;
}

#ifndef PANEL_NO_BUFFER
void Panel::swapBuffer(const LED *newBuffer, uint8_t bufferLength)
{
    memcpy(buffer, newBuffer, bufferLength);
}
#endif

void Panel::fillScreenColor(uint16_t c)
{ // fills the screeen with the set color
    // switches all the colors and sets the values depending on colors
    HIGH_TO_FULL_COLOR(c, &red, &green, &blue); // gets first couple colors
    // TODO
}

void Panel::fillScreenColor(uint8_t r, uint8_t g, uint8_t b)
{
    // TODO
}

#ifndef PANEL_NO_BUFFER
void Panel::fillBuffer(uint16_t color)
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

void Panel::setBuffer(uint8_t x, uint8_t y, uint8_t red, uint8_t green, uint8_t blue)
{
#ifndef PANEL_BIG
    if (y < (PANEL_Y / 2))
    {
        // we are in upper half of pixels
        uint8_t index = (y * coloumns + x) / 4;
        switch (x % 4)
        {
        case 0: /*first pixel*/
            buffer[index].redUpper1 = red;
            buffer[index].greenUpper1 = green;
            buffer[index].blueUpper1 = blue;
            break;
        case 1: /*second pixel*/
            buffer[index].redUpper2 = red;
            buffer[index].greenUpper2 = green;
            buffer[index].blueUpper2 = blue;
            break;
        case 2: /*third pixel*/
            buffer[index].redUpper3 = red;
            buffer[index].greenUpper3 = green;
            buffer[index].blueUpper3 = blue;
            break;
        case 3: /*fourth pixel*/
            buffer[index].redUpper4 = red;
            buffer[index].greenUpper4 = green;
            buffer[index].blueUpper4 = blue;
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
            buffer[index].redLower1 = red;
            buffer[index].greenLower1 = green;
            buffer[index].blueLower1 = blue;
            break;
        case 1: /*second pixel*/
            buffer[index].redLower2 = red;
            buffer[index].greenLower2 = green;
            buffer[index].blueLower2 = blue;
            break;
        case 2: /*third pixel*/
            buffer[index].redLower3 = red;
            buffer[index].greenLower3 = green;
            buffer[index].blueLower3 = blue;
            break;
        case 3: /*fourth pixel*/
            buffer[index].redLower4 = red;
            buffer[index].greenLower4 = green;
            buffer[index].blueLower4 = blue;
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

void Panel::displayBuffer()
{ // puts the  buffer contents onto the panel
#ifndef PANEL_BIG
// TODO
#else

#endif
}

void Panel::drawLine(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint16_t color)
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

void Panel::drawEllipse(uint8_t xm, uint8_t ym, uint8_t a, uint8_t b, uint16_t color, bool fill)
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

void Panel::drawCircle(uint8_t xm, uint8_t ym, uint8_t radius, uint16_t color, bool fill)
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

void Panel::drawRect(uint8_t x1, uint8_t y1, uint8_t x2, uint8_t y2, uint16_t color, bool fill)
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

void Panel::drawSquare(uint8_t x, uint8_t y, uint8_t size, uint8_t color, bool fill)
{
    drawRect(x, y, x + size, y + size, color, fill);
}

void Panel::drawChar(uint8_t x, uint8_t y, char letter, uint16_t color)
{ // deprecated, but probably faster
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

void Panel::drawBigChar(uint8_t x, uint8_t y, char letter, uint16_t color, uint8_t size_modifier)
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
#endif // PANEL_NO_BUFFER

// todo add drawing methods for
// - triangle with arbitrary points
// - triangle with right angle, rotation and side lengths
// - line with given width