/**
 * Shot Timer - Utils
 * 
 * Linked List Template
 *
 * Copyright (C) 2020 Jason Sipula <alupis1@gmail.com>
 * 
 */

#ifndef __UTILS_LINKED_LIST_H__
#define __UTILS_LINKED_LIST_H__

#include "LinkedListNode.tpp"
#include "SampleDataUnsignedInt.hpp"
#include "Debug.hpp"

template <class T> class InsertOnlyLinkedList
{

    protected:
        LinkedListNode<T>* Head = nullptr;
        LinkedListNode<T>* Tail = nullptr;

    public:
        InsertOnlyLinkedList() {}
        ~InsertOnlyLinkedList()
        {
            Clear();
        }

        void Insert(T *Sample)
        {
            LinkedListNode<T>* node = new ::LinkedListNode<T>(Sample);

            //DebugPrint("Inserting into Linked List... ");
            //NSDebugPrintln(Sample->data);

            if (Head == nullptr) {
                Head = node;
            } else {
                if (Tail == nullptr) {
                    Head->next = node;
                    Tail = node;
                } else {
                    Tail->next = node;
                    Tail = node;
                }
            }
            //DebugPrintln("Inserted into List!");
        }

        void Clear()
        {
            if (Head == nullptr) return;

            while (Head->next != nullptr) {
                LinkedListNode<T>* node = Head->next;
                delete Head;
                Head = node;
            }
            delete Head;
        }


};

#endif
