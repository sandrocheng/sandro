/*
 * class-score.cc
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

int ClassTeacher::getAge() const{
	return this->age;
}
char* ClassTeacher::getName() const{
	return (char *)this->name;
}

float ClassTeacher::getSalary() const{
	return this->salary;
}
void ClassTeacher::setSalary(float salary){
	this->salary = salary;
}


