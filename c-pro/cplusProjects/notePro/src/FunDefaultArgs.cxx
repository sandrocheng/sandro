#include "FunDefaultArgs.h"

static void TestFun03(int a=11,int b=22){
	cout << "TestFun02(int a=11,int b=22) is " << a + b << endl;
}

void FunDefaultArgs(){
	cout << "----------FunDefaultArgs start-------------" << endl;
	TestFun01();
	TestFun03(10);
	TestFun02(1);

	cout << "----------FunDefaultArgs end---------------" << endl;
}



static void TestFun01(int a,int b){
	cout << "TestFun01(int a=10,int b=40) is " << a + b << endl;
}

static void TestFun02(int a,int b,int c){
	cout << "TestFun02(int a,int b,int c) is " << a + b + c<< endl;
}