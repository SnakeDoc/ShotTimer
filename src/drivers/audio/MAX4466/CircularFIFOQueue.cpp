/**
 * Shot Timer - MAX4466 Driver
 * 
 * Minimum Priority Queue
 *
 * Copyright (C) 2020 Jason Sipula <alupis1@gmail.com>
 * 
 */

#include "CircularFIFOQueue.hpp"

int head, tail;
int size;
unsigned int *data;

CircularFIFOQueue::CircularFIFOQueue(int initialSize)
{
    head = tail - 1;
    size = initialSize;
    data = new unsigned int[size];
}

unsigned int CircularFIFOQueue::Enqueue(unsigned int sample)
{
    unsigned int removedSample = -1;
    // if queue is full, dequeue tail
    if ((head == 0 && tail == size - 1) ||
            (tail == (head - 1) % (size - 1))) {
        removedSample = Dequeue();
    }

    // insert first element
    if (head == -1) {
        head = tail = 0;
        data[head] = sample;
    }
    else if (tail == size - 1 && head != 0) {
        tail = 0;
        data[tail] = sample;
    }
    else {
        tail++;
        data[tail] = sample;
    }
    return removedSample;
}

unsigned int CircularFIFOQueue::Dequeue()
{
    if (head == -1) {
        DebugPrintln("Queue is empty!");
        return -1;
    }

    unsigned int sample = data[head];
    data[head] = -1;
    if (head == tail) {
        head = -1;
        tail = -1;
    }
    else if (head == size - 1) {
        head = 0;
    }
    else {
        head++;
    }
    return sample;
}

void CircularFIFOQueue::GetDataCopy(unsigned int* arr)
{
    int i;
    for (i = 0; i < QUEUE_MAX_SIZE; i++) {
        arr[i] = data[i];
    }
}
