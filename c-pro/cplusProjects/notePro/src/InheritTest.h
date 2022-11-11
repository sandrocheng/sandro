#include <iostream>

using namespace std;

void inheritTest();

//所有父类私有成员在子类中都不可访问
// public 继承 ： 所有成员保持不变
// protected 继承 ： 父类public 成员在子类变成了protected
// private 继承： 父类public protected成员在子类变成了private;
class Base{
	private :
		int privateA = 4;

	protected:
		int protectedB = 5;

	public :
		int publicC = 6;
};

class SonA:public Base{
	public :
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