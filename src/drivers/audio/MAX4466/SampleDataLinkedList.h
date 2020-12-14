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

#include "../../../utils/InsertOnlyLinkedList.h"

#include "../../../utils/Debug.h"

template <typename T>
class SampleDataLinkedList : public InsertOnlyLinkedList<T>
{
    private:
    public:
        double RMS()
        {
            unsigned long count = 0;
            double sum = 0.0;
            LinkedListNode<T>* node = this->Head;
            while (node != nullptr) {
                // node->obj->data is unsafe and depends on obj->data being the structure... todo, fix
                sum += pow((node->obj->data), 2.0);
                node = node->next;
                count++;
            }
            DebugPrint(F("    Count: "));
            NSDebugPrintln(count);
            DebugPrint(F("    Sum: "));
            NSDebugPrintln(sum);
            double x = sum / count;
            DebugPrint(F("    X: "));
            NSDebugPrintln(x);
            return sqrt(x);
        }
};

#endif
