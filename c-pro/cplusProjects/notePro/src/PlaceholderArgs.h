#include <iostream>
using namespace std;

//占位参数
//c++ 在声明的时候可以设置占位参数。占位参数只有参数类型，而没有参数名
//一般情况下，在函数体内无法使用占位参数
//占位参数也是参数，必须传参

void PlaceholderArgsTest();

static void func01(int a,int b,int);

//占位参数也可以设置默认值，但是函数内部依旧无法使用占位参数
static void func02(int a,int b,int = 20);