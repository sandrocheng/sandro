#include "TemplateTest.h"

void MyTemplate::exec(){
	cout<<"-------------MyTemplate::exec() start---------------"<<endl;
	funTemplateTest();
	templateOverride();
	cout<<"-------------MyTemplate::exec() end-----------------"<<endl;
}

void templateOverride(){
	cout<<"templateOverride====="<<endl;
	int a=0,b=0;
	MyTemplate::print(a);
	MyTemplate::print(a,b);
}

void funTemplateTest(){
	cout<<"funTemplateTest===="<<endl;
	int a = 10,b=20;
	MyTemplate::swapAll(a,b);
	cout << "after swapAll(int,int) , a : "<< a << " , b : " << b << endl;

	char* str1 = (char*)"string A";
	char* str2 = (char*)"string B";
	MyTemplate::swapAll(str1,str2);
	cout << "after swapAll(char*,char*) , str1 : "<< str1 << " , str2 : " << str2 << endl;

	double x = 1.1d,y=2.2d;
	MyTemplate::swapAll(x,y);
	cout << "after swapAll(double,double) , x : "<< x << " , y : " << y << endl;

	MyTemplate::swapAll<>(x,y);
	cout << "after swapAll<>(double,double) , x : "<< x << " , y : " << y << endl;
}

void MyTemplate::swapAll(double &a,double &b){
	double tmp = a;
	a = b;
	b = tmp;
	cout<<"normal func swapAll exec"<<endl;
};

template<typename T> void MyTemplate::swapAll(T &a,T&b){
	T tmp = a;
	a = b;
	b = tmp;
	cout<<"template func swapAll exec"<<endl;
};

template<typename T> void MyTemplate::print(T &a,T&b){
	cout << "MyTemplate::print(T &a,T&b) exec " << endl; 
}

template<typename T> void MyTemplate::print(T &a){
	cout << "MyTemplate::print(T &a) exec " << endl; 
} 