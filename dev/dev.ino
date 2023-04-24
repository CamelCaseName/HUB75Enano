#define PANEL_FLASH
// #define PANEL_BIG
// #define PANEL_GPIO_NON_INTRUSIVE
// #define PANEL_NO_BUFFER
// #define PANEL_SMALL_BRIGHT
#include "Panel_HUB75E.h"
#include <Arduino.h>

// create an instance of the panel
#ifdef PANEL_FLASH
const unsigned char buffer[4096] PROGMEM = {

    0, 0, 0, 0, 24, 27, 27, 3, 27, 24, 32, 0, 3, 6, 3, 4, 4, 36, 36, 6, 6, 6, 6, 54, 4, 4, 6, 6, 6, 6, 6, 6, 6, 30, 30, 6, 4, 6, 30, 30, 30, 6, 30, 30, 30, 30, 30, 6, 30, 28, 4, 4, 4, 4, 30, 27, 24, 3, 0, 0, 24, 24, 24, 24,
    0, 0, 0, 24, 0, 0, 0, 24, 27, 3, 38, 3, 6, 4, 36, 4, 4, 36, 4, 36, 4, 4, 6, 30, 54, 6, 6, 4, 6, 6, 4, 7, 6, 28, 7, 4, 6, 4, 6, 6, 6, 7, 6, 30, 30, 28, 6, 6, 6, 30, 30, 6, 4, 4, 28, 30, 3, 6, 3, 0, 0, 24, 24, 24,
    0, 0, 0, 0, 0, 0, 3, 0, 0, 2, 35, 6, 3, 4, 4, 4, 4, 4, 4, 4, 4, 6, 4, 4, 30, 60, 6, 7, 4, 4, 7, 4, 4, 6, 4, 4, 4, 4, 4, 4, 6, 4, 7, 7, 30, 6, 4, 6, 6, 6, 6, 4, 6, 4, 4, 4, 4, 6, 6, 3, 3, 0, 24, 0,
    0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 6, 4, 4, 4, 4, 4, 6, 6, 4, 36, 6, 4, 6, 6, 6, 24, 54, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6, 4, 6, 7, 6, 6, 6, 6, 4, 4, 6, 6, 6, 6, 4, 4, 6, 0, 6, 0, 3, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 3, 4, 4, 4, 36, 36, 6, 6, 38, 36, 4, 6, 6, 6, 0, 6, 24, 52, 6, 6, 4, 6, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 6, 4, 4, 6, 3, 3, 0, 0, 0,
    0, 0, 3, 0, 3, 3, 3, 3, 3, 3, 6, 3, 4, 4, 36, 52, 4, 6, 38, 52, 6, 4, 4, 6, 6, 6, 6, 30, 62, 6, 6, 6, 6, 4, 6, 4, 4, 4, 4, 4, 4, 4, 4, 7, 7, 6, 6, 4, 4, 4, 4, 6, 6, 6, 6, 6, 4, 4, 3, 6, 0, 0, 3, 0,
    0, 0, 0, 3, 3, 3, 3, 3, 6, 6, 6, 4, 4, 4, 36, 36, 6, 4, 6, 36, 4, 4, 4, 0, 6, 4, 6, 6, 24, 54, 0, 6, 6, 7, 6, 6, 6, 6, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 6, 4, 6, 4, 4, 4, 4, 3, 3, 0, 0,
    0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 6, 3, 4, 4, 4, 0, 4, 4, 4, 4, 4, 6, 0, 6, 0, 6, 6, 6, 6, 0, 6, 6, 7, 6, 6, 6, 7, 6, 6, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 6, 4, 4, 4, 4, 4, 0, 6, 3, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 3, 6, 3, 0, 3, 4, 0, 0, 0, 0, 4, 0, 4, 4, 4, 4, 6, 6, 4, 6, 6, 6, 6, 6, 6, 4, 6, 6, 6, 4, 4, 4, 4, 4, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 4, 4, 4, 6, 6, 6, 4, 4, 4, 4, 6, 3,
    0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 4, 4, 4, 0, 0, 0, 48, 52, 0, 32, 51, 52, 4, 4, 4, 0, 4, 0, 7, 6, 6, 6, 0, 6, 0, 6, 4, 6, 3, 3, 0, 3, 6, 4, 6, 6, 6, 4, 6, 6, 6, 4, 4, 6, 6, 6, 6, 4, 6, 4, 4, 3, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 28, 24, 0, 0, 0, 52, 4, 0, 0, 28, 52, 4, 4, 4, 0, 4, 4, 4, 6, 4, 4, 0, 4, 4, 6, 3, 0, 0, 3, 0, 3, 4, 4, 6, 6, 6, 6, 4, 6, 6, 4, 6, 6, 4, 6, 6, 4, 4, 4, 3, 3, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 0, 0, 0, 4, 0, 0, 0, 0, 0, 4, 28, 48, 4, 4, 4, 4, 4, 4, 4, 4, 6, 4, 6, 3, 3, 0, 0, 0, 3, 0, 6, 4, 6, 4, 6, 6, 6, 4, 4, 6, 4, 6, 6, 6, 4, 6, 4, 4, 6, 3, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 6, 0, 6, 0, 0, 3, 0, 0, 0, 3, 3, 0, 6, 4, 6, 4, 4, 4, 4, 6, 3, 6, 4, 6, 6, 6, 4, 4, 4, 4, 6, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 20, 6, 4, 6, 6, 0, 6, 0, 0, 3, 0, 3, 0, 0, 0, 3, 3, 0, 3, 3, 4, 4, 0, 6, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 6, 0,
    0, 0, 0, 0, 16, 48, 0, 16, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 6, 0, 3, 0, 0, 0, 3, 0, 3, 3, 0, 3, 0, 3, 3, 3, 0, 0, 3, 3, 3, 3, 3, 4, 3, 3, 3, 4, 4, 3, 4, 4,
    0, 0, 16, 0, 19, 3, 51, 0, 3, 3, 4, 0, 0, 0, 4, 0, 0, 4, 4, 0, 0, 0, 0, 6, 0, 0, 0, 48, 16, 0, 48, 0, 16, 51, 3, 0, 0, 0, 3, 3, 19, 0, 3, 3, 3, 3, 3, 0, 3, 3, 0, 0, 0, 0, 3, 3, 3, 0, 0, 0, 3, 3, 3, 3,

    25, 25, 25, 25, 3, 0, 0, 8, 36, 3, 3, 35, 0, 37, 36, 38, 6, 54, 6, 5, 5, 5, 37, 61, 30, 31, 31, 29, 29, 30, 30, 30, 14, 7, 39, 15, 30, 31, 7, 6, 6, 29, 5, 5, 6, 5, 5, 13, 5, 38, 30, 30, 30, 30, 5, 0, 3, 24, 27, 11, 1, 3, 3, 1,
    9, 27, 27, 1, 27, 27, 27, 3, 0, 24, 5, 32, 5, 38, 6, 38, 6, 6, 7, 6, 30, 30, 5, 5, 62, 30, 29, 30, 31, 31, 30, 14, 5, 6, 14, 7, 13, 31, 15, 31, 31, 30, 29, 5, 5, 7, 13, 14, 14, 38, 5, 29, 31, 31, 6, 5, 24, 29, 8, 11, 11, 33, 1, 33,
    9, 25, 25, 27, 25, 27, 24, 27, 27, 25, 4, 37, 4, 6, 6, 6, 6, 6, 30, 39, 30, 29, 30, 30, 7, 54, 31, 30, 30, 30, 14, 6, 30, 13, 6, 6, 14, 14, 7, 14, 29, 30, 30, 14, 7, 13, 14, 13, 13, 13, 29, 30, 29, 30, 30, 30, 30, 13, 29, 8, 8, 11, 35, 25,
    11, 11, 27, 27, 27, 24, 24, 24, 24, 28, 29, 38, 6, 6, 6, 6, 5, 15, 30, 54, 29, 30, 29, 29, 29, 0, 61, 30, 31, 14, 14, 6, 14, 14, 6, 14, 6, 8, 14, 6, 14, 29, 14, 31, 14, 30, 14, 13, 29, 14, 30, 30, 30, 29, 13, 31, 30, 29, 27, 29, 27, 24, 25, 25,
    9, 9, 27, 25, 27, 27, 27, 27, 29, 29, 28, 30, 39, 6, 6, 54, 13, 29, 7, 54, 31, 29, 29, 29, 24, 13, 0, 62, 13, 15, 6, 15, 14, 6, 6, 14, 0, 14, 8, 6, 8, 30, 29, 29, 29, 29, 13, 30, 14, 29, 29, 29, 29, 13, 30, 13, 14, 30, 29, 28, 24, 27, 11, 25,
    9, 11, 12, 11, 28, 12, 24, 24, 24, 28, 29, 28, 30, 30, 6, 46, 30, 29, 7, 46, 29, 14, 30, 14, 14, 14, 13, 5, 54, 14, 14, 6, 13, 6, 5, 14, 6, 6, 14, 8, 6, 8, 30, 30, 30, 15, 31, 14, 14, 15, 30, 13, 14, 14, 13, 13, 31, 14, 24, 13, 27, 11, 8, 11,
    3, 9, 11, 8, 8, 8, 12, 24, 13, 29, 31, 14, 30, 14, 6, 54, 13, 14, 39, 54, 14, 30, 14, 8, 13, 14, 6, 6, 0, 61, 0, 15, 31, 6, 5, 15, 15, 7, 6, 14, 0, 14, 13, 31, 13, 13, 14, 14, 14, 14, 14, 13, 14, 29, 14, 13, 14, 14, 14, 14, 12, 8, 11, 9,
    3, 11, 3, 11, 11, 11, 12, 12, 24, 12, 13, 28, 14, 14, 38, 36, 14, 8, 38, 38, 14, 13, 8, 13, 8, 13, 13, 5, 13, 0, 6, 5, 14, 5, 14, 6, 14, 15, 7, 14, 8, 5, 7, 14, 14, 14, 13, 13, 13, 13, 13, 13, 29, 14, 29, 14, 14, 14, 14, 14, 11, 13, 8, 9,
    0, 0, 8, 11, 11, 11, 11, 11, 12, 13, 12, 9, 12, 8, 35, 33, 8, 8, 32, 36, 14, 14, 14, 14, 5, 13, 14, 14, 13, 5, 7, 13, 13, 6, 5, 15, 7, 14, 6, 0, 14, 6, 15, 15, 15, 13, 29, 30, 30, 14, 13, 13, 14, 14, 30, 13, 14, 13, 14, 6, 14, 14, 13, 8,
    0, 0, 0, 8, 0, 8, 8, 8, 4, 12, 8, 8, 8, 11, 33, 32, 40, 46, 36, 1, 40, 47, 6, 6, 6, 0, 14, 8, 6, 5, 13, 14, 0, 6, 8, 7, 6, 13, 12, 4, 11, 12, 5, 14, 15, 31, 15, 15, 13, 29, 13, 14, 14, 13, 14, 14, 13, 14, 13, 14, 6, 8, 11, 11,
    0, 0, 0, 0, 0, 0, 8, 0, 8, 1, 9, 30, 32, 33, 0, 0, 32, 40, 7, 0, 35, 38, 46, 6, 6, 6, 0, 6, 6, 15, 7, 6, 14, 8, 6, 14, 13, 4, 11, 11, 4, 11, 4, 14, 6, 13, 13, 13, 13, 14, 13, 13, 7, 5, 13, 14, 15, 13, 14, 14, 22, 16, 0, 19,
    1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 25, 0, 4, 27, 1, 0, 24, 28, 0, 0, 27, 28, 30, 38, 44, 6, 6, 7, 6, 6, 14, 6, 7, 5, 14, 5, 4, 8, 3, 11, 3, 8, 3, 5, 15, 13, 14, 5, 13, 13, 6, 6, 13, 6, 13, 5, 13, 22, 5, 22, 6, 5, 16, 3,
    3, 1, 1, 1, 1, 1, 0, 0, 0, 0, 24, 25, 24, 1, 0, 0, 0, 28, 0, 25, 4, 4, 4, 24, 30, 0, 6, 6, 6, 6, 6, 6, 5, 3, 5, 3, 3, 4, 11, 3, 3, 0, 0, 3, 5, 14, 5, 6, 6, 6, 6, 13, 0, 13, 6, 13, 21, 5, 22, 6, 7, 6, 5, 19,
    3, 3, 1, 1, 1, 1, 1, 17, 32, 24, 24, 4, 0, 4, 0, 4, 4, 0, 1, 0, 4, 0, 4, 0, 24, 6, 22, 39, 5, 6, 5, 5, 3, 5, 3, 3, 4, 3, 4, 3, 3, 3, 4, 0, 3, 0, 0, 6, 6, 3, 5, 0, 0, 0, 16, 6, 6, 6, 6, 6, 6, 6, 5, 3,
    3, 3, 3, 1, 33, 49, 17, 33, 1, 24, 0, 4, 0, 4, 0, 4, 4, 0, 0, 6, 0, 6, 4, 4, 3, 27, 27, 19, 19, 37, 19, 3, 5, 3, 0, 3, 3, 3, 4, 3, 0, 0, 3, 0, 3, 4, 0, 0, 3, 3, 0, 0, 0, 20, 0, 6, 0, 0, 0, 6, 6, 0, 6, 6,
    3, 3, 35, 19, 32, 20, 48, 1, 24, 0, 0, 4, 0, 4, 0, 4, 0, 6, 0, 0, 0, 0, 4, 7, 3, 3, 27, 51, 35, 19, 51, 19, 33, 48, 0, 1, 3, 3, 0, 0, 32, 3, 0, 4, 0, 4, 4, 1, 0, 0, 3, 3, 3, 3, 0, 0, 0, 3, 3, 1, 0, 4, 0, 0,

    58, 58, 58, 34, 39, 36, 36, 20, 0, 39, 23, 7, 36, 6, 52, 5, 13, 47, 31, 62, 62, 62, 6, 46, 63, 62, 37, 62, 38, 39, 63, 63, 23, 37, 5, 21, 63, 37, 39, 39, 39, 62, 38, 38, 39, 38, 38, 22, 38, 7, 31, 39, 63, 39, 38, 36, 39, 36, 63, 23, 34, 39, 39, 34,
    18, 59, 63, 34, 39, 63, 39, 39, 36, 36, 22, 4, 38, 7, 21, 5, 15, 29, 62, 31, 63, 63, 38, 38, 47, 63, 62, 39, 61, 39, 39, 20, 14, 37, 20, 14, 22, 62, 21, 61, 61, 36, 62, 38, 38, 38, 22, 23, 23, 7, 38, 62, 38, 62, 39, 38, 60, 62, 20, 23, 23, 2, 34, 2,
    18, 58, 58, 31, 58, 39, 60, 63, 63, 61, 20, 6, 36, 39, 13, 15, 13, 13, 61, 54, 63, 62, 63, 63, 37, 39, 61, 60, 61, 63, 20, 15, 37, 22, 13, 13, 21, 21, 14, 21, 62, 61, 60, 20, 37, 22, 23, 22, 22, 22, 62, 63, 62, 63, 63, 63, 61, 22, 62, 20, 20, 23, 3, 58,
    23, 23, 63, 63, 63, 60, 60, 60, 60, 60, 62, 5, 39, 37, 13, 13, 14, 21, 61, 61, 62, 63, 62, 62, 62, 33, 46, 63, 62, 21, 23, 13, 23, 21, 15, 23, 13, 19, 21, 15, 21, 62, 23, 61, 20, 63, 23, 22, 62, 23, 63, 63, 63, 62, 22, 62, 63, 62, 63, 62, 59, 60, 58, 58,
    18, 18, 59, 58, 63, 63, 63, 63, 62, 62, 60, 63, 6, 39, 21, 60, 22, 30, 21, 61, 62, 62, 62, 62, 57, 22, 33, 45, 22, 21, 13, 21, 21, 15, 13, 21, 11, 21, 19, 13, 19, 61, 62, 62, 62, 62, 22, 63, 23, 62, 62, 62, 30, 22, 63, 22, 23, 61, 62, 56, 60, 63, 23, 58,
    18, 23, 16, 23, 56, 16, 60, 60, 60, 60, 62, 60, 63, 61, 23, 52, 60, 62, 21, 53, 62, 23, 63, 23, 23, 23, 22, 38, 39, 23, 23, 15, 22, 13, 14, 23, 13, 15, 21, 19, 13, 19, 61, 28, 60, 21, 61, 23, 23, 22, 63, 22, 23, 23, 22, 22, 62, 23, 60, 22, 63, 23, 20, 23,
    31, 18, 23, 20, 20, 20, 16, 60, 22, 62, 60, 23, 61, 23, 21, 60, 22, 20, 52, 61, 21, 63, 23, 17, 22, 23, 15, 15, 33, 46, 9, 21, 61, 12, 14, 21, 21, 13, 15, 21, 11, 21, 22, 61, 22, 22, 23, 23, 23, 23, 23, 22, 23, 62, 23, 22, 23, 21, 21, 21, 16, 20, 23, 18,
    31, 23, 31, 23, 23, 23, 16, 16, 60, 20, 22, 60, 21, 21, 5, 0, 20, 20, 5, 5, 23, 22, 17, 22, 17, 22, 22, 14, 22, 9, 15, 14, 20, 14, 23, 15, 20, 21, 13, 21, 19, 14, 13, 23, 23, 23, 22, 22, 22, 22, 22, 22, 62, 23, 62, 23, 23, 23, 23, 23, 23, 22, 20, 18,
    27, 27, 19, 23, 23, 23, 23, 23, 20, 22, 20, 18, 16, 19, 7, 50, 17, 17, 2, 48, 23, 23, 23, 23, 30, 22, 23, 23, 22, 14, 12, 22, 22, 15, 14, 21, 13, 23, 13, 11, 21, 13, 21, 21, 21, 22, 62, 63, 63, 23, 22, 22, 23, 23, 63, 22, 23, 22, 23, 31, 21, 21, 22, 20,
    27, 25, 25, 17, 25, 17, 17, 17, 28, 20, 19, 19, 19, 23, 2, 49, 52, 55, 0, 18, 52, 54, 31, 29, 29, 25, 23, 17, 28, 30, 22, 23, 25, 15, 17, 13, 15, 22, 16, 12, 20, 20, 14, 23, 21, 61, 21, 22, 22, 62, 22, 23, 23, 22, 23, 23, 22, 23, 22, 23, 31, 20, 23, 23,
    25, 25, 25, 25, 25, 25, 17, 25, 17, 26, 18, 37, 3, 34, 33, 33, 4, 50, 38, 33, 7, 39, 55, 31, 31, 29, 25, 29, 31, 22, 29, 31, 21, 17, 15, 23, 22, 12, 23, 23, 12, 20, 28, 23, 31, 22, 22, 22, 22, 23, 22, 22, 30, 30, 22, 23, 20, 22, 23, 21, 5, 4, 28, 7,
    10, 26, 26, 26, 25, 9, 25, 9, 27, 11, 34, 59, 12, 43, 58, 57, 34, 32, 57, 57, 39, 32, 39, 39, 54, 31, 31, 30, 31, 29, 21, 29, 30, 30, 23, 30, 28, 20, 28, 23, 28, 20, 28, 30, 22, 22, 23, 30, 22, 22, 31, 31, 22, 31, 22, 30, 22, 7, 30, 23, 31, 30, 4, 31,
    15, 10, 26, 26, 10, 10, 9, 11, 11, 11, 35, 34, 35, 10, 57, 9, 58, 32, 9, 34, 56, 56, 62, 34, 39, 10, 15, 13, 13, 29, 31, 31, 30, 31, 30, 31, 28, 28, 19, 28, 31, 28, 28, 31, 30, 23, 30, 31, 31, 31, 31, 22, 28, 22, 31, 22, 22, 30, 23, 31, 30, 29, 30, 3,
    15, 15, 10, 10, 10, 10, 10, 2, 3, 35, 35, 62, 12, 8, 9, 62, 8, 57, 58, 9, 8, 60, 8, 58, 34, 63, 7, 6, 14, 15, 14, 30, 15, 14, 15, 28, 8, 28, 24, 31, 28, 31, 24, 28, 31, 28, 28, 31, 31, 31, 30, 28, 28, 28, 4, 31, 31, 31, 31, 13, 29, 13, 30, 31,
    15, 15, 12, 10, 2, 58, 2, 2, 58, 35, 58, 8, 60, 8, 57, 14, 8, 57, 9, 13, 11, 13, 8, 56, 60, 36, 39, 4, 23, 6, 7, 15, 14, 15, 12, 15, 28, 15, 8, 15, 12, 12, 15, 12, 31, 8, 12, 28, 31, 31, 12, 28, 28, 0, 28, 31, 28, 12, 28, 31, 15, 28, 13, 13,
    15, 15, 7, 4, 4, 0, 60, 58, 36, 60, 10, 56, 12, 8, 10, 8, 9, 13, 11, 63, 15, 15, 8, 13, 63, 63, 44, 63, 4, 20, 63, 7, 2, 60, 12, 10, 15, 12, 12, 12, 4, 15, 12, 8, 12, 8, 8, 10, 12, 12, 15, 28, 31, 28, 28, 28, 12, 28, 15, 10, 28, 8, 12, 28,

    6, 6, 6, 62, 48, 54, 54, 52, 18, 50, 8, 56, 30, 63, 40, 57, 25, 9, 33, 47, 47, 47, 63, 63, 21, 4, 59, 7, 63, 61, 1, 1, 33, 55, 23, 35, 1, 63, 53, 49, 49, 7, 55, 55, 48, 39, 55, 55, 55, 17, 33, 57, 1, 57, 55, 38, 48, 62, 16, 48, 54, 50, 48, 54,
    54, 4, 0, 54, 56, 0, 56, 48, 54, 62, 15, 62, 31, 61, 9, 57, 25, 33, 44, 33, 5, 1, 31, 55, 57, 1, 7, 57, 7, 61, 57, 38, 31, 53, 38, 24, 39, 4, 39, 7, 7, 62, 3, 55, 55, 48, 55, 49, 49, 17, 51, 7, 56, 16, 49, 55, 4, 7, 54, 48, 50, 22, 38, 22,
    54, 6, 6, 32, 22, 56, 6, 16, 0, 7, 9, 63, 24, 25, 25, 25, 29, 25, 17, 44, 17, 7, 1, 1, 39, 49, 7, 6, 1, 5, 38, 25, 57, 39, 25, 25, 33, 33, 28, 33, 7, 1, 22, 54, 39, 55, 49, 55, 55, 55, 7, 21, 7, 1, 1, 1, 1, 55, 7, 54, 52, 48, 20, 6,
    48, 48, 0, 0, 0, 6, 22, 6, 4, 1, 7, 57, 25, 25, 25, 25, 31, 55, 1, 41, 7, 5, 7, 23, 3, 51, 63, 1, 0, 49, 37, 25, 33, 33, 29, 37, 25, 36, 33, 25, 33, 7, 49, 7, 54, 0, 49, 55, 7, 49, 1, 5, 1, 7, 51, 0, 1, 7, 2, 7, 4, 6, 6, 22,
    54, 54, 4, 6, 0, 0, 0, 0, 7, 7, 0, 1, 56, 25, 9, 15, 55, 55, 15, 9, 0, 3, 7, 7, 3, 55, 51, 57, 39, 39, 25, 55, 49, 25, 25, 33, 28, 33, 36, 25, 36, 17, 7, 7, 7, 7, 55, 17, 48, 23, 7, 7, 39, 55, 1, 55, 53, 1, 23, 2, 6, 16, 50, 22,
    54, 48, 50, 48, 2, 50, 4, 22, 22, 2, 7, 1, 1, 17, 9, 63, 5, 7, 15, 57, 7, 49, 5, 48, 49, 53, 55, 39, 49, 49, 33, 25, 55, 29, 31, 49, 25, 29, 37, 36, 25, 36, 1, 38, 6, 55, 7, 49, 49, 52, 1, 55, 49, 48, 55, 55, 4, 49, 6, 55, 0, 50, 54, 48,
    0, 54, 48, 54, 54, 54, 50, 6, 55, 7, 5, 49, 5, 49, 13, 15, 55, 55, 41, 9, 49, 5, 49, 51, 55, 49, 25, 24, 35, 63, 27, 39, 7, 30, 31, 39, 39, 31, 25, 49, 28, 33, 55, 7, 55, 55, 49, 49, 49, 49, 49, 55, 49, 23, 53, 55, 49, 49, 49, 49, 50, 54, 48, 54,
    0, 48, 0, 48, 50, 48, 50, 50, 22, 48, 55, 17, 49, 49, 57, 63, 55, 49, 57, 57, 49, 55, 51, 55, 51, 55, 55, 31, 55, 27, 25, 31, 54, 31, 33, 29, 38, 55, 31, 33, 52, 31, 31, 49, 49, 53, 55, 55, 55, 55, 55, 55, 7, 49, 7, 49, 49, 49, 53, 53, 48, 55, 54, 54,
    0, 0, 48, 50, 48, 48, 48, 48, 49, 55, 49, 54, 50, 52, 56, 46, 51, 51, 57, 47, 49, 49, 49, 49, 7, 55, 49, 49, 55, 31, 29, 55, 55, 25, 31, 55, 31, 49, 25, 28, 49, 25, 55, 55, 55, 55, 7, 1, 1, 53, 55, 55, 53, 49, 5, 55, 49, 55, 49, 1, 49, 49, 55, 54,
    0, 3, 3, 51, 3, 51, 51, 51, 1, 49, 52, 52, 52, 48, 62, 43, 63, 61, 63, 14, 62, 56, 1, 1, 5, 3, 53, 51, 6, 7, 55, 49, 3, 25, 51, 31, 25, 55, 48, 25, 55, 50, 31, 49, 55, 7, 55, 48, 55, 7, 55, 49, 49, 55, 49, 48, 55, 49, 55, 49, 1, 52, 48, 48,
    3, 3, 3, 3, 3, 3, 51, 3, 51, 6, 54, 57, 36, 14, 27, 27, 59, 57, 24, 27, 58, 1, 57, 5, 1, 1, 3, 1, 1, 52, 7, 5, 49, 51, 25, 49, 55, 24, 48, 50, 25, 55, 1, 53, 1, 55, 55, 55, 55, 49, 55, 55, 0, 7, 55, 49, 53, 55, 49, 49, 25, 30, 6, 26,
    30, 6, 6, 6, 3, 27, 3, 27, 0, 24, 62, 28, 48, 52, 30, 27, 57, 63, 27, 27, 56, 63, 57, 1, 61, 1, 1, 4, 5, 1, 49, 5, 0, 7, 49, 7, 1, 54, 7, 48, 7, 52, 7, 7, 48, 55, 53, 7, 55, 55, 5, 1, 55, 1, 55, 7, 55, 25, 7, 13, 1, 7, 28, 0,
    24, 30, 6, 6, 30, 30, 27, 24, 24, 24, 56, 62, 56, 54, 27, 51, 25, 63, 51, 62, 31, 31, 29, 57, 57, 25, 25, 25, 25, 1, 1, 1, 7, 0, 7, 0, 7, 2, 52, 7, 0, 6, 6, 0, 7, 49, 7, 1, 5, 1, 1, 55, 6, 55, 1, 55, 15, 7, 13, 1, 4, 1, 7, 28,
    24, 24, 30, 30, 30, 30, 30, 30, 24, 56, 56, 29, 51, 55, 51, 29, 55, 27, 30, 51, 55, 27, 55, 25, 57, 25, 25, 24, 31, 25, 31, 7, 24, 31, 26, 7, 29, 7, 2, 0, 7, 0, 2, 6, 0, 6, 6, 5, 1, 2, 7, 4, 4, 6, 30, 1, 1, 1, 5, 25, 1, 29, 7, 0,
    26, 24, 31, 30, 30, 14, 30, 30, 30, 56, 25, 55, 27, 55, 27, 53, 55, 27, 51, 49, 52, 49, 55, 31, 31, 63, 56, 31, 8, 31, 24, 26, 31, 24, 30, 24, 7, 24, 26, 24, 30, 30, 24, 30, 0, 26, 30, 6, 0, 0, 30, 6, 6, 26, 6, 5, 6, 30, 6, 1, 25, 6, 25, 25,
    24, 24, 24, 31, 28, 26, 6, 30, 62, 30, 49, 31, 51, 55, 49, 55, 51, 49, 52, 29, 53, 53, 55, 55, 24, 24, 55, 0, 31, 15, 10, 24, 28, 6, 30, 28, 26, 31, 30, 30, 30, 26, 28, 26, 30, 26, 26, 30, 30, 30, 24, 7, 0, 7, 6, 6, 28, 7, 24, 30, 4, 26, 30, 6

};
Panel panel(buffer);
int8_t phase = 0;
#else
Panel panel = {};
#endif

