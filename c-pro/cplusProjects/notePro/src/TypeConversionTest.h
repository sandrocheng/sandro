/*
 *类型转换
 * c语言风格 int a = (int) (7f+6d) c语言强转只负责转化，部负责结果
	 * c++强转：可以提供更好的控制强制转换控制，允许不同类型的强制转换，它能更清晰的表明，要做什么
 * 
 * 上行转换：子类空间给父类指针保存（安全），相当于将大的空间交给小的指针去操作
 * 下行转换：父类空间给子类指针保存 (不安全，肯能造成指针越界)，相当于将小的空间交给大的指针区操作。
	 * 
 * static_case静态类型转换
 * 用于类层次中基类（父类）和派生类（子类）之间指针或者引用的转换（支持基本类型）
 * 
 * dynamic_cast 动态类型转换
 * 主要用于类层次间的下行转换（不支持基本类型，不支持下行转换）
 * 
 * const_cast 常量转换
 * 将const修饰的指针或者引用转换成非const
 * 将非const修饰的指针或者引用转换成const
 * 
 * reinterpret_cast重新解释转换 （最不安全）
 * 不支持基本类型
 * 支持 基本指针类型，上下行转换，不相关类型也支持
 * Base *p3 = reinterpret_cast<Base *>(new Other());
 */

#include <iostream>
using namespace std;

namespace TypeConversionTest{
	 void exec();

	 class Base{
		 public :
			 char *name;
			 Base();
			 Base(char * baseName);
	 };

	 class Son:public Base{
		 public :
			 char *nickName;
			 Son(){};
			 Son(char *baseName,char *nickName);
	 };
	 

	 class other{
		 public :
			 int num;
	 };
	 
 }

static void constCastTest();
static void staticCastTest();
static void dynamicCastTest();
