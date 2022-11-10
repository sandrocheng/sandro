/* -*- Mode: C; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*-  */
/*
 * class-score.cc
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

#include "class-score.h"
int ClassScore::course = 2;//不用加static

ClassScore::ClassScore(){ 
	mMath = -1;
	mHis = -1;
	cout << "ClassScore create" << endl;
}

ClassScore::ClassScore(int _math){
	setMath (_math);
}

ClassScore::ClassScore(int _math,int _his){
	setMath(_math);
	setHis(_his);
}

ClassScore::ClassScore(const ClassScore &ob){
	log = new char[128];
	mHis = ob.getHis ();
	mMath = ob.getMath ();
}

ClassScore::~ClassScore(){ 
	if(log != NULL){
		delete []log; 
	}
}

int ClassScore::GET_COURSE(){
	return course;
}

char* ClassScore::getLog(){
	if(log == NULL){
		log = new char[128];
	}

	ostringstream strMath;
	strMath << mMath;

	ostringstream strHis;
	strHis << mHis;

	strcpy(log,"math :");
	strcat(log,strMath.str().data());
	strcat(log," , his : ");
	strcat(log,strHis.str().data());
	return log;
}

void ClassScore::setMath(int math){
	mMath = math;
}

int ClassScore::getMath() const{
	return mMath;
}

void ClassScore::setHis(int his){
	mHis = his;
}

int ClassScore::getHis() const {
	return mHis;
}

void ClassScore::printf(ClassTeacher &teacher){
	cout << "teacher name : " << teacher.name << " , age : " << teacher.age << endl; 
}

ClassTeacher::ClassTeacher(int age, char *name ){
	this->age = age;
	strcpy(this->name,name);
}


