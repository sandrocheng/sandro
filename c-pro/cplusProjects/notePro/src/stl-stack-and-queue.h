/*
 * stl-stack-and-queue.h
 * stack：栈容器，先进后出 ，不具备遍历行为，也不提供迭代器
 * queue：队列容器，先进先出，允许从一端新增元素，另一端移除元素,只有queue的顶端元素，才有机会被外界取用。不提供遍历功能和迭代器
 * push(elem),pop(),back(),front()
 * 
 *
 */

#ifndef _STL_STACK_AND_QUEUE_H_
#define _STL_STACK_AND_QUEUE_H_
#include <iostream>
#include "stl-start-base.h"
#include <stack>
#include <queue>
using namespace std;

class StlStackAndQueue: public StlStartBase 
{
	public:
		virtual void start();

	private:
		void stackBasic();
		void queueBasic();

};

#endif // _STL_STACK_AND_QUEUE_H_

