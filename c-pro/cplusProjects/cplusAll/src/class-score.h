/*
 * class-score.h
 */

#ifndef _CLASS_SCORE_H_
#define _CLASS_SCORE_H_

#include <sstream>
#include <string.h>
#include <iostream>



using namespace std;

class ClassTeacher;
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

		 void printf(ClassTeacher &teacher);
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

class ClassTeacher{
	//ClassScore作为ClassTeacher的有元，当ClassScore调用printf 的时候就可以直接访问ClassTeacher的私有变量
	friend void ClassScore::printf(ClassTeacher &teacher);
	private :
		int age;
		char name[32];
		float salary = 0;
	public :
		ClassTeacher(int age=0 , char *name = (char *)"--null--");
		int getAge() const;
		char* getName() const;
		float getSalary() const;
		void setSalary(float salary);
};

#endif // _CLASS_SCORE_H_

