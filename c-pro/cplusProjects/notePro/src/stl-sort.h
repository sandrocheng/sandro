/*
 * stl-sort.h
 * 
 * 容器元素合并，并储存到另一容器中
 * 注意：两个容器必须是有序的 并且是同一种顺序（同时是递增，或者同时是递减）
 *       目标容器要注意扩容，比如vector, v3.resize(v1.size() + v2.size())
 * @param begin1 容器1 开始迭代器
 * @param end1 容器1 结束迭代器
 * @param begin2 容器2 开始迭代器
 * @param end2 容器2 结束迭代器
 * @param dest 目标容器开始迭代器
 * merge(iterator begin1,iterator end1,iterator begin2,iterator end2,iterator dest)
 *
 * 
 *
 * 容器元素排序
 * @param begin 容器 开始迭代器
 * @param end 容器 结束迭代器
 * @param _callback 回调函数或者谓词（返回bool类型的函数对象）
 *sort(iterator begin,iterator end,_callback); 
 * 
 * 对指定范围内的元素随机调整顺序
 * 注意：要想彻底打乱，要设置random随机初始值 ： srand(time(NULL))
 * @param begin 容器 开始迭代器
 * @param end 容器 结束迭代器
 * random_shuffle(iterator begin,iterator end);
 * 
 * 反转容器指定范围内元素
 * @param begin 容器 开始迭代器
 * @param end 容器 结束迭代器
 * reverse(iterator begin,iterator end);
 */

#ifndef _STL_SORT_H_
#define _STL_SORT_H_
#include <iostream>
#include "stl-start-base.h"
#include <algorithm>
#include <vector>
#include <time.h>


using namespace std;

class StlSort: public StlStartBase 
{
	 public:
		 virtual void start();
	 private:
		 void stlMerge();
		 void randomShuffle();
		 void stlreverse();
 };

#endif // _STL_SORT_H_

