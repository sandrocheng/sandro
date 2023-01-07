/* -*- Mode: C; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*-  */
/*
 * class-student.h
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

#ifndef _CLASS_STUDENT_H_
#define _CLASS_STUDENT_H_

#include <iostream>
#include <string.h>
#include "class-score.h"

using namespace std;

//C++类中的变量和函数分开存储
//内存为类实例开辟的空间是 各成员变量空间的总和（不包括static 变量的大小，static变量保存在另一个共享的空间中）
//this指针指向当前实例的内存地址，所以this指针只能作用于 非static的变量，this指针隐含于每个非static函数中
//静态成员函数里没有this指针，所以静态成员函数不能操作非静态成员变量
//用const修饰的成员函数时：
//   例： char* getName() const;
//   const修饰this指针指向的内存区域，成员函数体内不可以修改本类中的任何普通变量，当成员变量类型符前用mutable修饰除外
class ClassStudent
{
	//匿名枚举，只能当前类中使用 外部使用需要加类名 如 ClassStudent::LOW
	enum {LOW,HIGH};
	private :
		void createMem();
	public:

		//拷贝构造
		//  ClassStudent cs1;
		//  ClassStudent cs2 = cs1;
		//这种情况下cs2中的构造函数是不执行的，系统会执行一个默认的拷贝构造进浅拷贝
		//也可以重写拷贝构造，完成深拷贝操作，一般是内部有指针变量的时候，要考虑重写拷贝构造，避免数据问题
		//  如果用户定义了拷贝构造或者有参构造，系统会屏蔽默认的无参构造，
		//  如果用户定了无参构造或者有参构造 不会屏蔽拷贝构造

		// 普通对象作为函数参数，调用函数时，会发生拷贝构造
		//    Data ob(100);
		//    func(ob); //拷贝构造会执行
		ClassStudent(const ClassStudent &ob);

		ClassStudent();
		ClassStudent(int _age,char* _name);

		//对象成员的初始化列表
		//对象成员的有参构造函数无法在本构造函数中调用，使用 初始化列表的方式调用对象成员的有参构造函数
		ClassStudent(int _age,char* _name,int math,int his):score(math,his){
			createMem();
			init(_age,_name);
			setAddr((char *)"--null--");
		}

		//多个对象成员有参构造函数初始化列表声明
		//定义在cc文件中
		ClassStudent(int _age,char* _name,int math,int his,int lastmath,int lasthis);

		//析构函数，编译器会先调用析构函数，再释放空间
		//当类中有指针成员申请了堆区空间（new）,析构函数一定要注意释放空间（delete），否则会引起内存泄漏
		~ClassStudent();
	public:
		//内部定义，外部实现
		void init(int _age,char* _name);

		char* getName() const;

		int  getAge() const;

		void setName(char* _name);

		void setAge(int _age);

		ClassScore getScore();

		void printPer();

		bool isSamePer(ClassStudent &p2);

		void setAddr(char *_addr);

		// type
		// 0: 打印用户姓名
		// 1: 打印用户年龄
		// 其他：打印 score 中的成绩
		//通过返回自身实例的引用实现一个链式操作
		ClassStudent& printfData(int type);
	protected:

	private:
		int age;
		char name[32];
		char *addr;
		mutable int temp = LOW;//mutable修饰的变量可以在 const修饰的函数中修改

		//对象成员
		//初始化的时候先调用成员函数的构造函数，再调用本身的构造函数
		//析构函数和构造函数顺序相反，先调用本身的析构函数，在调用对象成员的析构函数
		ClassScore score;

		ClassScore lastscore;
};

#endif // _CLASS_STUDENT_H_

