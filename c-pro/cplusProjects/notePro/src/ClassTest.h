#include <iostream>
#include <string.h>
#include "class-student.h"
#include "class-score.h"
#include "class-single-ton.h"

using namespace std;

//类的定义
class Data{
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

class Person{
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

};

void classTest();
static bool isSamePer(Person &p1,Person &p2);
static ClassStudent createCS();
//在堆中动态创建对象
static void dynamicObject();