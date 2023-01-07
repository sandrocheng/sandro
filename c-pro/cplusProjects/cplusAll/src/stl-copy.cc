/*
 * stl-copy.cc
 */

#include "stl-copy.h"

void StlCopy::start(){
	cout << "============StlCopy::start============" << endl;
	stlCopyTest();
	stlReplace();
	replaceIf();
	stlSwap();
	cout << "============StlCopy::end==============" << endl;
}

void StlCopy::stlSwap(){
	cout<< "stlSwap:::::" << endl;
	vector<int> v1;
	v1.push_back(1);
	v1.push_back(2);
	v1.push_back(3);
	v1.push_back(4);
	v1.push_back(5);

	vector<int> v2;
	v2.push_back(100);
	v2.push_back(200);
	v2.push_back(300);

	swap(v1,v2);
	BasePrintVectorInt(v1);
	BasePrintVectorInt(v2);
}

void StlCopy::replaceIf(){
	cout<< "replaceIf:::::" << endl;
	vector<int> v1;
	v1.push_back(1);
	v1.push_back(2);
	v1.push_back(3);
	v1.push_back(4);
	v1.push_back(5);
	replace_if(v1.begin(),v1.end(),bind2nd(less<int>(),5),5);
    BasePrintVectorInt(v1);
}

void StlCopy::stlReplace(){
	cout<< "stlReplace:::::" << endl;
	vector<int> v1;
	v1.push_back(1);
	v1.push_back(2);
	v1.push_back(3);
	v1.push_back(4);
	v1.push_back(5);

	replace(v1.begin(),v1.end(),2,-2);
	BasePrintVectorInt(v1);
}

void StlCopy::stlCopyTest(){
	cout<< "stlCopyTest:::::" << endl;
	vector<int> v1;
	v1.push_back(1);
	v1.push_back(2);
	v1.push_back(3);
	v1.push_back(4);
	v1.push_back(5);

	vector<int> v2;
	v2.push_back(100);
	v2.push_back(200);
	v2.push_back(300);

	v2.resize(v1.size());
	copy(v1.begin(),v1.end(),v2.begin());
	BasePrintVectorInt(v2);

	cout << "直接使用终端迭代器显示" << endl;
	/*
	 * 需要 include <iterator>，使用终端迭代器
	 * 使用copy 把 vector中的内容拷贝到终端
	 * 终端使用ostream_iterator去接受vector中的元素，每个元素使用cout 并接入一个 ","
	 */
	copy(v1.begin(),v1.end(),ostream_iterator<int>(cout ," ,"));
	cout<< endl;
}

