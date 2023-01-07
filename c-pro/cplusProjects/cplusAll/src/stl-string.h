/* -*- Mode: C; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*-  */
/*
 * stl-string.h
 * char * 是一个指针，string 是一个类
 * string 封装了char* 管理这个字符串，是一个char型的容器
 * string 封装了很多使用的成员方法：查找 拷贝 删除 替换 插入 等
 * 不用考虑内存释放和越界
 *     string 管理char* 所分配的内存。每一次string的复制，取值都有string类负责维护，不用担心复制越界和取值越界的问题
 */

#ifndef _STL_STRING_H_
#define _STL_STRING_H_
#include <iostream>
#include "stl-start-base.h"
#include <string>
#include <exception>

using namespace std;

class StlString: public StlStartBase 
{
	public:
		virtual void start();
	private:
		/*
		 * string 和 c-style字符串转换
		 * 在c++中存在一个从 const char 到 string的隐式转换，却不存在一个从string对象到Cstring的自动转换类型
		 * 对于string类型的字符串，可以通过cstr()函数返回string对象对应的C_string。通常，程序员在整个程序中应坚持使用string对象
		 * 指导必须将内容转化为char时才将其转换为C_string字符串的内容，下标[]和at都会返回字符的引用。
		 * 
		 */
		void cStyle();

		//字符串的插入和删除
		void stringAD();

		//提取子串
		void stringSubstr();

		//字符串比较操作 compare函数在>时 返回1 ，< 时返回-1 ，==时 返回0
		//也可以使用 string1 == string2 或者 string == "xxxxx" 的方式判断内容是否相等
		void stringCompare();
		
		//字符串查找和替换
		void strFind();
		//string 的构造
		void strBuild();

		//string 赋值
		void strassign();
		
		//字符串的取字符操作
		void getChar();

		//字符串拼接操作
		void stringAppend();

		//字符串的一些基本操作
		void stringBase();

};

#endif // _STL_STRING_H_

