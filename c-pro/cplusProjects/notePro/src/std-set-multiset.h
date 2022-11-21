/*
 * std-set-multiset.h
 * set：所有元素都会根据元素的键值自动排序，set的元素即是键值又是实值
 * 		set不允许两个元素有相同的键值
 *	multiset特性和用法与set完全相同，为一差别再与它允许键值重复
 * 
 * set内部是通过平衡二叉树管理数据的，一旦插入再修改，平衡二叉树布局更改，就无法按顺序读取数据，
 * 所以set的迭代器不能修改值，使用的是 只读迭代器 const_iterator
 */

#ifndef _STD_SET_MULTISET_H_
#define _STD_SET_MULTISET_H_
#include <iostream>
#include "stl-start-base.h"
#include <set>
#include "class-score.h"


using namespace std;

//使用仿函数设置set的排序规则，因为仿函数即是函数，也可以当类型使用
class MySetIntSort
{
	public :
		bool operator()(int v1,int v2){
			return v1>v2;
		}
};

class MySetClassTeacherSort
{
	public :
		//这里不能用引用
		bool operator()(ClassTeacher ct1,ClassTeacher ct2){
			return ct1.getAge() < ct2.getAge();
		}
};

class StdSetMultiset: public StlStartBase 
{
	public:
		virtual void start();

	private:
		void setBasic();
		void printSetInt(set<int> &st);
		void printSetInt(set<int,MySetIntSort> &st);
		void setCustom();
		void printSetClassTeacher(set<ClassTeacher,MySetClassTeacherSort> &st);
		void setFindApi();
};

#endif // _STD_SET_MULTISET_H_

