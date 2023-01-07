
/*
 * std-pair.cc

 */

#include "std-pair.h"

void StdPair::start(){
	cout << "========StdPair::start======="<<endl;
	pair<string,int> pair1(string("lucy"),20);
	cout << "pair1 name : " << pair1.first << " , age : " << pair1.second<<endl;

	pair<string,int> pair2 = make_pair(string("lily"),18);
	cout << "pair2 name : " << pair2.first << " ,age : " << pair2.second << endl;
	cout << "========StdPair::end========="<<endl;
}

