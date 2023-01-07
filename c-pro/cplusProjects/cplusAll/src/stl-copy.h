/*
 * stl-copy.h
 * 
 * 将容器内指定范围内的元素拷贝到另一个容器中
 * 注意 ：目标容器需要resize一下，dest必须是起始迭代器
 * @param begin	容器开始迭代器
 * @param end 容器结束迭代器
 * @param dest 目标起始迭代器
 * copy(iterator begin,iterator end,iterator dest)
 * 
 * 将容器内指定范围的旧元素，修改为新元素
 * @param begin	容器开始迭代器
 * @param end 容器结束迭代器
 * @param oldvalue 旧元素
 * @param newvalue 新元素
 * replace(iterator begin,iterator end,oldvalue,newvalue);
 * 
 * 将容器内指定范围满足条件的元素替换为新元素
 * @param begin	容器开始迭代器
 * @param end 容器结束迭代器
 * @param _callback 函数回调或者谓词（返回bool 类型的函数对象）
 * @param newvalue 新元素
 * replace_if(iterator begin,iterator end,_callback,newvalue)
 * 
 * 互换两个容器的元素
 * @param c1	容器1
 * @param c2    容器2
 * swap(container c1,container c2)
 */

#ifndef _STL_COPY_H_
#define _STL_COPY_H_
#include <iostream>
#include "stl-start-base.h"
#include <algorithm>
#include <vector>
#include <iterator> //终端迭代器

using namespace std;
class StlCopy: public StlStartBase 
{
	 public:
		 virtual void start();
	 private:
		 void stlCopyTest();
		 void stlReplace();
		 void replaceIf();
		 void stlSwap();
 };

#endif // _STL_COPY_H_

