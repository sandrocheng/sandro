/*
 * std-map.h
 * 
 * map:所有元素会根据键值自动排序，map容器每个元素都是对组，有键值和实值
 *     pair的第一元素被视为键值，第二元素被视为实值，map不允许两个元素有
 *     相同的键值，map和set一样不允许修改键值，但是可以修改实值 
 * map和list有某些相同的性质，当对它容器元素进行新增操作或者删除操作时
 * 操作之前的所有迭代器，在操作完成之后依然有效，当然被删除的那个元素的
 * 迭代器必然是个例外
 * 
 * 大部分api和set一样
 * 
 * map和multimap的操作类似，为一区别multimap键值可以重复，map和multimap都是以红黑数为地层实现机制
 */

#ifndef _STD_MAP_H_
#define _STD_MAP_H_

#include <iostream>
#include "stl-start-base.h"
#include <map>
#include "class-score.h"


using namespace std;

class StdMap: public StlStartBase 
{
	public:
		virtual void start();
	private:
		void mapBasic();
		void printMap(map<int,ClassTeacher> &m);
		void multimapExample();
		void printMultiMap(multimap<int,ClassTeacher> &m);
		void printMultiMapByAge(multimap<int,ClassTeacher> &m,int age);
};

#endif // _STD_MAP_H_

