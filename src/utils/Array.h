/* 
* Array.h
*
* https://stackoverflow.com/questions/751878/determine-array-size-in-constructor-initializer/12271501#12271501
*
* Created: 12/15/2020 12:09:31 AM
* Author: sipul
*/


#ifndef __ARRAY_H__
#define __ARRAY_H__

template <typename T, int LENGTH>
class Array
{
public:
	T array[LENGTH];
};

#endif //__ARRAY_H__
