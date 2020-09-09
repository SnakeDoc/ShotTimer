/**
 * Shot Timer - MAX4466 Electret Microphone Ampliphier Driver
 * 
 * MAX4466 Sample Data Linked List Template
 *
 * Copyright (C) 2020 Jason Sipula <alupis1@gmail.com>
 * 
 */

#ifndef __MAX4466_SampleDataLinkedList_H__
#define __MAX4466_SampleDataLinkedList_H__

#include <math.h>

#include "../../../utils/InsertOnlyLinkedList.hpp"

template <class T> class SampleDataLinkedList : public InsertOnlyLinkedList<T>
{
    private:
    public:
        double RMS()
        {
            unsigned long count = 0;
            double sum = 0.0d;
            Node node = Head;
            while (node->Next != null) {
                sum += pow(node->obj->data, 2.0d);
                count++;
            }
            return sqrt(sum/count);
        }
};

#endif
