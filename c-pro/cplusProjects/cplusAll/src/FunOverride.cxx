#include "FunOverride.h"

void FunOverrideTest(){
	cout<<"-----------FunOverrideTest start---------------"<<endl;
	printFun(10);
    printFun(1,'a');
    printFun('a',0);
    printFun('b');
	cout<<"-----------FunOverrideTest end-----------------"<<endl;
}

static void printFun(int a){
	cout << "printFun(int a) exec"<<endl;
}

static void printFun(int a,char b){
	cout << "printFun(int a,char b) exec"<<endl;
}

static void printFun(char a,int b){
	cout << "printFun(int a,char b) exec"<<endl;
}

static void printFun(char a){
	cout << "printFun(int a,char b) exec"<<endl;
}