/* -*- Mode: C; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*-  */
/*
 * class-single-ton.h
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

#ifndef _CLASS_SINGLE_TON_H_
#define _CLASS_SINGLE_TON_H_

//单例
class ClassSingleTon
{
	 public:
		 //3 获得唯一的实例地址
		 static ClassSingleTon* getInstance();

		 void setCount(int count);
		 int getCount();
	 protected:

	 private:
		 //1 私有化构造函数 拷贝构造 析构函数
		 ClassSingleTon();
		 ClassSingleTon(const ClassSingleTon &ob);
		 ~ClassSingleTon();

		 //2 定义一个静态的指针保存唯一的实例地址
		 static ClassSingleTon * const p ;

		 int count;
 };

#endif // _CLASS_SINGLE_TON_H_

