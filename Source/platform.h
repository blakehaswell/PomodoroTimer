#pragma once

#include <inttypes.h>

void initialize_platform();

void platform_loop();

uint8_t get_number(uint8_t digit, uint16_t seconds_remaining);

void render_digit(uint8_t digit, uint8_t number);

void start_clock();

void stop_clock();
