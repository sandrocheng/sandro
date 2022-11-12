/*
 *多态
 * 多态是面向对象程序设计语言中数据抽象和继承之外的第三个基本特性
 * 多态性提供接口与具体实现之间的另一层隔离，从而将“what”和“how”分离开来。多态性改善了代码的可读性和组织性。
 * 同时也是创建的程序具有可扩展性，项目不仅在最初创建时期可以扩展，而且当项目在需要有新的功能时，也能扩展
 * 
 * 静态多态（编译时多态，早绑定）：函数重载，运算符重载、重定义（子类重定义父类函数）
 * 动态多态（运行时多态）：虚函数
 * 
 * 父类指针保存子类的空间地址：
 *		设计函数形参是父类的指针/引用类型，使用阶段，所有子类的指针/引用都可以传递给这个形参
 *      父类指针/引用 保存子类空间地址的目的 就是让算法通用 
 * 
 * 多态条件：有继承、子类重写父类的虚函数，父类指针指向子类空间
 * 
 * 动态绑定机制：
 * 	   如果一个类中的成员函数被virtual修饰，那么这个函数就是虚函数。类就会产生一个虚函数指针（vfptr）指向了一张虚函数表(vftable)
 *     如果这个类没有涉及到继承，这时虚函数表中记录的就是当前虚函数的入口地址
 *     如果这个类产生了子类对象，子类对象会继承父类的虚函数表
 *     如果子类重写了父类的虚函数，此时子类对象中的虚函数表（从父类继承下来的）会更新 该函数地址，为子函数地址
 * 
 * 子类重写父类virtual函数（void fun()）时 ，Base *b = new son(); b->fun() 的执行流程：
	 *		1 查找子类Dog中 从父类的继承虚函数表，找到 fun的地址
 *      2 此时fun的地址已经被覆盖为子类的fun()函数地址
	 *	    3 根据查找的地址（此时已经是子类fun()地址）执行了子类重新的fun函数
		 *
 * 重载 重定义 重写的区别
 * 重载：同一作用域，同名函数，参数的顺序个数，类型不同都可以重载。函数的返回值类型不能作为重载条件（函数重载，运算符重载）
 * 重定义：有继承，子类重定义父类的同名函数（非虚函数），参数顺序、个数、类型可以不同。子类同名函数会屏蔽父类的所有同名函数
 * 重写：有继承，子类重写父类的虚函数，返回值类型，函数名，参数顺序，个数，类型都必须一致。
 * 
 * 
 * 纯虚函数
 * virtual void baseVirFunc(void) = 0;
 * 一旦类中定义了纯虚函数，那么这个类就是个抽象类
 * 抽象类不能实例化对象
 *     polymorphismTest::Base b;//cannot declare variable ‘b’ to be of abstract type ‘polymorphismTest::Base’
 * 抽象类必须被继承，同时子类必须重写父类的所有纯虚函数，否则子类也是抽象类
 * 抽象类主要的目的是设计类的接口
 * 	
 */
#include <iostream>
using namespace std;


namespace polymorphismTest{
		 void exec();

		 class Animal{
			 public:
				 void speak(void){
					 cout << "Animal speak"<<endl;
				 }
		 };

		 class Dog : public Animal{
			 public:
				 void speak(void){
					 cout << "Dog speak"<<endl;
				 }
		 };


		 class Base{
			 public :
				 //父类方法定义虚函数
				 virtual void baseFun(){
					 cout << "baseFun() exec done!"<<endl;
				 }

				 //纯虚函数
				 //  子类一定会重写该函数
				 //  不会直接使用父类对象调用该函数
				 virtual void baseVirFunc(void) = 0;
		 };

		 class SonA:public Base{
			 public :
				 //子类重写 父类的虚函数：函数名，返回值类型、参数的类型、个数、顺序必须完全一致
				 void baseFun(){
					 cout << "SonA::baseFun() exec done!"<<endl;
				 }

				 void baseVirFunc(void){
					 cout << "SonA::baseVirFunc() exec done!"<<endl;
				 }
		 };

		 class SonB:public Base{
			 public :
				 void baseFun(){
					 cout << "SonB::baseFun() exec done!"<<endl;
				 }

				 void baseVirFunc(void){
					 cout << "SonB::baseVirFunc() exec done!"<<endl;
				 }
		 };
	 }

//虚函数测试
static void vitualFunTest();
static void BaseFuncExec(polymorphismTest::Base *base);


