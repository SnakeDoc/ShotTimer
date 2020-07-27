/**
 * Shot Timer - MAX4466 Driver
 * 
 * Minimum Priority Queue Header
 *
 * Copyright (C) 2020 Jason Sipula <alupis1@gmail.com>
 * 
 */

#ifndef __MAX4466_SAMPLE_QUEUE_H__
#define __MAX4466_SAMPLE_QUEUE_H__

#include "../../../Debug.hpp"

#define QUEUE_MAX_SIZE 64
#define WEIGHT_INCREMENT 1.0

/**
 * FIFO Circular Queue that automatically dequeue's the tail
 * upon new enqueue calls
 */
class CircularFIFOQueue
{
    private:
    public:
        CircularFIFOQueue(int size);
        /**
         * Returns dequeued sample (tail) if the queue was full,
         * or -1 if none.
         */
        unsigned int Enqueue(unsigned int sample);
        unsigned int Dequeue();
        void GetDataCopy(unsigned int* arr);
};

#endif
