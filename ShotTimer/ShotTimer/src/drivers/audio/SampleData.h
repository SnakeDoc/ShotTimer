/* 
* SampleData.h
*
* Data Sample from Audio Sensor
*
* Copyright (C) 2020 Jason Sipula <alupis1@gmail.com>
*/


#ifndef __SAMPLEDATA_H__
#define __SAMPLEDATA_H__


template <typename T>
class SampleData
{
//variables
public:
	T data;
protected:
private:

//functions
public:
	SampleData() : data(0) {}
	SampleData(T sample) : data(sample) {}
	~SampleData() {}
protected:
private:
}; //SampleData

#endif //__SAMPLEDATA_H__
