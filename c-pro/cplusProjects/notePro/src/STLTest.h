/*
 * STL(Standard Template Library)标准库模板
 * STL六大组件
 * 	容器：存放数据
 *  算法：操作数据
 *  迭代器：算法只能借助迭代器操作容器数据
 *  仿函数：为算法提供更多的策略
 *  适配器：为算法提供更多的参数的接口
 *  空间配置器 ： 为算法和容器动态分配、管理空间 
 * 
 * 算法，分为变质算法和非变质算法
 * 变质算法：是指运算过程中会更改区间内的元素的内容。例如拷贝，替换，删除等
 * 非变质算法：是指运算过程中不会更改区间内的元素内容，例如查找，计数，遍历，寻找极值等
 */

#include <iostream>
#include "stl-start-base.h"
#include "stl-string.h"
#include "stl-vector.h"
#include "stl-deque.h"
#include "stl-stack-and-queue.h"
#include "std-list.h"
#include "std-set-multiset.h"
#include "std-pair.h"
#include "std-map.h"
using namespace std;

namespace STLTest{
	void exec();
}

static void startSTLExample(StlStartBase *base);