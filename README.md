# What is this HUB75Enano
This library is a rewrite of the [HUB75nano](https://github.com/CamelCaseName/HUB75nano) for the Arduino Nano/Uno, done in a way where it can now work with ICND2153, STP1612PW05, and similar chipsets where row addressing is done with 4 8bit shift registers. This library only supports 128x64 pixel panels using one of the mentioned or similar chipsets. Biggest limitation is the tiny 2kB SRAM of the ATM368p, it just barely fits enough pixels in there :D.  

# Usage
To use this library, either aqcuire it using the Arduino Library Manager or download the repository as a zip file, then place itin your custom library folder. Some examples are provided, see the examples folder or the examples section in the Arduino IDE.

# How to connect your panel to the nano
Here is a table describing the pin, and what it is used for. You should connect at least one ground wire.
| HUB75E Connector | arduino pin |
| ---------------- | ----------- |
| R1               | D2          |
| G1               | D3          |
| B1               | D4          |
| GND              | GND/n.C     |
| R2               | D5          |
| G2               | D6          |
| B2               | D7          |
| n.C              | A4          |
| A                | A0          |
| n.C              | A1          |
| C                | A2          |
| n.C              | A3          |
| CLK              | D9          |
| LAT              | D10         |
| OE               | D11         |
| GND              | GND/n.C     |

If your panel actually uses all A,B,C,D and E pins for row adressing, but your chipset is compatible, you may `#define` the `PANEL_5_PIN_ROWS` constant and use it that way.

# Settings
The panel has some different modes of operation and ways of configuring it, see the table below
| Constant name            | function                                                                                                                                    | default | more info                                                                                                                                                                                  |
| ------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| PANEL_X                  | defines the internal width of the buffer for the panel, don't change or things can break.                                                   | 64      | Note: not the actual size of the panel, as it turns 2x2 real pixels into one for disply/output                                                                                             |
| PANEL_Y                  | defines the internal height of the buffer for the panel, don't change or else things can break.                                             | 32      | Note: not the actual size of the panel, as it turns 2x2 real pixels into one for disply/output                                                                                             |
| PANEL_BIG                | Provides a 2bit rgb buffer for the panel in SRAM.                                                                                           | -       | Utilizes about 1.6kB of the 2Kb RAM                                                                                                                                                        |
| PANEL_FLASH              | Provides a 4bit rgb buffer for the panel in Flasj.                                                                                          | -       | Each image in Flash utilizes exactly 4 bytes, the output function takes about 13Kb. utilizes nearly no SRAM.                                                                               |
| PANEL_NO_BUFFER          | No buffer, immediate mode only. Useful if you only want to use the Panel in a single color, you get many CPU cycles and nearly all ram back | -       |                                                                                                                                                                                            |
| PANEL_GPIO_NON_INTRUSIVE | Changes some functions so the library doesn't overwrite the other pins in GPIOB/PORTB                                                       | -       | By default, the whole PORTB (D8-D13) are set at once and are unusable, even though we need only D9-11. Enabling this increases the filesize by some 6kB and reduces the Panel refresh rate |
| PANEL_SMALL_BRIGHT       | The display appears much brighter but it has some slight ghosting in black areas                                                            | -       |
| PANEL_ENABLE_FLASH_EDIT  | Enables editing the flash during runtime, but occupies about .5kb more flash doing so                                                       | -       |
| PANEL_5_PIN_ROW          | Switches row adressing from shift registers to direct multiplexed adressing                                                                 | -       | Activate this when your panel chips match the ones for this library, but your row adressing doesn't work/doesn't use shift registers but demultiplexers                                    |
| PANEL_NO_FONT            | Removes all font related things from the compilation, can save flash space                                                                  | -       |                                                                                                                                                                                            |

# Example
This here is the small buffer example.
```cpp
// uncomment the line below to increase the brightness of the image, will poroduce some minor ghosting then though.
// #define PANEL_SMALL_BRIGHT
#include <Arduino.h>
// inlcude the library
#include "HUB75Enano.h"

// create an instance of the panel
Panel panel = {};

// runs once, we set up the image here
void setup()
{
    // draws the shapes onto the buffer, which is then displayed on the led matrix
    // panel.fillBuffer(panel.BLACK);
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
}

// runs forever after setup
void loop()
{
    // output the buffer to the screen in a loop
    panel.displayBuffer();
}
```