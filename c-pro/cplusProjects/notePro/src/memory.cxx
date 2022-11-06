
#include<iostream>

using namespace std;

static void basicTest();
static void arrayTest();

void memoryTest(){
	cout<<"------------memoryTest start-----------------"<<endl;
	basicTest();
	arrayTest();
	cout<<"------------memoryTest end-----------------"<<endl;
}

/**
 * 数组内存的申请和删除
 */
static void arrayTest(){
	int *arr = NULL;
	arr = new int[5]{1,2,3,4,5};
	for(int i=0;i<5;i++){
		cout<< arr[i] << " ,  ";
	}
	cout << endl;
	delete [] arr;
}

/**
 * 内存基本操作  new 和 delete 
 */
static void basicTest(){
	int *p = NULL;
	p = new int;//从堆区申请int型大小的空间
	cout << "new p address is " << p << " , value is " << *p <<endl;
	delete p;// new 和 delete需要成对出现，避免内存溢出

	int *p1 = NULL;
	p1 = new int(333);
	cout << "new p1 address is " << p1<< " , value is " << *p1 <<endl;
	delete p1;
}