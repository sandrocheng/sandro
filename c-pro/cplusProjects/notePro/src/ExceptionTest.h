/*
 *异常：程序运行的过程中发生的一些异常事件（除0溢出，数组下标越界，所有读取的文件不存在，内存不足，访问非法内存等等）
 * 异常是一个类
 * 相比c语言异常处理的优势
 * 	   函数返回值可以忽略，但异常不可忽略（忽略异常，程序结束）,c语言一般是通过返回值处理异常
 *     整形返回值没有任何语义信息。而异常却包含语义信息
 * 
 * 栈解旋
 * 异常被抛出后，从进入try开始，到异常被抛出前，这期间栈上构造的所有对象都会被自动析构，析构顺序域构造的顺序相反，这一过程称为栈解旋
 * 
 * 异常的接口声明：描述的是当前可以抛出哪些异常
 * 	1、函数默认可以抛出任何异常
 *	2、通过throw 修饰函数名，抛出指定异常	
 * 		例：void fun() throw(int,char,char* ...)//代表可以抛出 int char char指针 等异常
 *          这种方法方式有些编译器会给出警告
 *  3、通过 throw () 不抛出任何异常
	 * 
 * 异常多态：和类的多态是一样的
 * c++ 标准异常exception 是所有异常的父类，自定义异常推荐继承这个类，并实现exception类的抽象方法
 * 
 * 
 */

#include <iostream>
#include <string>
#include <exception>
using namespace std;

namespace ExceptionTest{
	 void exec();
	 class Data{
		 private :
			 int num = 0;
		 public :
			 Data ();
			 Data (int num);
			 ~Data();
	 };

	 class MyException{
		 public :
			 MyException(){
				 cout << "异常构造"<<endl;
			 };
			 MyException(const MyException &e){
				 cout << "异常类对象复制构造"<<endl;
			 }
			 ~MyException(){
				 cout << "异常类对象析构"<<endl;
			 };
	 };

	 class BaseException{
		 public :
			 virtual void printErr(){};
	 };

	 class NullPointerException : public BaseException{
		 public : 
			 virtual void printErr(){
				 cout<<"NullPointerException"<<endl;
			 }; 
	 };

	 class OutofRangeException : public BaseException{
		 public :
			 virtual void printErr(){
				 cout << "OutofRangeException" << endl;
			 }
	 };

	 class MyStdException : public exception{
		 private:
			 string msg;
		 public :
			 MyStdException(){};
			 MyStdException(string msg){
				 this->msg = msg;
			 }
			 //重写父类what()函数
			 virtual const char* what() const throw() {//防止父类在子类前抛出标准异常
				 return this->msg.c_str();//将string转换成char *
			 }
			 ~MyStdException(){};
	 };
 }
static void polymorphicException();
static void myExceptionTest();
static void myExceptionTest2();
static void myExceptionTest3();
static void baseException();
static void stackPushOut();
static void throwDefineExeception();//抛出指定异常
static void fun01() throw (int ,char);