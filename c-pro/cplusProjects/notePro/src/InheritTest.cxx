#include "InheritTest.h"
#include "mutiInherit.h"
#include "DiamonInher.h"
#include "VirtualInher.h"
void inheritTest(){
	cout << "--------inheritTest start------------" << endl;
	inheritBaseTest();
	inheritSameNameTest();
	samenameFunTest();
	mutiInheritTest();
	diamonInherTest();
	virtualInherTest();
	cout << "--------inheritTest end  ------------" << endl;
}

static void virtualInherTest(){
	cout << "virtualInherTest=====" << endl;
	Mule mule;
	cout<<"mule.eatGrass : " << mule.eatGrass <<endl;
}

static void diamonInherTest(){
	cout << "diamonInherTest=====" << endl;
	Liger liger;
	//cout << liger.legs;//二义性错误 error: request for member ‘legs’ is ambiguous
	cout << "liger.Tiger::legs is " << liger.Tiger::legs <<endl;
	cout << "liger.Lion::legs is "<< liger.Lion::legs <<endl;
}

static void mutiInheritTest(){
	cout << "mutiInheritTest=====" << endl;
	MultiSon son(100,200,300);
	cout << "son.varBase1 : " <<son.varBase1
		<< " ,son.varBase2 : " << son.varBase2
		<< " ,son.varMultiSon : " << son.varMultiSon
		<<endl;
	cout << "son.varSame: " <<son.varSame
		<< " ,son.MultiBase1::varSame : " << son.MultiBase1::varSame
		<< " ,son.MultiBase2::varSame : " << son.MultiBase2::varSame
		<<endl;
	
}

static void samenameFunTest(){
	cout << "inheritSameNameTest=====" << endl;
	SonD sonD(100,-100);
	sonD.fun1();

	SonE sonE;
	sonE.fun1();
	sonE.Base::fun1();
	sonE.Base::fun1(4);
}

static void inheritSameNameTest(){
	cout << "inheritSameNameTest=====" << endl;
	SonD son(100,-100);
	cout << "son.publicD : " << son.publicD << endl;
	cout << "son.Base::publicD :" << son.Base::publicD << endl;

	son.baseDChange ();
	cout << "son.baseDChange ,son.Base::publicD :" << son.Base::publicD << endl;
}

static void inheritBaseTest(){
	cout << "inheritBaseTest=====" << endl;
	SonA sonA;
	sonA.publicC = 100;
	//	sonA.protectedB = 200;//protectedB是父类的protected类型，sonA 使用public继承，所以protectedB类型不变，不能直接调用protectedB
	sonA.print();

	SonB sonB;
	//	sonB.publicC = 100;//sonC 使用protected继承，所以publicC成员 类型此时变成了protected，无法再直接调用
	sonB.print();

	SonC sonC;
	sonC.print();//此时 protectedB 和 publicC 成员都继承下来，并都变成private 类型的成员，外界在也无法调用父类的public变量

	cout<<"有参构造==="<<endl;
	SonA sonA2(1,2,3);
	sonA2.print();
}