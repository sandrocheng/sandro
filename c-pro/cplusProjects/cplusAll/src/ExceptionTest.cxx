#include "ExceptionTest.h"


void ExceptionTest::exec(){
	cout<<"------ExceptionTest start---------"<<endl;
	baseException();
	stackPushOut();
	throwDefineExeception();
	myExceptionTest();
	myExceptionTest2();
	myExceptionTest3();
	polymorphicException();
	cout<<"------ExceptionTest end-----------"<<endl;
}

void polymorphicException(){
	cout << "polymorphicException=========="<<endl;
	try
	{
		throw ExceptionTest::NullPointerException();
	}
	catch(ExceptionTest::BaseException &e)
	{
		e.printErr();
	}

	try
	{
		throw ExceptionTest::OutofRangeException();
	}
	catch(ExceptionTest::BaseException &e)
	{
		e.printErr();
	}

	try
	{
		throw range_error("range_error");
	}
	catch(exception &e)
	{
		cout <<e.what()<<endl;
	}

	try
	{
		throw ExceptionTest::MyStdException("MyStdException");
	}
	catch(ExceptionTest::MyStdException &e)
	{
		cout <<e.what()<<endl;
	}
}

void myExceptionTest3(){
	cout << "自定义异常类,使用引用接收异常（推荐）=====" << endl;
	try{
		throw ExceptionTest::MyException();//抛出一个对象的引用
	}catch(ExceptionTest::MyException &e){//不用对象拷贝，也不需要手动释放内存
		cout << "使用指针接异常" << endl;
	}

}

void myExceptionTest2(){
	cout << "自定义异常类,使用指针接收异常=====" << endl;
	try{
	throw new ExceptionTest::MyException();//抛出一个异常对象的指针
	}catch(ExceptionTest::MyException *e){//不用对象拷贝，但是需要手动释放
		cout << "使用指针接异常" << endl;
		delete e;
	}
}

void myExceptionTest(){
	cout << "自定义异常类,使用普通对象接收异常=====" << endl;
	try{
		throw ExceptionTest::MyException();
	}catch(ExceptionTest::MyException e){//有拷贝发生，效率较底
		cout << "使用普通对象接异常" << endl;
	}
}

void throwDefineExeception(){
	cout << "抛出指定异常=====" << endl;
	try{
		fun01();
	}catch(int i){
		cout<< " int char exeception " << i << endl;
	}catch(char c){
		cout<< " catch char exeception " << c << endl;
	}	 
}

void fun01() throw (int ,char){
	throw '1';
}

void stackPushOut(){
	cout << "栈解旋测试=====" << endl;
	try{
		ExceptionTest::Data data1(1);
		ExceptionTest::Data data2(2);
		ExceptionTest::Data data3(3);
		throw 1;
	}catch (...){
		cout << "异常捕获"<<endl;
	}
}

void baseException(){
	cout << "baseException=====" << endl;

	try{
		throw 3.1f;
	}catch(int a ){//捕获 int 类型的异常
		cout << "catch int exception value is " << a <<endl;
	}catch(char b){//捕获 char类型的异常
		cout << "catch char exception , value is" << b <<endl;
	}catch(...){//捕获其他异常
		cout << "catch null exception!"<<endl;
	}
}

namespace ExceptionTest{
	Data::Data(){};
	Data::Data(int num){
		this->num = num;
		cout << "构造函数 " << num << endl;
	};
	Data::~Data(){
		cout << "析构函数 " << this->num<< endl;
	};
}