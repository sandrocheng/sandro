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

using namespace std;

class ClassStudent
{
	 public:
		 ClassStudent();
		 ClassStudent(int _age);
	 public:
		//内部定义，外部实现
		void init(int _age,char* _name);

		char* getName();

		int getAge();

		void setName(char* _name);

		void setAge(int _age);

		void printPer();

		bool isSamePer(ClassStudent &p2);
	 protected:

	 private:
		 int age;
		 char name[32];

 };

#endif // _CLASS_STUDENT_H_

