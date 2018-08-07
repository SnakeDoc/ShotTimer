/**
 * Shot Timer
 *
 * Copyright (C) 2018 Jason Sipula <alupis1@gmail.com>
 *
 */

#include "shottimer.h"

void initialize()
{
#ifdef __DEBUG_LOGGING_ENABLED__
    init_debug();
#endif
    set_sample_pin(A0);
}

void control_loop()
{
    sample(SAMPLE_WINDOW);
}
