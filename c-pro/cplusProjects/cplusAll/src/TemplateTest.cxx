#include "TemplateTest.h"

void MyTemplate::exec(){
	cout<<"-------------MyTemplate::exec() start---------------"<<endl;
	funTemplateTest();
	templateOverride();
	classTemplateTest();
	arrTemplateTest();
	templateInheritTest();
	cout<<"-------------MyTemplate::exec() end-----------------"<<endl;
}

void templateInheritTest(){
	cout<<"arrTemplateTest====="<<endl;
	MyTemplate::SonA sonA(100,'a',200);
	sonA.showData();
	cout << "SonA enity sonA.c is " << sonA.c<<endl;

	MyTemplate::SonB<char ,char ,char> sonB('a','b','c');
	sonB.showData();
	cout << "SonB enity sonB.c is " << sonB.c<<endl;
}

void arrTemplateTest(){
	cout<<"arrTemplateTest====="<<endl;
	ArrTemplate<int> intArr;
	intArr.push(10);
	intArr.push(30);
	intArr.push(20);
	intArr.push(50);
	intArr.push(5);
	intArr.push(3);
	intArr.sortArr();
	cout<<intArr<<endl;

	ArrTemplate<char> charArr(5);
	charArr.push ('c');
	charArr.push('z');
	charArr.push('x');
	charArr.push('p');
	charArr.push('t');
	charArr.push('a');
	charArr.sortArr();
	cout << charArr << endl;

	ArrTemplate<PersonA> perArr(5);
	perArr.push (PersonA(1,(char*)"bob",55));
	perArr.push (PersonA(2,(char*)"cici",44));
	perArr.push (PersonA(3,(char*)"tom",22));
	perArr.push (PersonA(4,(char*)"tony",77));
	perArr.push (PersonA(5,(char*)"cindy",65));
	perArr.push (PersonA(6,(char*)"sunny",66));
	perArr.sortArr ();
	cout << perArr<<endl;
}

ostream& operator<<(ostream &out,PersonA p){
	cout<<"[" << p.num << " , " << p.name << " , " << p.score << "]";
	return out;
}

void classTemplateTest(){
	cout<<"classTemplateTest====="<<endl;
	int a = 1;
	char* b = (char*)"string";
	MyTemplate::Data<int,char*> data(a,b);//必须要显示的指定参数类型
	data.showData ();

	MyTemplate::Data<char*,int> data2((char*)"hello",100);//必须要显示的指定参数类型
	data2.showData ();

	ClassTemplate<int,int> templateData(5,3);
	templateData.showData ();

	TemplateClass<char*,char*> tc((char*)"hello",(char*)"world");
	tc.showData();
}

static void friendTemplateTest(){
	cout << "friendTemplateTest============"<<endl;
	MyTemplate::Data<int,int> data3(1,2);
	MyTemplate::myPrintData(data3);

	MyTemplate::Data<int,char*> data4(1,(char*)"hello world!");
	MyTemplate::myPrintData(data4);
}

template<typename P,typename Q> 
void MyTemplate::myPrintData(MyTemplate::Data<P,Q> &ob){
	cout << "gloab friend func myPrintData , a : " << ob.a << " ,b : "<< ob.b << endl;
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