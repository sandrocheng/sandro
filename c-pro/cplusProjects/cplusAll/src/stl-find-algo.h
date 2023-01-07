/*
 * stl-find-algo.h
 * 常用查找算法
 * find算法查找元素
 * @param begin 容器开始迭代器
 * @param end 容器结束迭代器
 * @param value 查找的元素
 * @return 返回查找元素的位置迭代器
 * find(iterator begin,iterator end,value);
 * 
 * 条件查找
 * @param begin 容器开始迭代器
 * @param end 容器结束迭代器
 * @param _callback 回调函数或者谓词（返回bool类型的函数对象）
 * return bool 找到返回true 否则返回 false
 * find_if(iterator begin,iterator end,_callback)
 *
 * 
 * 查找相邻重复元素
 * @param begin 容器开始迭代器
 * @param end 容器结束迭代器
 * @param _callback 回调函数或者谓词（返回bool类型的函数对象）,可以不填写，使用默认策略
 * return 返回相邻元素的第一个位置的迭代器
 * adjacent_find(iterator begin,iterator end,_callback)
 * 
 * 二分查找
 * 注意，只能再有序序列中查找
 * @param begin 容器开始迭代器
 * @param end 容器结束迭代器
 * @param value 查找的元素
 * @return 返回是否找到
 * bool binary_search(iterator begin,iterator end,value)
 * 
 * 统计元素出现次数
 * @param begin 容器开始迭代器
 * @param end 容器结束迭代器
 * @param value 统计的元素
 * @return int 返回元素出现的次数
 * count(iterator begin,iterator end,value);
 * 
 * 统计元素出现次数,按条件统计
 * @param begin 容器开始迭代器
 * @param end 容器结束迭代器
 * @param callback  回调函数或者谓词（返回bool类型的函数对象）
 * @return int 返回元素出现的次数
 * count_if(iterator begin,iterator end,callback); 
 */

#ifndef _STL_FIND_ALGO_H_
#define _STL_FIND_ALGO_H_
#include <iostream>
#include <vector>
#include <algorithm>
#include "stl-start-base.h"

using namespace std;

class StlFindAlgo: public StlStartBase 
{
	 public:
		 virtual void start();

	 private:
		 void stlFind();
		 void stlFindif();
		 void adjacentFind();
		 void binarySearch();
		 void stlCount();
		 void countIf();
 };

static bool greaterThan100(int value);

#endif // _STL_FIND_ALGO_H_

