
/*
 * stl-find-algo.cc
 */

#include "stl-find-algo.h"

void StlFindAlgo::start(){
	cout << "===========StlFindAlgo::start==========" << endl;
	stlFind();
	stlFindif();
	adjacentFind();
	binarySearch();
	stlCount();
	countIf();
	cout << "===========StlFindAlgo::end============" << endl;
}

void StlFindAlgo::countIf(){
	cout << "StlFindAlgo.countIf:::::" << endl;
	vector<int> v;
	v.push_back(1);
	v.push_back(129);
	v.push_back(290);
	v.push_back(32);
	v.push_back(4);
	v.push_back(51);

	int ret = count_if(v.begin(),v.end(),bind2nd(greater<int>(),32));
	cout << "greater than 32 ,ret is " << ret << endl;	

	ret = count_if(v.begin(),v.end(),greaterThan100);
	cout << "greaterThan100 ,ret is " << ret << endl;
}

bool greaterThan100(int value){
	return value > 100;
}

void StlFindAlgo::stlCount(){
	cout << "StlFindAlgo.stlCount:::::" << endl;
	vector<int> v;
	v.push_back(1);
	v.push_back(32);
	v.push_back(129);
	v.push_back(32);
	v.push_back(51);
	v.push_back(32);

	int c = count(v.begin(),v.end(),32);
	cout << "count 32 : " << c <<endl;
	
}

void StlFindAlgo::binarySearch(){
	cout << "StlFindAlgo.binarySearch:::::" << endl;
	vector<int> v;
	v.push_back(1);
	v.push_back(12);
	v.push_back(32);
	v.push_back(36);
	v.push_back(132);
	v.push_back(510);

	bool ret = binary_search(v.begin(),v.end(),132);
	if(ret){
		cout << "find 132"<<endl;
	}
}

void StlFindAlgo::adjacentFind(){
	cout << "StlFindAlgo.adjacentFind:::::" << endl;
	vector<int> v;
	v.push_back(1);
	v.push_back(129);
	v.push_back(32);
	v.push_back(32);
	v.push_back(32);
	v.push_back(51);

	vector<int>::iterator ret;
	ret = adjacent_find(v.begin(),v.end());
	if(ret!=v.end()){
		cout << "get adjacent value : " << *ret << endl;
	}
}

void StlFindAlgo::stlFindif(){
	cout << "StlFindAlgo.stlFindif:::::" << endl;
	vector<int> v;
	v.push_back(1);
	v.push_back(129);
	v.push_back(32);
	v.push_back(4);
	v.push_back(51);
	vector<int> :: iterator ret;
	ret = find_if(v.begin(),v.end(),bind2nd(greater<int>(),30));
	if(ret!=v.begin()){
		cout << "find > 30 data is " << *ret << endl;
	}
}

void StlFindAlgo::stlFind(){
	cout << "StlFindAlgo.find:::::" << endl;
	vector<int> v;
	v.push_back(1);
	v.push_back(129);
	v.push_back(32);
	v.push_back(4);
	v.push_back(51);

	vector<int>::iterator ret ;
	ret = find(v.begin(),v.end(),4);
	if(ret!=v.end()){
		cout << "find data " << *ret << endl;
	}
}



