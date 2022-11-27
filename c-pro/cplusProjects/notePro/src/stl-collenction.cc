
/*
 * stl-collenction.cc
 */

#include "stl-collenction.h"

void StlCollenction::start(){
	cout << "===========StlCollenction::start=============" << endl;
	stlIntersection();
	stlUnion();
	setDifference();
	cout << "===========StlCollenction::end===============" << endl;
}

void StlCollenction::setDifference(){
	cout << "setDifference:::::::" << endl;
	vector<int> v1;
	v1.push_back(1);
	v1.push_back(3);
	v1.push_back(5);
	v1.push_back(7);
	v1.push_back(9);

	vector<int> v2;
	v2.push_back(7);
	v2.push_back(9);
	v2.push_back(13);
	v2.push_back(15);

	vector<int> v3;//存 v1 差 v2的差集
	v3.resize(v1.size());
	vector<int>::iterator endIt = set_difference(v1.begin(),v1.end(),v2.begin(),v2.end(),v3.begin());
	BasePrintVectorInt(v3.begin(),endIt);//实际的交集size比设置的size要小，需要使用返回的end() 迭代器输出内容

	v3.clear();
	v3.resize(v2.size());
	endIt = set_difference(v2.begin(),v2.end(),v1.begin(),v1.end(),v3.begin());
	BasePrintVectorInt(v3.begin(),endIt);//实际的交集size比设置的size要小，需要使用返回的end() 迭代器输出内容
}

void StlCollenction::stlUnion(){
	cout << "stlUnion:::::::" << endl;
	vector<int> v1;
	v1.push_back(1);
	v1.push_back(3);
	v1.push_back(5);
	v1.push_back(7);
	v1.push_back(9);

	vector<int> v2;
	v2.push_back(7);
	v2.push_back(9);
	v2.push_back(13);
	v2.push_back(15);

	vector<int> v3;//存并集
	v3.resize(v1.size() + v2.size());
	vector<int>::iterator endIt = set_union(v1.begin(),v1.end(),v2.begin(),v2.end(),v3.begin());
	BasePrintVectorInt(v3.begin(),endIt);//实际的交集size比设置的size要小，需要使用返回的end() 迭代器输出内容
	
}

void StlCollenction::stlIntersection(){
	cout << "stlIntersection:::::::" << endl;
	vector<int> v1;
	v1.push_back(1);
	v1.push_back(3);
	v1.push_back(5);
	v1.push_back(7);
	v1.push_back(9);

	vector<int> v2;
	v2.push_back(7);
	v2.push_back(9);
	v2.push_back(13);
	v2.push_back(15);

	vector<int> v3;//存交集
	v3.resize(min(v1.size() , v2.size()));
	vector<int>::iterator endIt = set_intersection(v1.begin(),v1.end(),v2.begin(),v2.end(),v3.begin());
	BasePrintVectorInt(v3.begin(),endIt);//实际的交集size比设置的size要小，需要使用返回的end() 迭代器输出内容
	
}

