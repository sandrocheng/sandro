/*
 * stl-class-inside.h
 * STL内建函数对象：
 * 
 * 6个算术类函数对象 除了negate是一元运算，其他都是二元运算。
 * template<class T> T plus<T>加法仿函数
 * template<class T> T minus<T>减法仿函数
 * template<class T> T multiplies<T>乘法仿函数
 * template<class T> T divides<T>除法仿函数
 * template<class T> T modulus<T>取模仿函数
 * template<class T> T negate<T>取反仿函数
 * 
 * 
 * 6个关系运算函数对象，每一种都是二元运算
 * template<class T> bool equal_to<T>//等于
 * template<class T> bool not_equal_to<T>//不等于
 * template<class T> bool greater<T>//大于
 * template<class T> bool greater_equal<T>//大于等于
 * template<class T> bool less<T>//小于
 * template<class T> bool less_equal<T>//小于等于
 * 
 * 逻辑类关系运算函数 ,not 为一元运算，其余为二元运算
 * template<class T> bool logical_and<T>//等于
 * template<class T> bool logical_or<T>//不等于
 * template<class T> bool logical_not<T>//大于
 * 
 */

#ifndef _STL_CLASS_INSIDE_H_
#define _STL_CLASS_INSIDE_H_
#include <iostream>
#include "stl-start-base.h"
#include <vector>
#include <algorithm>

using namespace std;

class StlClassInside: public StlStartBase 
{
	public:	
		virtual void start();

	private:
		void printVectorInt(vector<int> &v);

};

#endif // _STL_CLASS_INSIDE_H_

