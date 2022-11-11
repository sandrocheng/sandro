#include "InheritTest.h"
void inheritTest(){
	cout << "--------inheritTest start------------" << endl;
	SonA sonA;
	sonA.publicC = 100;
	//	sonA.protectedB = 200;//protectedB是父类的protected类型，sonA 使用public继承，所以protectedB类型不变，不能直接调用protectedB
	sonA.print();

	SonB sonB;
	//	sonB.publicC = 100;//sonC 使用protected继承，所以publicC成员 类型此时变成了protected，无法再直接调用
	sonB.print();

	SonC sonC;
	sonC.print();//此时 protectedB 和 publicC 成员都继承下来，并都变成private 类型的成员，外界在也无法调用父类的public变量

	cout << "--------inheritTest end  ------------" << endl;
}