#pragma once

#include <inttypes.h>

# define WORK_TIME 1500 // 25 minutes
# define BREAK_TIME 300 // 5 minutes

enum TaskStatus { READY, WORKING, COMPLETE };

struct State {
        enum TaskStatus status;
        uint16_t seconds_remaining;
};

volatile struct State state = {
        READY,
        WORK_TIME
};

void handle_button_down();

void handle_clock_tick();
