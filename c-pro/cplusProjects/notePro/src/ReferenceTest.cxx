#include "ReferenceTest.h"


static void arrayRefrence();
static void pointerRefrence();
static void fun(void);
static void funReference();
static void argsReference();
static void swap01(int *p1,int *p2);
static void swap02(int &r1,int &r2);

namespace RT{
	//返回值类型作为引用，可以完成链式操作
	//value是常量的别名，定义这样的参数可以避免函数内部修改外部的值
	struct Stu{
		Stu& printStu(Stu &ob ,const int &value){
			cout << "stu value = " << value << endl;
			return ob;
		}
	};
}

//引用的本质就是给变量起个别名
//系统不会为引用开辟独立空间,被引用的变量必须初始化
//引用作为形参 可以节约空间
void ReferenceTest(){
	cout << "----------ReferenceTest start------------"<<endl;
	int a = 10;
	int &b = a;
	cout << "a = " << a << " , b = " << b << endl;
	cout << "a addr is " << &a << ", b addr : " << &b << endl;


	b =100;
	cout << "a = "
		<< a << " , b = " << b << endl;
	cout << "a addr is " << &a << ",   b addr : " << &b << endl;

	arrayRefrence();
	pointerRefrence();
	funReference();
	argsReference();
	
	RT::Stu stu;
	stu.printStu(stu,1).printStu(stu,2).printStu(stu,3);
	cout << "----------ReferenceTest end------------"<<endl;
}



// 作为函数参数 ，是引用的主要使用场景
// 函数内部可以作为引用 操作外部的变量
static void argsReference(){
	cout << "argsReference======" << endl;

	int a = 1 , b = 2;
	cout << "a = " << a << " , b = " << b << endl;
	swap01(&a,&b);
	cout << "swap01 a = " << a << " , b = " << b << endl;

	swap02(a,b);
	cout << "swap02 a = " << a << " , b = " << b << endl;
}

static void swap02(int &r1,int &r2){
	int temp = r1;
	r1 = r2;
	r2 = temp;
}

static void swap01(int *p1,int *p2){
	int temp = *p1;
	*p1 = *p2;
	*p2 = temp;
}

//函数的引用
static void funReference(){
	cout << "funReference======" << endl;
	void (&myfun)(void) = fun;
	myfun();
}

static void fun(void){
	cout << "fun() exec"<<endl;
}

//指针变量的引用
static void pointerRefrence(){
	cout << "pointerRefrence===========" << endl;
	int num = 10;
	int *p = &num;

	int* &mypointer = p;
	cout << "*p = " << *p << endl;
	cout <<"*mypointer = " << *mypointer << endl;
	
}

//数组的引用
static void arrayRefrence(){
	cout <<"arrayRefrence============"<<endl;
	int arr[5] = {1,2,3,4,5};
	int len = sizeof(arr)/sizeof(arr[0]);

	int (&myArr)[5] = arr;
	for(int i = 0;i< len;i++){
		cout << myArr[i] << " , ";
	}
	cout << endl;
}