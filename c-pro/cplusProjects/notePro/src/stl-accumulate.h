
/*
 * stl-accumulate.h
 * 
 * 常用算术生成算法
 * 
 * 计算容器元素累积总和
 * @param begin 容器开始迭代器
 * @param end 容器结束迭代器
 * @param value 类加值
 * accumulate(iterator begin,iterator end,value);
 * 
 * 
 * 向容器中添加元素
 * @param begin 容器开始迭代器
 * @param end 容器结束迭代器
 * @param value 填充元素
 * fill(iterator begin,iterator end,value)
 */

#ifndef _STL_ACCUMULATE_H_
#define _STL_ACCUMULATE_H_

#include <iostream>
#include "stl-start-base.h"
#include <algorithm>
#include <numeric>

using namespace std;

class StlAccumulate: public StlStartBase 
{
	 public:
		 virtual void start();
	 private:
		 void stlAccumulate();
		 void stlFill();
 };

#endif // _STL_ACCUMULATE_H_

