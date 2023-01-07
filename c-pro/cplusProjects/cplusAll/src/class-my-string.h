
/*
 * class-my-string.h
 */

#ifndef _CLASS_MY_STRING_H_
#define _CLASS_MY_STRING_H_
#include <string.h>
#include <iostream>

using namespace std;
class ClassMyString;

class ClassMyString
{
	//符号左边是 ostream ,所以只能用全局函数重载 operator <<
	friend ostream& operator <<(ostream &out,ClassMyString ob);
	public:
		ClassMyString();
		ClassMyString(char *);
		ClassMyString(const ClassMyString &str);
		~ClassMyString();

		int getSize();

		//成员函数重载[]运算符
		char& operator[](int pos);

		//成员函数重载+ 运算符 两个 ClassMyString对象相加
		ClassMyString operator+(ClassMyString &ob);

		//成员函数重载+ 运算符 ClassMyString + "xxx"
		ClassMyString operator+(char* string);

		//成员函数重载= 运算符，注意有指针变量需要深拷贝
		//返回引用可以 在调用的时候完成链式操作 如 ： str1 = str2 = str3
		ClassMyString& operator=(ClassMyString &ob);
		ClassMyString& operator=(char* string);

		//成员函数重载 > 运算符 
		bool operator>(ClassMyString &ob);
		bool operator>(char* string);

		char error = '\0';
	private:
		char *str;
		int size;

};



#endif // _CLASS_MY_STRING_H_

