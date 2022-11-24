/*
 * stl-func-obj.cc
 */

#include "stl-func-obj.h"

void StlFuncObj::start(){
	cout << "=========StlFuncObj::start========" << endl;
	StlFuncObjTest ob;
	ob((char*)"fun ob print");
	StlFuncObjTest()((char*)"fun ob print 2 ");
	predicateTest();
	cout << "=========StlFuncObj::end==========" << endl;
}

void StlFuncObj::predicateTest(){
	cout << "predicateTest:::::" << endl;
	vector<int> v;
	v.push_back(1);
	v.push_back(2);
	v.push_back(6);
	v.push_back(4);
	v.push_back(7);
	v.push_back(3);
	v.push_back(5);

	sort(v.begin(),v.end(),StlFuncObjSort());
	vector<int>::iterator it = v.begin();
	for(;it != v.end();it++){
		cout << *it << " , ";
	}
	cout << endl;
	//使用普通函数提供策略
	it = find_if(v.begin(),v.end(),moreThan4);
	if(it != v.end()){
		cout << "moreThan4 findresult : " << *it << endl;
	}
	//使用仿函数提供策略 类名+()
	it = find_if(v.begin(),v.end(),StlFuncObjMoreThan6());
	if(it != v.end()){
		cout << "StlFuncObjMoreThan6 findresult : " << *it << endl;
	}
}

bool moreThan4(int value){
	return value>4;
}



