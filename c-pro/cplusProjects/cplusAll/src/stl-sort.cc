/*
 * stl-sort.cc
 */

#include "stl-sort.h"

void StlSort::start(){
	cout << "=============StlSort::start=============" << endl;
	stlMerge();
	randomShuffle();
	stlreverse();
	cout << "=============StlSort::end===============" << endl;
}

void StlSort::stlreverse(){
	cout << "stlreverse::::::" << endl;
	vector<int> v1;
	v1.push_back(1);
	v1.push_back(2);
	v1.push_back(3);
	v1.push_back(4);
	v1.push_back(11);
	v1.push_back(22);
	v1.push_back(33);
	v1.push_back(44);

	BasePrintVectorInt(v1);
	cout << "use reverse func" << endl;
	reverse(v1.begin(),v1.end());
	BasePrintVectorInt(v1);
}

void StlSort::randomShuffle(){
	cout << "randomShuffle::::::" << endl;
	vector<int> v1;
	v1.push_back(1);
	v1.push_back(2);
	v1.push_back(3);
	v1.push_back(4);
	v1.push_back(11);
	v1.push_back(22);
	v1.push_back(33);
	v1.push_back(44);
	BasePrintVectorInt(v1);

	cout<< "random_shuffle v1 " << endl;
	srand(time(NULL));
	random_shuffle(v1.begin(),v1.end());
	BasePrintVectorInt(v1);
}

void StlSort::stlMerge(){
	cout << "stlMerge::::::" << endl;
	vector<int> v1;
	v1.push_back(10);
	v1.push_back(30);
	v1.push_back(50);
	v1.push_back(70);

	vector<int> v2;
	v2.push_back(15);
	v2.push_back(33);
	v2.push_back(56);
	v2.push_back(78);

	vector<int> v3;
	v3.resize(v1.size() + v2.size());
	merge(v1.begin(),v1.end(),v2.begin(),v2.end(),v3.begin());
	BasePrintVectorInt(v3);
}
