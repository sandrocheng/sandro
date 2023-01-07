
/*
 * stl-collenction.h
 * 常用集合算法
 * 注意 
 *    集合必须是有序的（同为递增，或者同为递减）
 *    目标集合要设置大小 使用min max函数筛选 两个集合的size,或者 size1 + size2
 * 
 * 求两个集合的交集
 * @param begin1 容器1 开始迭代器
 * @param end1   容器1 结束迭代器
 * @param begin2 容器2 开始迭代器
 * @param end2   容器2 结束迭代器
 * @param dest   目标迭代器
 * @return 尾部迭代器
 * set_intersection(iterator begin1,iterator end1,iterator begin2,iterator end2,iterator dest)
 * 
 * 
 * 求两个集合的并集
 * @param begin1 容器1 开始迭代器
 * @param end1   容器1 结束迭代器
 * @param begin2 容器2 开始迭代器
 * @param end2   容器2 结束迭代器
 * @param dest   目标迭代器
 * @return 尾部迭代器
 * set_union(iterator begin1,iterator end1,iterator begin2,iterator end2,iterator dest) 
 *
 * 求v1 差 v2 的差集
 * @param begin1 容器1 开始迭代器
 * @param end1   容器1 结束迭代器
 * @param begin2 容器2 开始迭代器
 * @param end2   容器2 结束迭代器
 * @param dest   目标迭代器
 * @return 尾部迭代器
 * set_difference(iterator begin1,iterator end1,iterator begin2,iterator end2,iterator dest)  
 */

#ifndef _STL_COLLENCTION_H_
#define _STL_COLLENCTION_H_
#include <iostream>
#include "stl-start-base.h"
#include <vector>
#include <algorithm>


using namespace std;


class StlCollenction: public StlStartBase 
{
	public:
		virtual void start();
	private:
		void stlIntersection();
		void stlUnion();
		void setDifference();
};

#endif // _STL_COLLENCTION_H_

