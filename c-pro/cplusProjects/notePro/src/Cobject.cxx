#include "Cobject.h"

int Cobject_data = 10;

namespace A{
	int a ;
	void printA(){
		cout << "namespace A printA : " << a << endl;
	}
}

namespace B{
	int a;
	namespace C{
		int a = 10;
	}
}

namespace B{
	void printA(){
		cout << "namespace A printA : " << a << endl;
	}
}

namespace MySpace{
	void fun1();
	void fun2();
	void fun2(int param);
	void fun2(int x,int y);
	void fun3();
}

void CobjectTest(){
	cout<< "-------------CobjectTest start--------------" << endl;
	int Cobject_data = 20;
	cout << "局部变量 Cobject_data : " << Cobject_data << endl;
	cout << "全局变量 Cobject_data : " << ::Cobject_data << endl;

	A::a = 30;
	B::a = 20;
	cout << "A::a is " << A::a << endl;
	cout << "B::a is " << B::a << endl;
	cout << "B::C::a is " << B::C::a << endl;
	A::printA();
	B::printA();

	MySpace::fun1();
	MySpace::fun2(1);

	namespace ms = MySpace;
	ms::fun1();

	using MySpace::fun1;
	fun1();

	using MySpace::fun2;
	fun2();
	fun2(1);
	fun2(2,3);

	using namespace MySpace;
	fun3();
	cout<< "-------------CobjectTest end--------------" << endl;	
}

void MySpace::fun3(){
	cout << "MySpace fun3" << endl;
}

void MySpace::fun2(){
	cout << "MySpace fun2  " <<endl;
}

void MySpace::fun2(int param){
	cout << "MySpace fun2 , param is " << param <<endl;
}

void MySpace:: fun1(){
	cout << "MySpace fun1"<<endl;
}

void MySpace::fun2(int x,int y){
	cout << "MySpace fun2 , x is " << x << " , y is " << y << endl;
}