#include <iostream>
#include <string.h>
#include "class-student.h"
#include "class-score.h"
#include "class-single-ton.h"
#include "class-array.h"

using namespace std;

//类的定义
class Data;

class Person{

	//普通全局函数作为类的友元
	//使用friend关键字声明有元
	//friend关键字只出现在声明处，一个函数或者类作为了另一个类的有元，那么这个函数或者类就可以直接访问另一个类的私有数据
	//注意 
	// 有元不能被继承
	// 有元关系是单向的 类A是类B的有元，类B不一定是类A的有元
	// 有元不具备传递性
	friend void visitPerson(Person &Per);
	
	private :
		int age;
		char name[32];

	public :
		//内部定义，外部实现
		void init(int _age,char* _name);

		char* getName();

		int getAge();

		void setName(char* _name);

		void setAge(int _age);

		void printPer();

		bool isSamePer(Person &p2);

		void printData(Data &data);

};

class Data{
	friend class Person;
	private :
		int a = 10;

	protected:
		int b = 1;

	public :
		int c = 20;
		void showData(){
			cout << "a = " << a << " ,b = " << b << " ,c = " << c << endl;
		}
	public :
		void setA(int _a){
			a= _a;
		}		
};

void classTest();
static bool isSamePer(Person &p1,Person &p2);
static void classAarrayTest();
static ClassStudent createCS();
//在堆中动态创建对象
static void dynamicObject();