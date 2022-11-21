
/*
 * stl-deque.h
 * deque容器
 * 双端开口的连续动态空间，可以在头尾两端分别作元素的插入和删除。
 * vector虽然也可以在头部操作，但是效率非常低，deque在头部插入删除不会随着容器大小变大而消耗更多时间
 * 因为deque是动态的分段连续空间组合而成，他不会像vector那样，在旧空间不足时，需要重新配置一块更大空间，然后复制元素再释放旧空间。
 * 但是 deque迭代器的复杂程度比vector高很多，因此除非必要，应该尽可能使用vector，对deque进行的排序操作，为了提高效率，可将deque完整复制到vector中去
 * 对vector排序再复制回deque
 * 
 * vector每次配置新的空间都会留有富裕，因此空间拓展的代价是比较昂贵的，deque是由一段一段定量的连续空间组成。 
 * 再应用上dequeAPI基本和vector一样
 *
 */

#ifndef _STL_DEQUE_H_
#define _STL_DEQUE_H_

#include <iostream>
#include "stl-start-base.h"
#include <deque>
#include <vector>
#include <algorithm>
#include <numeric>
#include <time.h>
#include "class-score.h"
using namespace std;

class StlDeque: public StlStartBase 
{
	public:
		virtual void start();

	private:
		void dequeBase();
		void printIntDeque(deque<int> &d);

		//去除最高分，取平均分的练习
		void practice();
		void showVectorClassTeacher(vector<ClassTeacher> &v);
		void payTeacher(vector<ClassTeacher> &v);

};

#endif // _STL_DEQUE_H_