void setup()
{
#ifndef PANEL_FLASH
    panel.fillBuffer(panel.BLACK);
#ifndef PANEL_BIG
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
#else

    panel.drawRect(0, 0, 63, 1, FULL_TO_HIGH_COLOR(3, 0, 0), true);
    panel.drawRect(0, 2, 63, 3, FULL_TO_HIGH_COLOR(2, 0, 0), true);
    panel.drawRect(0, 4, 63, 5, FULL_TO_HIGH_COLOR(1, 0, 0), true);
    panel.drawRect(0, 6, 63, 7, FULL_TO_HIGH_COLOR(0, 3, 0), true);
    panel.drawRect(0, 8, 63, 9, FULL_TO_HIGH_COLOR(0, 2, 0), true);
    panel.drawRect(0, 10, 63, 11, FULL_TO_HIGH_COLOR(0, 1, 0), true);
    panel.drawRect(0, 12, 63, 13, FULL_TO_HIGH_COLOR(0, 0, 3), true);
    panel.drawRect(0, 14, 63, 15, FULL_TO_HIGH_COLOR(0, 0, 2), true);
    panel.drawRect(0, 16, 63, 17, FULL_TO_HIGH_COLOR(0, 0, 1), true);

#endif
#endif
}

void loop()
{
#ifdef PANEL_NO_BUFFER
    panel.fillScreenColor(255, 1, 0);
#else
    panel.displayBuffer();
#endif
}