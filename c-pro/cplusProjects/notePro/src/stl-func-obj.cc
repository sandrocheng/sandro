/*
 * stl-func-obj.cc
 */

#include "stl-func-obj.h"

void StlFuncObj::start(){
	cout << "=========StlFuncObj::start========" << endl;
	StlFuncObjTest ob;
	ob((char*)"fun ob print");
	StlFuncObjTest()((char*)"fun ob print 2 ");
	cout << "=========StlFuncObj::end==========" << endl;
}



