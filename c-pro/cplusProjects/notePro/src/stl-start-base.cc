
/*
 */

#include "stl-start-base.h"

void StlStartBase::BasePrintVectorInt(vector<int> &v){
	vector<int>::iterator it = v.begin();
	for(;it!=v.end();it++){
		//*it代表vector中类型的数据，但是他不是指针，是经过重载的表示方法。
		cout<< *it << " ,";
	}
	cout << endl;
}

void StlStartBase::BasePrintVectorInt(const vector<int>::iterator &startIt,const vector<int>::iterator &endIt){
	vector<int>::iterator it = startIt;
	for(;it!=endIt;it++){
		cout<< *it << " ,";
	}
	cout << endl;
}



