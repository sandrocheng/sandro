#include "STLTest.h"


void STLTest::exec(){
	cout << "------STLTest::exec() start-------"<<endl;
	startSTLExample(new StlString());
	startSTLExample(new StlVector());
	startSTLExample(new StlDeque());
	cout << "------STLTest::exec() end---------"<<endl;
}

 void startSTLExample(StlStartBase *base){
	 base->start();
	 delete base;
 }