#include "InnerFun.h"


void InnerFunTest(){
	cout << "----------------InnerFunTest start----------------" << endl;
	cout << "inline fun my_add(5,8) : " << my_add(5,8)<<endl;
	cout << "----------------InnerFunTest end------------------" << endl;
}

static inline int my_add(int x,int y){
	return x + y;
} 