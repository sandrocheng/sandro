/* -*- Mode: C; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*-  */
/*
 * class-student.cc
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

#include "class-student.h"

void ClassStudent::setAge(int _age){
	if(_age > 100 || _age<0){
		cout << "age should <100 and >0"<< endl;
		return;
	}
	age = _age;
}

void ClassStudent::init(int _age,char* _name){
	setAge(_age);
	setName(_name);
}

char* ClassStudent::getName(){
	return name;
}

int ClassStudent::getAge(){
	return age;
}

void ClassStudent::setName(char* _name){
	strcpy(name,_name);
}

void ClassStudent::printPer(){
	cout << "ClassStudent object name : " << getName() <<" , age : " << getAge() << endl;
}

bool ClassStudent::isSamePer(ClassStudent &p2){
	if(strcmp(getName(),p2.getName()) != 0){
		return false;
	}
	return getAge() == p2.getAge();
}

//构造函数实现
ClassStudent::ClassStudent(){
	char name[] = "-";
	setName(name);
	setAge (0);
}

ClassStudent::ClassStudent(int _age){
	char tempName[] = "-";
	init(_age,tempName);
}


