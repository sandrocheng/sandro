#include "STLTest.h"


void STLTest::exec(){
	cout << "------STLTest::exec() start-------"<<endl;
	startSTLExample(new StlString());
	cout << "------STLTest::exec() end---------"<<endl;
}

 void startSTLExample(StlStartBase *base){
	 base->start();
	 delete base;
 }