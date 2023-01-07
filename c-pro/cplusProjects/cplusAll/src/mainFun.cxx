#include<iostream>
#include<bitset>
#include<time.h>

using namespace std;

void MF_arraytest(){
	int arr1[] = {1,2,3,4};
	int arr2[4] = {0};
	int arr[][4] = {
		{0},
		{1,2}
	};
	arr[0][0] = arr1[0];
	cout<<"int类型一维数组 arr占用内存："<< sizeof(arr1) << "个字节，"
		<<"每个元素占" <<sizeof(arr1[0]) << "个字节，"
		<<"该数组当前有"<< sizeof(arr1)/sizeof(arr1[0])<<"个元素"
		<<endl;

	cout<<"int类型二维数组 arr占用内存："<< sizeof(arr) << "个字节，"
		<<"每个元素占" <<sizeof(arr[0][0]) << "个字节，"
		<<"该数组当前有"<< sizeof(arr)/sizeof(arr[0][0])<<"个元素"
		<<endl;
	
}

//void test(){
//	cout<<"mainFun 文件中的test方法"<<endl;
//}