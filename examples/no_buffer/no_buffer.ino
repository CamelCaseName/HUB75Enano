// disable any buffer
#define PANEL_NO_BUFFER
// include the arduino library as ususal
#include <Arduino.h>
// inlcude the library
#include "HUB75Enano.h"

// create an instance of the panel
Panel panel = {};
uint8_t phase;
uint16_t iteration;

// our color look up table, generated by wolframalpha using
//  > table[min(max(round(sin(0.0246399424x)*255),0),255),{x,0, 255}]
const uint8_t sine[129] = {0, 6, 13, 19, 25, 31, 38, 44, 50, 56, 62, 68, 74, 80, 86, 92, 98, 104, 109, 115, 121, 126, 132, 137, 142, 147, 152, 157, 162, 167, 172, 176, 181, 185, 190, 194, 198, 202, 205, 209, 213, 216, 219, 222, 225, 228, 231, 234, 236, 238, 241, 243, 244, 246, 248, 249, 250, 251, 252, 253, 254, 254, 255, 255, 255, 255, 255, 254, 254, 253, 252, 251, 250, 248, 247, 245, 243, 242, 239, 237, 235, 232, 230, 227, 224, 221, 218, 214, 211, 207, 203, 200, 196, 192, 187, 183, 179, 174, 169, 165, 160, 155, 150, 145, 140, 134, 129, 123, 118, 112, 107, 101, 95, 89, 83, 77, 71, 65, 59, 53, 47, 41, 34, 28, 22, 16, 9, 3, 0};

// runs once, we dont need anything here
void setup()
{
}

// runs forever after setup
void loop()
{
    // cycle through the rainbow colors and put them onto the display.
    ++iteration;
    // advance the phase so the colors shift
    phase = iteration / 32;
    // set the screen to our color
    panel.fillScreenColor(sine[min(phase, 128)], sine[min((uint8_t)(phase + 85), 128)], sine[min((uint8_t)(phase + 170), 128)]);
}