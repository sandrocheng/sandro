#include "TypeConversionTest.h"

void TypeConversionTest::exec(){
	cout << "--------TypeConversionTest start----------" << endl;
	int a = (int) (7.4f+6.8d);
	cout << "(int) (7.4f+6.8d)) = " << a << endl;
	staticCastTest();
	dynamicCastTest();
	constCastTest();
	cout << "--------TypeConversionTest end------------" << endl;
}

void constCastTest(){
	cout <<"constCastTest==========="<<endl;
	int num = 100;
	const int *p = &num;
	int *p1 = const_cast<int *>(p);
	cout<<"*p1 is "<< *p1<<endl;

	const int &ob = 10;
	int &ob1 = const_cast<int &>(ob);
	cout << "&ob1 is " << ob1 << endl;

	int *p2 = &num;
	const int *p3 = const_cast<const int *>(p2);
	cout << "*p3 is " << *p3 << endl;

	int ob2 = 400;
	const int &ob3 = const_cast<const int &>(ob2);
	cout <<"&ob3 is " << ob2 << endl;
}

void dynamicCastTest(){
	cout <<"dynamicCastTest==========="<<endl;
	TypeConversionTest::Base *base = dynamic_cast<TypeConversionTest::Base *> (new TypeConversionTest::Son((char*)"base_name",(char*)"nick_name"));//上行转换 安全
	cout << "base->name : " << base->name<<endl;

//	TypeConversionTest::Son *son = dynamic_cast<TypeConversionTest::Son *>(new TypeConversionTest::Base((char*)"p2name")) ;//下行转换 不支持
//	cout <<"son->name : " << son->name<<endl;

}

void staticCastTest(){
	cout <<"static_cast==========="<<endl;
	int num = static_cast<int>(3.14f);
	cout << "static_cast<int>(3.14f) = " << num << endl;

	TypeConversionTest::Base *base = static_cast<TypeConversionTest::Base *> (new TypeConversionTest::Son((char*)"base_name",(char*)"nick_name"));//上行转换 安全
	cout << "base->name : " << base->name<<endl;

	TypeConversionTest::Son *son = static_cast<TypeConversionTest::Son *>(new TypeConversionTest::Base((char*)"p2name")) ;//下行转换 不安全
	cout <<"son->name : " << son->name<<endl;
//	cout <<"son->nickName : " << son->nickName<<endl;//能通过编译，但是运行的时候可能指针越界，运行会出问题
}

namespace TypeConversionTest{
	Base::Base(char * baseName){
		this->name = baseName;
	}

	Son::Son(char *baseName,char *nickName):Base(baseName){
		this->nickName = nickName;
	}
}