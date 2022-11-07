#include "ClassTest.h"
#include "class-student.h"

void classTest(){
	cout << "-----------classTest start-----------" << endl;
	Data data;
	data.setA(7);
	data.c = 5;
	data.showData();

	Person per;
	char name[] = "bob";
	per.init(20,name);
	per.printPer();
	cout << "getName() : " << per.getName()<<endl;

	Person p2;
	char name2[] = "cici";
	p2.init(20,name);
	if(isSamePer(p2,per)){
		cout <<"is same person" << endl;
	}else{
		cout << "is not same person" << endl;
	}

	if(p2.isSamePer(per)){
		cout <<"p2.isSamePer(per)  return true" << endl;
	}else{
		cout << "p2.isSamePer(per) return false" << endl;
	}

	ClassStudent cs;//隐式无参构造函数 推荐
	cs.printPer ();
	ClassStudent cs2 = ClassStudent(10);
	cs2.printPer ();
	ClassStudent cs3(22);//隐式调用有参数构造函数 推荐
	cs3.printPer ();
	cout << "-----------classTest end-------------" << endl;
}

static bool isSamePer(Person &p1,Person &p2){
	if(strcmp(p1.getName(),p2.getName()) != 0){
		return false;
	}
	return p1.getAge() == p2.getAge();
}
//Person 函数实现
void Person::setAge(int _age){
	if(_age > 100 || _age<0){
		cout << "age should <100 and >0"<< endl;
		return;
	}
	age = _age;
}

void Person::init(int _age,char* _name){
	setAge(_age);
	setName(_name);
}

char* Person::getName(){
	return name;
}

int Person::getAge(){
	return age;
}

void Person::setName(char* _name){
	strcpy(name,_name);
}

void Person::printPer(){
	cout << "person name : " << getName() <<" , age : " << getAge() << endl;
}

bool Person::isSamePer(Person &p2){
	if(strcmp(getName(),p2.getName()) != 0){
		return false;
	}
	return getAge() == p2.getAge();
}