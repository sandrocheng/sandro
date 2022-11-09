/* -*- Mode: C; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*-  */
/*
 * class-score.h
 * Copyright (C) 2022 sandro <sandro@sandro-Lenovo-XiaoXin-V4000>
	 *
 * notePro is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
	 * 
 * notePro is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License along
 * with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef _CLASS_SCORE_H_
#define _CLASS_SCORE_H_

#include <sstream>
#include <string.h>
#include <iostream>

using namespace std;

class ClassScore
{
	 public:
		 ~ClassScore();
		 
		 ClassScore();

		 ClassScore(const ClassScore &ob);

		 //赋值方式的隐式转换
		 // 单参数(或者除了第一个参数外其余参数都有默认值)的构造函数在构造的时候可以使用下面的语法
		 // ClassScore cs = 100; // 这个语句等于 ClassScore sc(100); 
		 // 这种语法就叫作赋值方式的隐式转换，但是有的时候赋值方式的隐式转换会容易造成误解
		 // 为了屏蔽这种调用方式，可以在该构造函数前 使用 explicit修饰。
		 // 修饰以后  ClassScore cs = 100;  这种对象构造的语句会在编译期间报错  error: conversion from ‘int’ to non-scalar type ‘ClassScore’ requested
		 explicit ClassScore(int math);

		 ClassScore(int math,int his);

		 void setMath(int math);
		 int getMath() const;
		 void setHis(int his);
		 int getHis() const;

		 char* getLog();


		 static int GET_COURSE();
	 protected:

	 private:
		 int mMath;
		 int mHis;
		 char *log = NULL;

		 //静态成员 定义类的时候，必须分配空间
		 //静态成员数据 必须类中定义，类外初始化
		 //静态成员数据，所有对象都共享
		 //静态成员数据可以直接使用类名称访问 如 ： ClassScore::course
		 static int course;		 
 };

#endif // _CLASS_SCORE_H_

