/*
 * stl-traversal.cc
 */

#include "stl-traversal.h"

void StlTraversal::start(){
	cout << "==========StlTraversal::start==========" << endl;
	vector<int> v;
	v.push_back(11);
	v.push_back(2);
	v.push_back(13);
	v.push_back(4);
	v.push_back(25);
	v.push_back(16);

	vector<int> v2;
	//搬运前需要设置好空间，transform函数不会给v2设置好内存
	v2.resize(v.size());
	transform(v.begin(),v.end(),v2.begin(),myTransform);

	for_each(v2.begin(),v2.end(),[=](int value){
		cout << value << " , ";
	});
	cout << endl;
	
	cout << "==========StlTraversal::end============" << endl;


}

int myTransform(int value){
	return value;
}



