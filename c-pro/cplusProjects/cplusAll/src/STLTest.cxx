#include "STLTest.h"


void STLTest::exec(){
	cout << "------STLTest::exec() start-------"<<endl;
	startSTLExample (new StlString());
	startSTLExample (new StlVector());
	startSTLExample (new StlDeque());
	startSTLExample (new StlStackAndQueue());
	startSTLExample (new StdList());
	startSTLExample (new StdSetMultiset());
	startSTLExample (new StdPair());
	startSTLExample (new StdMap());
	startSTLExample (new StlFuncObj());
	startSTLExample (new StlClassInside());
	startSTLExample (new StlAdpter());
	startSTLExample (new StlTraversal());	
	startSTLExample (new StlFindAlgo());
	startSTLExample (new StlSort());
	startSTLExample (new StlCopy());
	startSTLExample (new StlAccumulate());
	startSTLExample (new StlCollenction());
	startSTLExample (new StlExercises());
	cout << "------STLTest::exec() end---------"<<endl;
}

 void startSTLExample(StlStartBase *base){
	 base->start();
	 delete base;
 }