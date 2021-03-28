/**
 * Shot Timer - Utils
 * 
 * FIFO Circular Queue Template
 *
 * Copyright (C) 2020 Jason Sipula <alupis1@gmail.com>
 * 
 */

#ifndef __UTILS_CIRCULAR_FIFO_QUEUE_H__
#define __UTILS_CIRCULAR_FIFO_QUEUE_H__

#include <stdint.h>

#include "Debug.h"
#include "Types.h"


/**
 * FIFO Circular Queue that automatically dequeue's the tail
 * upon new enqueue calls
 */
template <typename T>
class CircularFIFOQueue
{
    public:
		int head, tail;
        int size;
        T* data;
		
		CircularFIFOQueue() : head(tail - 1), size(64), data(new T[64]) {}

        CircularFIFOQueue(const uint8_t initialSize) : head(tail - 1), size(initialSize), data(new T[initialSize]) {}

        void enqueue(const T& element)
        {
            // insert first element
            if (head == -1) {
                head = tail = 0;
                data[head] = element;
            }
            else if (tail == size - 1 && head != 0) {
                tail = 0;
                data[tail] = element;
            }
            else {
                tail++;
                data[tail] = element;
            }
        }

        T& dequeue()
        {
            T element;
            if (head == -1) {
                DebugPrintln("Queue is empty!");
                return {0};
            }
            element = data[head];
            data[head] = {0};
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
            return element;
        }

		T& get(int index)
		{
			return data[index];
		}
};

#endif
