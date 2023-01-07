/*
 * stl-func-obj.h
 * 函数对象:也叫仿函数，重载函数调用操作符"()"的类，使得类对象可以像函数那样调用
 * 注意：
 *      函数对象是一个类，不是函数
 *      
 * 分类：
 *		如果函数对象 有一个参数叫 ：一元函数对象
 * 		如果函数对象 有两个参数叫 ：二元函数对象
 *      如果函数对象 有三个参数叫 ：多元函数对象
 *       
 * 总结：
 * 	    函数对象通常不定义构造函数和析构函数，所以再构造和析构时不会发生任何问题，避免函数调用的运行时问题
 *		函数对象超出普通函数的概念，函数对象可以有自己的状态
 *      函数对象可内联编译，性能号。函数指针几乎不可能
 *      模板函数对象使函数对象具有通用性，这也是他的优势之一
 * 
 * 谓词：返回值为bool的普通函数或者仿函数 都叫谓词
 * 		如果谓词有一个参数叫 一元谓词
 * 		如果谓词有两个参数叫 二元谓词
 * 	  
 * 
 */

#ifndef _STL_FUNC_OBJ_H_
#define _STL_FUNC_OBJ_H_
#include <iostream>
#include "stl-start-base.h"
#include <algorithm>
#include <vector>

using namespace std;

class StlFuncObj: public StlStartBase 
{
	public:
		virtual void start();

	private:
		 void predicateTest();//谓词函数测试
};

class StlFuncObjTest{
	public:
		void operator()(char *str){
			cout << str << endl;
		}
};

class StlFuncObjMoreThan6{
	public:
		bool operator()(int value){
			return value > 6;
		}
};

class StlFuncObjSort{
	public:
		bool operator()(int v1,int v2){
			return v1 > v2;
		}
};

static bool moreThan4(int value);
#endif // _STL_FUNC_OBJ_H_

