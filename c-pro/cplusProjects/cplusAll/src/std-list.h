/*
 * std-list.h
 * list : 链表容器，非连续，非顺序的存储结构
 * 每个节点包含两部分： 存储数据元素的数据域，另一个是存储下一个节点地址的指针域
 * list是一个双向链表
 * 相比vector优点
 * 		对于任何位置元素的插入和删除效率比vector高，永远是常数时间
 *      对空间的使用更精准，不浪费空间
 * 缺点：
 *     链表灵活，但是空间和时间消耗更大，空间时间换效率
 * 
 * 从使用方面来说使用起来和 vector 差不多，函数名基本一样
 */

#ifndef _STD_LIST_H_
#define _STD_LIST_H_

#include <iostream>
#include "stl-start-base.h"
#include "list"
#include "algorithm"

using namespace std;

class StdList: public StlStartBase 
{
	public:
		virtual void start();
	private:
		void listBase();
		void printListInt(list<int> &l);

};

#endif // _STD_LIST_H_

