#include "ReferenceTest.h"


//引用的本质就是给变量起个别名
//系统不会为引用开辟独立空间,被引用的变量必须初始化
void ReferenceTest(){
	cout << "----------ReferenceTest start------------"<<endl;
	int a = 10;
	int &b = a;
	cout << "a = " << a << " , b = " << b << endl;
	cout << "a addr is " << &a << ", b addr : " << &b << endl;


	b =100;
	cout << "a = " << a << " , b = " << b << endl;
	cout << "a addr is " << &a << ",   b addr : " << &b << endl;

	cout << "----------ReferenceTest end------------"<<endl;
}