#include <iostream>
using namespace std;

//函数重载 是C++的多态的特性（静态多态）
//用同一个函数名代表不同的函数功能
//同一作用域，函数的参数类型、个数、顺序不同都可以重载。（返回值类型不能作为重载的条件）

//函数重载的地层实现原理
//  下面几个函数在linux生成的编译后的函数名称为
//   _z4pringFunv  v代表void，无参数
//   _z4pringFuni  i代表参数为int类型
//   _z4pringFunic i代表第一个参数为int类型，第二个参数位char类型
//   ...
//  不同编译器可能会禅师不同的内部名，这里只是举例说明

void FunOverrideTest();

static void printFun(int a);
static void printFun(int a,char b);
static void printFun(char a,int b);
static void printFun(char a);