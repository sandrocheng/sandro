/*
 * stl-adpter.cc
 */

#include "stl-adpter.h"

void StlAdpter::start(){
	cout << "=======StlAdpter::start========" << endl;
	funObjAdapter();
	funpointerAdapter();
	memberfuncAdaptor();
	invertAdaptor();
	cout << "=======StlAdpter::end==========" << endl;
}

void StlAdpter::invertAdaptor(){
	cout << "invertAdaptor::::::::" << endl;
	vector<int> v;
	v.push_back(13);
	v.push_back(2);
	v.push_back(23);
	v.push_back(73);

	vector<int> :: iterator it;
	//not1 一元取反
	it = find_if(v.begin(),v.end(),not1(bind2nd(greater<int>(),10)));
	if(it!=v.end()){
		cout << "find " << *it << " in vector <= 10"<<endl;
	}


	//使用not2 对二元参数的仿函数取反
	sort(v.begin(),v.end(),not2(greater<int>()));

	/*
	 * 使用lambda 表达式 c++11才开始支持
	 * [] 啥都不写，lambda不能识别外部数据
	 * [=] lambda 能对外部数据 读操作
	 * [&] lambda 能对外部数据读写操作	 
	 */
	cout << "lambda func for_each vector"<<endl;
	//使用lambda 实现一个匿名函数并获取参数
	for_each(v.begin(),v.end(),[=](int val){
		cout << val <<"," ;
	});
	cout << endl;	
}

void StlAdpter::memberfuncAdaptor(){
	cout << "memberfuncAdaptor::::::::" << endl;
	vector<StlMemFuncAdaptor> v;
	v.push_back(StlMemFuncAdaptor(13));
	v.push_back(StlMemFuncAdaptor(1));
	v.push_back(StlMemFuncAdaptor(43));
	v.push_back(StlMemFuncAdaptor(23));
	for_each(v.begin(),v.end(),bind2nd( mem_fun_ref(&StlMemFuncAdaptor::printInt) , 400));
}

void myPrintInt(int value,int tmp){
	cout<< "value : " << value << " ,tmp : " << tmp << endl;
}

void StlAdpter::funpointerAdapter(){
	cout << "funpointerAdapter::::::::" << endl;
	vector<int> v;
	v.push_back(13);
	v.push_back(3);
	v.push_back(23);
	v.push_back(73);
	for_each(v.begin(),v.end(),bind2nd(ptr_fun(myPrintInt),300));

}

void StlAdpter::funObjAdapter(){
	cout << "funObjAdapter::::::::" << endl;
	vector<int> v;
	v.push_back(13);
	v.push_back(3);
	v.push_back(23);
	cout << "show vector : ";
	for_each(v.begin(),v.end(),StlAdpterPrintInt());
	cout << endl;

	//使用bind2nd 或 bind1st绑定参数
	//二者区别是 参数100 传递到 仿函数中的哪个参数中去
	cout << "show vector bind2nd add : ";
	for_each(v.begin(),v.end(),bind2nd(StlAdpterPrintIntAdd(),100));
	cout << endl;

	cout << "show vector bind1st add : ";
	for_each(v.begin(),v.end(),bind1st(StlAdpterPrintIntAdd(),200));
	cout << endl;
}



