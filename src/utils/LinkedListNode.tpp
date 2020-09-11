/**
 * Shot Timer - Utils
 * 
 * Linked List Node Template
 *
 * Copyright (C) 2020 Jason Sipula <alupis1@gmail.com>
 * 
 */

#ifndef __UTILS_LINKED_LIST_NODE_H__
#define __UTILS_LINKED_LIST_NODE_H__

template <class T> class LinkedListNode
{
    private:
    public:
        T *obj = nullptr;
        LinkedListNode<T> *next = nullptr;
        LinkedListNode() : obj(nullptr), next(nullptr) {}
        LinkedListNode(T *t) : obj(t), next(nullptr) {}
};

#endif
