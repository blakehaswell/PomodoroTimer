#include <avr/io.h>
#include <avr/interrupt.h>
#include <assert.h>
#include <util/delay.h>
#include "platform.h"
#include "state.h"

// TODO: Split this into config for display output, light output, and sound
// output.
void configure_io() {
    DDRB = (1 << DDB2) | (1 << DDB1) | (1 << DDB0);
    DDRC = (1 << DDC5) | (1 << DDC4) | (1 << DDC3) | (1 << DDC2) | (1 << DDC1);
    DDRD = (1 << DDD7) | (1 << DDD6) | (1 << DDD5) | (1 << DDD4) | (1 << DDD3) | (1 << DDD2) | (1 << DDD1) | (1 << DDD0);
}

void configure_button_interrupt() {
    PCICR = (1 << PCIE1);
    PCMSK1 = (1 << PCINT8);
}

ISR(PCINT1_vect) {
    // TODO: Define BTN_PIN as a constant.
    uint8_t is_button_down = !(PINC & (1 << PINC0));
    if (is_button_down) {
        handle_button_down();
    }
}

volatile uint32_t overflow_count = 0;
#define MAX_OVERFLOW_COUNT 488
#define REMAINDER_TICKS 72

void configure_clock_interrupts() {
    // Set timer clock to 1/8th system clock speed.
    TCCR0B = (2 << CS00);

    // Set the overflow count for CTC mode.
    OCR0A = REMAINDER_TICKS;
}

void start_clock() {
    overflow_count = 0;
        
    // Set waveform generation mode to "normal".
    TCCR0A &= ~((1 << WGM01) | (1 << WGM00));
    TCCR0B &= ~(1 << WGM02);
        
    // Set timer counter to 0.
    TCNT0 = 0;

    // Enable timer interrupts.
    TIMSK0 |= (1 << OCIE0A) | (1 << TOIE0);
}

ISR(TIMER0_OVF_vect) {
    ++overflow_count;
    if (overflow_count == MAX_OVERFLOW_COUNT) {
        // Set waveform generation mode to "CTC".
        TCCR0A = (TCCR0A & ~(1 << WGM01)) | (1 << WGM00);
        TCCR0B &= ~(1 << WGM02);
    }
}

ISR(TIMER0_COMPA_vect) {
    overflow_count = 0;
        
    // Set waveform generation mode to "normal".
    TCCR0A &= ~((1 << WGM01) | (1 << WGM00));
    TCCR0B &= ~(1 << WGM02);
        
    handle_clock_tick();
}

void stop_clock() {
    // Disable timer interrupts.
    TIMSK0 &= ~(1 << OCIE0A) | ~(1 << TOIE0);
}

/*
  Define ISRs:
  1) Update state on button press.
  2) Update state (seconds_remaining) on clock tick.
  3) Render 7SEG & LED.
  4) Play sounds.
*/

void initialize_platform() {
    configure_io();
    configure_button_interrupt();
    configure_clock_interrupts();

    sei();
}

void platform_loop() {
    static uint8_t digit = 0;
    uint8_t number = get_number(digit, state.seconds_remaining);
    render_digit(digit, number);
    digit = (digit < 3) ? digit : 0;
    _delay_ms(10);
}

uint8_t get_number(uint8_t digit, uint16_t seconds_remaining) {
    uint8_t number;
    switch (digit) {
    case (0):
        number = seconds_remaining / 600;
        break;
    case (1):
        number = (seconds_remaining % 600) / 60;
        break;
    case (2):
        number = seconds_remaining % 60;
        break;
    case(3):
        number = seconds_remaining % 10;
        break;
    default:
        assert(!"Invalid digit.");
    }
    return number;
}

void render_digit(uint8_t digit, uint8_t number) {
    switch (digit) {
    case (0):
        // Make number blank for digit 0 when number is 0
        break;
    case(1):
        // Include decimal point
        break;
    }
}
