#include "PlaceholderArgs.h"

void PlaceholderArgsTest(){
	cout << "------------------PlaceholderArgsTest start------------"<<endl;
	func01(1,3,1);
	func02(3,6);
	cout << "------------------PlaceholderArgsTest end--------------"<<endl;

}

static void func01(int a,int b,int){
	cout << "func01 " << a+b << endl;
}

static void func02(int a,int b,int){
	cout << "func02 " << a+b << endl;
}