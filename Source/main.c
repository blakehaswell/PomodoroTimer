#include "platform.h"

int main(void) {
    initialize_platform();

    while (1) {
        platform_loop();
    }
        
    return 0;
}

