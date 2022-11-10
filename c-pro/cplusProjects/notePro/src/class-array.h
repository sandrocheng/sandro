/* -*- Mode: C; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*-  */
/*
 * 动态数组处理类
 * 
 * 
 */

#ifndef _CLASS_ARRAY_H_
#define _CLASS_ARRAY_H_

#include <string.h>
#include <iostream>
using namespace std;

class ClassArray
{
	 public:
		static const int ERROR = -9999;
		
		ClassArray(int capactiy);
		ClassArray();
		ClassArray(const ClassArray &ca);
		~ClassArray();

		int getSize() const;
		int getCapacity() const;
		int* getArr() const;
		void printf();
		void addData(int elem);
		void delBack();//删除尾部元素
		int& at(int pos);
	 protected:

	 private:
		int size;//数组元素个数
		int *arr;//存放数组首元素地址
		int capacity;//容量，数组最大个数	

		int error;

		
		
 };

#endif // _CLASS_ARRAY_H_

