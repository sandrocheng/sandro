/*
 * stl-vector.h
 *
 * vector : 单端动态数组
 * 动态空间，自动扩充空间
 * v.begin() : 获取容器的起始迭代器
 * v.end(): 获取容器的结束迭代器（指向最后一个元素的下一个位置）。
 * v.rbegin():获取容器最后一个元素的迭代器
 * v.rend():指向第0个元素的前一个
 * v.front():头元素
 * v.back():尾元素
 * push_back():栈尾添加元素
 * pop_back():弹出栈尾元素
 *	 
 * vector所采用的数据结构非常简单：线性连续空间。它以两个迭代器 Myfirst和Mylast分别指向配置得来的连续空间中目前已被使用的范围，并以迭代器
 * _Myend指向整块连续内存空间的尾端。
 * 
 * 一旦vector容量等于其大小（满载）或者超过某一域值（也可能是当前容量的50%），下次再有新增元素，会自动重新申请一块更大的内存空间（一般是两倍）。
 * 然后把旧空间的内存数据拷贝到新内存空间中，再新增新的元素。
 * 
 * 
 */

#ifndef _STL_VECTOR_H_
#define _STL_VECTOR_H_

#include <iostream>
#include "stl-start-base.h"
#include <vector>
#include <algorithm>
#include "class-score.h"

using namespace std;

class StlVector: public StlStartBase 
{
	public:
		virtual void start();
		
	private:
		 void vectorBase();

		 //赋值
		 void vectorAssign();
		 void vecotrSize();

		 //元素读取
		 void vectorElemAccess();

		 //vector的插入和删除
		 void vectorAD();

		 //使用swap收缩内存空间
		 void vectorSwap();

		 //vector嵌套
		 void vectorNest();

		 //使用STL算法对vector排序
		 void sortVector();

		 //存放自定义数据
		 void customObjVector();

		 void printVectorClassTeacher(vector<ClassTeacher> &v);

};

static bool compareClassTeacher(ClassTeacher &ob1,ClassTeacher &ob2);
#endif // _STL_VECTOR_H_

