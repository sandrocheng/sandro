#include <iostream>
#include <string>
#include "class-my-string.h"
using namespace std;

/*
 *运算符重载
 * 运算符重载，就是堆已有的运算符重新进行定义，赋予其另一种功能，以适应不同的数据类型
 * 
 * 语法：定义重载的运算符就像定义函数，只是该函数的名字是 operator@ ， 这里的@ 代表了被重载的运算符
 * 例子 ： operator+ 重载“+”的运算符  a+b 会被重载，但是 10 + 5 不会被重载
 *       重载运算符只能对变量，对象操作。
 * 思路 ：
 *   1、 弄懂运算符的运算对象的个数，（个数决定了 重载函数的参数个数）
 *   2、 识别运算符左边的运算对象 是类的对象 还是其他。
 *       类的对象：全局函数实现（不推荐）  
 *                成员函数实现（推荐，这样可以少一个参数）
 *       其他：只能是全局函数实现  
 * 如果使用全局函数 重载运算符 必须将全局函数设置成友元
 * 
 * && ||  逻辑与和逻辑或尽量别重载，无法完成他们的短路特性
 * 不能重载的运算符
 *   .  ::  .*  ?: sizeof
 */ 


void OperOverride();
class OverrideStudent;

//全局函数重载operator<<
static ostream& operator<<(ostream &out,OverrideStudent stu);
static void overriteOperBasicTest();
static void MyStringTest();
static void functorTest();
static void SmartPointerTest();

//全局函数重载 operator+
static OverrideStudent operator+(OverrideStudent &stu1,OverrideStudent &stu2);

class OverrideStudent{
	friend ostream& operator<<(ostream &out,OverrideStudent stu);
	friend OverrideStudent operator+(OverrideStudent &stu1,OverrideStudent &stu2);
	private :
		int num;
		string name;
		float score;
	public :
		OverrideStudent(){

		}

		OverrideStudent(int num,string name,float score)
			:num(num),name(name),score(score){}

		//类中重载 “+”运算符 ，
	// 应用方法 : 
		//			OverrideStudent st1,st2;          
		//          st1 + st2;// ====> st1.operator<<(st2)
		//因为当前“+”,使用方式都是 ob1 + ob2,已经在全局中实现了一个，无法再实现相同的
		//操作，这里暂时用 “>>” 代替 
		OverrideStudent operator>> (OverrideStudent &stu){
			OverrideStudent tmp;
			tmp.num = this->num + stu.num;
			tmp.name = this->name + stu.name;
			tmp.score = this->score + stu.score;
			return tmp;
		}

		//成员函数重载 “==” 
		bool operator== (OverrideStudent &stu){
			return (this->num == stu.num) && (this->name == stu.name) && (this->score == stu.score);
		}

		//重载后置++ ，如果是全局符号重载 相当于OverrideStudent operator ++ (OverrideStudent &a,int)
		//第二个参数使用“类型占位符”区分 前置++ 
		//score +=1;
		OverrideStudent operator ++ (int){
			OverrideStudent old = *this;//保存旧值
			this->score ++;
			this->num++;
			this->name = this->name + this->name;
			return old;
		}

		//重载前置++ ，如果是全局符号重载 相当于OverrideStudent operator ++ (OverrideStudent &a)
		//score +=1;
		OverrideStudent operator ++ (){
			this->score++;
			this->num++;
			this->name = this->name + this->name;
			return *this;
		}
};

class ClassPrint{
	public :
		//重载函数调用运算符 一般用于算法提供策略
		//（）: 函数调用运算符
		//当对象和()结合 会触发
		//例子 ClassPrint cp;
		//     cp((char*)"Hello print");// 
		//     ClassPrint()("Hello print 2 !");//使用匿名对象调用 
		// 这种调用方式也叫做 仿函数
		void operator()(char *str){
			cout << str << endl;
		}

		ClassPrint(){
			cout<<"ClassPrint 构造函数调用" <<endl;
		}

		~ClassPrint(){
			cout<<"ClassPrint 析构函数调用" <<endl;
		}

		void func(){
			cout<<"ClassPrint func函数调用" <<endl;
		}
		
};

//设计ClassPrint的智能指针
//目的，让只能指针 自动释放 堆区内存，避免人为忘记delete调用导致内存泄漏
class ClassPrintSmartPointer{
	private:
		ClassPrint *p;
		public :
		ClassPrintSmartPointer(){}

		ClassPrintSmartPointer(ClassPrint *p){
			this->p = p;
		}

		~ClassPrintSmartPointer(){
			delete this->p;
		}

		//重载指针指向运算符 ->
		ClassPrint* operator->(){
			return this->p;
		}

		//重载对象指向运算符 .
		ClassPrint& operator*(){
			return *(this->p);
		}
};
