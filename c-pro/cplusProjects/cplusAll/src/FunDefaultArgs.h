#include<iostream>
using namespace std;

//函数的默认参数
//c++在声明函数原型的时候可为一个或者多个参数指定默认的参数值，当函数调用的时候如果没有指定这个值，编译器会自动用默认值代替
//注意点 ：
//    如果函数生命和函数分开，函数声明设置了默认参数，函数定义不能在设置参数
//	  TestFun02 形参b定义了默认值，那么后面位置的型参c也要设置默认参数
//    默认参数和函数重载同时出现，要注意二义性
//       例：
//          void func(int x);
//          void func(int x,int y=10);
//          func(10,20);// ok
//          func(10);// error 无法确定是调用哪个方法 
void FunDefaultArgs();

//如果没有传参数，那么使用默认参数
//如果传1个参数，那么第二个参数使用默认值
//如果传两个参数，则不会使用默认值
static void TestFun01(int a=10,int b=40);

static void TestFun02(int a,int b=10,int c=50);

