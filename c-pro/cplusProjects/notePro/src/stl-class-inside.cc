/*
 * stl-class-inside.cc
 */

#include "stl-class-inside.h"

void StlClassInside::start(){
	cout << "==========StlClassInside::start=========" << endl;
	vector<int> v;
	v.push_back(31);
	v.push_back(52);
	v.push_back(23);
	v.push_back(14);
	v.push_back(11);
	v.push_back(56);
	v.push_back(6);
	printVectorInt(v);

	vector<int> :: iterator it;
	//返回第一个小于30的值
	//使用适配器，把less仿函数 和 30 绑定起来
	it = find_if(v.begin(),v.end(),bind2nd(less<int>(),30));
	if(it!=v.end()){
		cout << "get num : " << *it << endl;
	}

	sort(v.begin(),v.end(),greater<int>());
	printVectorInt(v);

	sort(v.begin(),v.end());
	printVectorInt(v);
	
	cout << "==========StlClassInside::end===========" << endl;	
}

void StlClassInside::printVectorInt(vector<int> &v){
	cout << "show vector ,size : " << v.size() << endl; 
	vector<int> :: iterator it = v.begin();
	for(;it != v.end();it ++){
		cout << *it << " , ";
	}
	cout << endl;
}
