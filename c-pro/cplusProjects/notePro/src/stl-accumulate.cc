
/*
 * stl-accumulate.cc
 */

#include "stl-accumulate.h"

void StlAccumulate::start(){
	cout << "======StlAccumulate::start======" << endl;
	stlAccumulate();
	stlFill();
	cout << "======StlAccumulate::end========" << endl;
}

void StlAccumulate::stlFill(){
	cout << "stlFill::::" << endl;
	vector<int> v;
	v.resize(10);
	BasePrintVectorInt(v);

	fill(v.begin(),v.end(),1);
	BasePrintVectorInt(v);

}

void StlAccumulate::stlAccumulate(){
	cout << "stlAccumulate::::" << endl;
	vector<int> v;
	v.push_back(1);
	v.push_back(2);
	v.push_back(3);
	v.push_back(4);
	v.push_back(5);
	v.push_back(6);

	int sum = accumulate(v.begin(),v.end(),1000);
	cout << sum << endl;
}


