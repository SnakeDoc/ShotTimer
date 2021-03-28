/* 
* Executable.h
*
* Created: 1/24/2021
* Author: Jason Sipula
*/


#ifndef __EXECUTABLE_H__
#define __EXECUTABLE_H__


class Executable
{
//functions
public:
	virtual ~Executable() {}
	virtual void ExecuteOnce(void) = 0;
}; //Executable

#endif //__EXECUTABLE_H__
