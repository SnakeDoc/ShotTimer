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

void insert_sample(unsigned int);
void get_data_copy(unsigned int arr[QUEUE_MAX_SIZE]);

#endif
