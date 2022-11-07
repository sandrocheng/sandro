//c函数 void MyFunc(){} ,会被编译成 MyFunc
//c++函数 void MyFunc(){} ,回被编译成 _Z6MyFuncv (不同编译器，编译出来的方法名可能会不一样)
//所以说同一个方法，c 和 c++ 编译出来的名称会不一样，导致c++ 不能直接调用c的方法
// extern "C" 的主要作用就是为了实现c++代码能够调用其他c语言代码。加上extern "C"后，这部分代码按照c语言的方式进行编译和链接，而不是按照c++的方式。
#include<stdio.h>

# if __cplusplus //c++ 自定义宏 __cplusplus，判断当前编译环境是否是c++环境
extern "C"{
#endif	
	extern void externCTest01();
	extern int externCTest02(int a,int b);
# if __cplusplus
}
#endif