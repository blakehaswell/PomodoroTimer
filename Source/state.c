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

void handle_button_down() {
        struct State new_state;
        new_state.status = WORKING;
        new_state.seconds_remaining = WORK_TIME;

        if (state.status == WORKING) {
                new_state.status = READY;
        }

        state = new_state;

        if (state.status == WORKING) {
                start_clock();
        }
}

void handle_clock_tick() {
        assert(state.status != READY);
        assert(state.seconds_remaining != 0);
        
        state.seconds_remaining--;

        if (state.seconds_remaining == 0) {
                if (state.status ==  WORKING) {
                        struct State new_state;
                        new_state.status = COMPLETE;
                        new_state.seconds_remaining = BREAK_TIME;
                        state = new_state;
                } else {
                        stop_clock();
                }
        }
}
