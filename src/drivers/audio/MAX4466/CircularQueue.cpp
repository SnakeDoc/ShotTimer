/**
 * Shot Timer - MAX4466 Driver
 * 
 * Minimum Priority Queue
 *
 * Copyright (C) 2020 Jason Sipula <alupis1@gmail.com>
 * 
 */

#include "CircularQueue.hpp"

unsigned int head = -1;
unsigned int tail = -2;

unsigned int data[QUEUE_MAX_SIZE];

void insert_sample(unsigned int sample)
{
    data[++head] = (long)sample;
    tail = head - 1;

    if (head == QUEUE_MAX_SIZE) {
        head = 0;
    }
    if (tail == 0) {
        tail = QUEUE_MAX_SIZE;
    }
}

void get_data_copy(unsigned int* arr)
{
    unsigned int i;
    for (i = 0; i < QUEUE_MAX_SIZE; i++) {
        arr[i] = data[i];
    }
}
