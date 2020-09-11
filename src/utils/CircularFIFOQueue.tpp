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

#include "Debug.hpp"
#include "Types.hpp"

#define QUEUE_MAX_SIZE 64
#define WEIGHT_INCREMENT 1.0

/**
 * FIFO Circular Queue that automatically dequeue's the tail
 * upon new enqueue calls
 */
template <class T> class CircularFIFOQueue
{
    private:
        int head, tail;
        int size;
        T *data;

    public:
        CircularFIFOQueue(int initialSize)
        {
            head = tail - 1;
            size = initialSize;
            data = new T[size];
        }

        /**
         * Returns dequeued element (tail) if the queue was full,
         * or -1 if none.
         */
        T Enqueue(T element)
        {
            T removedElement;
            // if queue is full, dequeue tail
            if ((head == 0 && tail == size - 1) ||
                    (tail == (head - 1) % (size - 1))) {
                removedElement = Dequeue();
            }

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
            return removedElement;
        }

        T Dequeue()
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

        void GetDataCopy(T* arr)
        {
            int i;
            for (i = 0; i < QUEUE_MAX_SIZE; i++) {
                arr[i] = data[i];
            }
        }
};

#endif
