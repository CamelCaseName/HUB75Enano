

#ifndef HUB75E_NANO
#define HUB75E_NANO

// ref https://roboticsbackend.com/arduino-fast-digitalwrite/#Using_direct_port_manipulation_instead_of_digitalWrite

// helper definitions
#define high_pin(port, number) port |= 1UL << number
#define toggle_pin(port, number) port ^= 1UL << number
#define clear_pin(port, number) port &= ~(1UL << number)
#define pulse_pin(port, number) \
    high_pin(port, number);     \
    clear_pin(port, number)
#define set_pin(port, number, value) \
    port |= (value > 0) << number;   \
    port &= ~((value == 0) << number)
#define PORTA_high_pin(number) high_pin(PORTA, number)
#define PORTB_high_pin(number) high_pin(PORTB, number)
#define PORTC_high_pin(number) high_pin(PORTC, number)
#define PORTD_high_pin(number) high_pin(PORTD, number)
#define PORTA_toggle_pin(number) toggle_pin(PORTA, number)
#define PORTB_toggle_pin(number) toggle_pin(PORTB, number)
#define PORTC_toggle_pin(number) toggle_pin(PORTC, number)
#define PORTD_toggle_pin(number) toggle_pin(PORTD, number)
#define PORTA_clear_pin(number) clear_pin(PORTA, number)
#define PORTB_clear_pin(number) clear_pin(PORTB, number)
#define PORTC_clear_pin(number) clear_pin(PORTC, number)
#define PORTD_clear_pin(number) clear_pin(PORTD, number)

// actual pin numbers
#define RA 14  // register selector a
#define RB 15  // register selector b
#define RC 16  // register selector c
#define RD 17  // register selector d
#define RF 2   // red first byte
#define RS 5   // red second byte
#define BF 4   // blue first byte
#define BS 7   // blue second byte
#define GF 3   // green first byte
#define GS 6   // green second byte
#define LAT 18 // data latch
#define CLK 8  // clock signal
#define OE 9   // output enable

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
#define HIGH_RD high_pin(PORTC, 4)
#define CLEAR_RD clear_pin(PORTC, 4)
#define SET_RD(value) set_pin(PORTC, 4, value)

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
#define SETCOLOR(value) \
    PORTD = ((value & 63) << 2) || PORTD & 3
#endif

// pin access defines, rest
#define HIGH_LAT high_pin(PORTC, 3)
#define CLEAR_LAT clear_pin(PORTC, 3)
#define SET_LAT(value) set_pin(PORTC, 3, value)
#define HIGH_CLK high_pin(PORTB, 0)
#define CLEAR_CLK clear_pin(PORTB, 0)
#define SET_CLK(value) set_pin(PORTB, 0, value)
#define HIGH_OE high_pin(PORTB, 1)
#define CLEAR_OE clear_pin(PORTB, 1)
#define SET_OE(value) set_pin(PORTB, 1, value)
#define SET_ROW_PINS(row) PORTC = (row + (row > 7) * 8) + (row > 15)
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

#endif