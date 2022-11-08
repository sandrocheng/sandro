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

char* ClassStudent::getName() const{
	return (char *) name;
}

int ClassStudent::getAge() const {
	return age;
}

void ClassStudent::setName(char* _name){
	strcpy(name,_name);
}

void ClassStudent::printPer(){
	cout << "ClassStudent object name : " << name <<" , age : " << getAge() << " , addr : " << addr 
		<< " , his : " << score.getHis() << " , math : " << score.getMath() 
		<< " , lastmath : " << lastscore.getMath () << " , lasthis : "<< lastscore.getHis () << endl;
}

bool ClassStudent::isSamePer(ClassStudent &p2){
	if(strcmp(getName(),p2.getName()) != 0){
		return false;
	}
	return getAge() == p2.getAge();
}

void ClassStudent::createMem(){
	addr = new char[32];
}

void ClassStudent::setAddr(char *_addr){
	strcpy(addr,_addr);
}

ClassStudent::ClassStudent(const ClassStudent &ob){
	createMem();
	init(ob.getAge (),ob.getName ());
	setAddr((char *)"--copy--");
}

//构造函数实现

ClassStudent::ClassStudent(int _age,char* _name,int math,int his,int lastmath,int lasthis):score(math,his),lastscore(lastmath,lasthis){
	createMem();
	init(_age,_name);
	setAddr((char *)"--score2--");
}

ClassStudent::ClassStudent(){
	createMem();
	init(0,(char *)"--null--");
	setAddr((char *)"--null--");
}

ClassStudent::ClassStudent(int _age,char* _name){
	createMem();
	init(_age,_name);
	setAddr((char *)"--null--");
}

ClassStudent::~ClassStudent(){
	delete [] addr;
	cout << "ClassStudent 析构函数调用 " << name << " " << age << endl; 
}

