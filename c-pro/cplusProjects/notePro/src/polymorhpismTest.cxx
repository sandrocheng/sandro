#include "polymorhpismTest.h"

void polymorphismTest::exec(){
	cout << "-----polymorphismTest::exec() start--------"<<endl;
	vitualFunTest();
	cout << "-----polymorphismTest::exec() end----------"<<endl;
}

static void vitualFunTest(){
	cout << "vitualFunTest=====" << endl;
	polymorphismTest::Animal *animal = new polymorphismTest::Dog;
	//虽然使用的是Dog进行的初始化，但是执行的还是父类的speak函数
	//原因是 animal的类型是父类指针，他虽然指向的是子类，但是只能操作子类中父类空间的内容
	//指针所能操作的范围，由指针的指向变量范围决定
	animal->speak();
	delete animal;

	BaseFuncExec(new polymorphismTest::SonA);
	BaseFuncExec(new polymorphismTest::SonB);

}

static void BaseFuncExec(polymorphismTest::Base *base){
	base->baseFun();
	base->baseVirFunc();
	delete base;
}