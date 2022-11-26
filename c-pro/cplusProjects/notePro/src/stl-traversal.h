
/*
 * stl-traversal.h
 *常用遍历算法： 
 * @param begin : 开始迭代器
 * @param end : 结束迭代器
 * @param _callback : 函数回调，或者函数对象
 * @return 函数对象
 * for_each(iterator begin,iterator edn,_callback); 
 * 
 * 
 * transform ：将指定容器区间元素搬运到另一个容器中
 * 注意：transform不会给目标容器分配内存，所以需要我们提前分配好内存
 * @param begin1 源容器开始迭代器
 * @param end1 源容器结束迭代器 
 * @param begin2 目标容器开始迭代器
 * @param _callback 回调函数或者函数对象
 * @return 返回目标容器迭代器
 * transform(iterator begin1,iterator end1,iterator begin2,_callback);
 */

#ifndef _STL_TRAVERSAL_H_
#define _STL_TRAVERSAL_H_
#include <iostream>
#include "stl-start-base.h"
#include <algorithm>
#include <vector>
using namespace std;

class StlTraversal: public StlStartBase 
{
	public:
		virtual void start();
	

};

static int myTransform(int value);

#endif // _STL_TRAVERSAL_H_

