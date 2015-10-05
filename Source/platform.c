#include <avr/io.h>
#include <avr/interrupt.h>
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

void configure_display() {
    // Setup ISR to occur every x ms
    // Or if ISR doesn't work just run this on the main thread
    // (I'm worried about ISR working because we reset TCNT0 in
    // start_clock())
}

volatile uint8_t display_index;
uint8_t display_pins[4] = {
    PD1,
    PC4,
    PC3,
    PD7
};
ISR(TIMER0_COMPB_vect) {
    uint8_t i = display_index % 4;
    uint8_t display_pin = display_pins[i];
    ++display_pin; // TODO: Remove this.
    ++display_index;
}

void initialize_platform() {
    configure_io();
    configure_button_interrupt();
    configure_clock_interrupts();
    configure_display();

    sei();
}
