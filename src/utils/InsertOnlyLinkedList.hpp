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

template <class T> class InsertOnlyLinkedList
{

    private:
        template <class U> class Node
        {
            private:
            public:
                U obj;
                Node<U> next;
                Node() : obj(NULL), next(NULL) {}
                Node(U u) : obj(u), next(NULL) {}
        };
        Node<T> Head, Tail;

    public:
        void Insert(T Sample)
        {
            Node<T> node = new Node(Sample);

            if (Head == NULL) {
                Head = node;
            } else {
                if (Tail != NULL) {
                    Tail->next = node;
                }
                Tail = node;
            }
        }

        void Clear()
        {
            if (Head == NULL) return;

            while (Head->next != NULL) {
                Node<T> node = Head->next;
                delete Head;
                Head = node;
            }
            delete Head;
        }


};

#endif
