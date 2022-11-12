#include <iostream>

using namespace std;

void inheritTest();
static void inheritBaseTest();
static void inheritSameNameTest();
static void samenameFunTest();
static void mutiInheritTest();
static void diamonInherTest();
static void virtualInherTest();

//所有父类私有成员在子类中都不可访问
// public 继承 ： 所有成员保持不变
// protected 继承 ： 父类public 成员在子类变成了protected
// private 继承： 父类public protected成员在子类变成了private;
// 父类的构造函数、析构函数和 operator= 是不能继承的
// operator= 完成的是类似父类的构造函数，所以无法继承
class Base{
	private :
		int privateA = -1;

	protected:
		int protectedB = -2;

	public :
		int publicC = -3;
		int publicD = -4;
		Base(){
			cout<<"Base 类无参构造"<<endl;
		}
		Base(int d){
			this->publicD = d;
			cout<<"Base 类有参构造"<<endl;
		}
		~Base(){
			cout << "Base 类析构"<<endl;
		}

		void fun1(){
			cout<<"base fun1()"<<endl;
		}

		void fun1(int x){
			cout<<"base fun1(int x)"<<endl;
		}

		void fun1(int x,int y){
			cout << "base fun1(int x,int y)"<<endl;
		}
};

class Other{
	private :
		int mo = 0;
	public :
		Other(){
			cout<<"Other 类构造"<<endl;
		}
		Other(int mo){
			this->mo = mo;
			cout<<"Other 类有参构造"<<endl;
		}

		~Other(){
			cout<<"Other 类析构"<<endl;
		}
};

// 子类构造顺序 父类构造->成员对象构造->子类构造
// 子类析构顺序 子类构造->成员对象构造->父类构造
// 子类实例化对象时会自动调用 成员对象、父类的默认构造
// 子类实例化对象时 必须使用初始化列表调用成员对象、父类的有参构造
// 初始化列表时 ： 父类写父类名称，成员对象写对象名
class SonA:public Base{
	public :
		Other other;
		SonA(){
			cout<<"SonA 类构造"<<endl;
		}
		SonA(int a,int b,int c):Base(c),other(b){
			this->publicC = c;
			this->protectedB = b;
		}
		~SonA(){
			cout << "SonA 类析构"<<endl;
		}
		void print(){
			//公共继承只能使用父类的 public 和 protected成员，父类的private访问不了。
			cout <<"publicC : "<< publicC << " , protectedB : "<< protectedB << endl; 
			//			out <<"privateA : "<< privateA;//编译器会报错
		}
};


class SonB:protected Base{
	public :
		void print(){
			//保护继承只能使用父类的 public 和 protected成员，并把public成员变成protected类型，父类的private访问不了。
			cout <<"publicC : "<< publicC << " , protectedB : "<< protectedB << endl; 
			//			out <<"privateA : "<< privateA;//编译器会报错
		}
};

class SonC:private Base{
	public :
		void print(){
			//私有继承只能使用父类的 public 和 protected成员，这些成员变成private类型，父类的private访问不了。
			cout <<"publicC : "<< publicC << " , protectedB : "<< protectedB << endl; 
			//			out <<"privateA : "<< privateA;//编译器会报错
		}
};

//同名成员 最简单最安全的处理方式：加作用域 
// SonB son(1,2);
// son.Base::publicC;//外部调用时 加作用域
//子类默认优先访问子类的同名成员
//必须加作用域访问父类的同名成员
class SonD:public Base{
	public :
		int publicD = 4;
		SonD(){};
		SonD(int _sonD,int BaseD):Base(BaseD){
			publicD = _sonD;
		}

		void baseDChange(){
			Base::publicD+=500;//子类内部访问父类同名成员，需要加作用域
		}
};

//重载：无继承，同一作用域，参数的个数不同，顺序不同，类型不同，都可以重载
//重定义：有继承，子类重定义父类的同名函数（参数可以不同）
//     （非虚函数）子类一旦重定义了父类的同名函数（不管参数是否一致），子类都将屏蔽父类所有的同名函数
//如果需要调用父类同名函数需要加域名
//例子
//	SonE sonE;
//	sonE.fun1();
//	sonE.Base::fun1();
//	sonE.Base::fun1(4);
class SonE:public Base{
	public :

		void fun1(){
			cout<<"SonE fun1()"<<endl;
		}
};

