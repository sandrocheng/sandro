/*
 *模板：
 * 	   将功能向哦同年，类型不同的函数（类）的类型抽象成虚拟的类型。当调用函数（类实例化对象）的时候，
 *     编译器自动将虚拟的类型具体化。这个就是函数模板（类模板）。
 *     
 * 
 * C++提供两种模板机制 ：函数模板和类模板
 * 
 * c++ 面向对象编成思想： 封装、继承、多态
 * c++泛型编程思想：模板
 * 模板分类 ： 函数模板、类模板
 * 
 * 函数模板会编译两次
 * 第一次：对函数模板本身编译
 * 第二次：函数调用处，将T的类型具体化
 * 函数模板目标：模板是为了实现泛性，可以减轻编成的工作量，增强函数的重用性
 * 
 * 注意：
 * 	   1 函数模板和普通函数都识别的时候，优先选择 普通函数
 *     2 函数模板和普通函数都识别的时候, 通过“<>”  可以强制使用模板
 * 		 例1：swapAll<>(a,b)
 *       例2： swapAll<int>(a,b) 强制使用T是int的模板
 *	   3 函数模板自动类型推导时 不能堆函数的参数进行自动类型转换
 *       例：int a =10 ; char b = 'x';
 *           swap(a,b);//这种会报错，因为两个参数类型不一样，函数模板也无法自动转换，所以模板不知道该使用那个具体函数
 *           swap<int>(a,b);//这种可以，相当于强制使用都是int参数的模板函数，因为char类型在作为实参的时候，可以自动转换为int类型 
 *
 * 函数模板重载：方法名一样，参数个数不一样的多个函数模板
 * 函数模板的局限性：
 *      当函数模板推导出 T 维数组或其他自定类型数据 可能导致模板中运算符不识别。
 * 			例如：MyData data
                 swap(data);//如果swap模板函数中使用了 cout<<arg<<endl;就会出现错误。
 * 		解决方法一，运算符重载（推荐）
 *      解决方法二，函数模板具体化，就是实现一个同名的函数参数是模板中符号不识别的对象类型，单独对这种情况处理。
 */

#include <iostream>

using namespace std;

namespace MyTemplate{
	void exec();

	//函数模板 T只对当前函数有效
	//函数调用时根据实参的类型 会自动推导T的类型
	template<typename T> void swapAll(T &a,T&b);

	void swapAll(double &a,double &b);

	template<typename T> void print(T &a,T&b); 
	template<typename T> void print(T &a); 


}
static void funTemplateTest();
static void templateOverride();