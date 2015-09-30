#include <avr/io.h>
#include <avr/interrupt.h>
#include "platform.h"
#include "state.h"

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

enum WaveformGenerationMode { NORMAL, CTC };

void set_waveform_generation_mode(enum WaveformGenerationMode mode) {
        switch (mode) {
        case NORMAL:
                TCCR0A &= ~((1 << WGM01) | (1 << WGM00));
                TCCR0B &= ~(1 << WGM02);
                break;
        case CTC:
                TCCR0A = (TCCR0A & ~(1 << WGM01)) | (1 << WGM00);
                TCCR0B &= ~(1 << WGM02);
                break;
        }
}

void configure_clock_tick_interrupt() {
        // Set timer clock to 1/8th system clock speed.
        TCCR0B = (2 << CS00);
        
        set_waveform_generation_mode(NORMAL);
}

volatile uint32_t overflow_count = 0;
ISR(TIMER0_OVF_vect) {
        ++overflow_count;
        if (overflow_count == 488) {
                overflow_count = 0;
                
                set_waveform_generation_mode(CTC);
                
                // Trigger interrupt in 72 cycles.
                OCR0A = 72;
        }
}

ISR(TIMER0_COMPA_vect) {
        set_waveform_generation_mode(NORMAL);
        
        handle_clock_tick();
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
        configure_clock_tick_interrupt();

        sei();
}
