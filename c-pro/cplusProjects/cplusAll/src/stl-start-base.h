
/*
 * STL例子基类
 */

#ifndef _STL_START_BASE_H_
#define _STL_START_BASE_H_

#include <iostream>
#include <vector>
using namespace std;
class StlStartBase
{
	public:
		virtual void start(){};
		void BasePrintVectorInt(vector<int> &v);
		void BasePrintVectorInt(const vector<int>::iterator &startIt,const vector<int>::iterator &endIt);
};

#endif // _STL_START_BASE_H_

