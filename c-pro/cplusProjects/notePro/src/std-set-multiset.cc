
/*
 * std-set-multiset.cc
 */

#include "std-set-multiset.h"

void StdSetMultiset::start(){
	cout << "=======StdSetMultiset::start======="<<endl;
	setBasic();
	setCustom();
	setFindApi();
	cout << "=======StdSetMultiset::end========="<<endl;
}

void StdSetMultiset::setFindApi(){
	cout << "setFindApi:::::::"<<endl;
	set<int> st1;
	st1.insert(30);
	st1.insert(20);
	st1.insert(50);
	st1.insert(40);
	st1.insert(10);
	cout << "show st1 >>"<<endl;
	printSetInt(st1);

	set<int>::const_iterator it = st1.find(50);
	if(it!=st1.end()){//使用st1.end()判断是否找到
		cout<<"find it : " << *it << endl;
	}
	cout << " count (200) : " << st1.count(200)<<endl;
	cout << " count (20) : " << st1.count(20)<<endl;

	//返回第一个比19大（或等）的元素迭代器,找不到则返回end()迭代器
	set<int>::const_iterator it_lowerBound = st1.lower_bound(19);
	cout << " it_lowerBound : " << *it_lowerBound<<endl;
	set<int>::const_iterator it_lowerBound2 = st1.lower_bound(66);
	if(it_lowerBound2 == st1.end()){
		cout << "not find 66 lower_bound "<<endl;
	}

	//返回第一个比20大的元素迭代器,找不到则返回end()迭代器
	set<int>::const_iterator it_upperBound = st1.upper_bound(20);
	cout << "20 it_upperBound : " << *it_upperBound<<endl;

	//如果容器中一个key值的it_lowerBound 和 it_upperBound相等，说明该key值不在集合里

	//该函数返回上限和下限两个迭代器
	//以对组pair方式存储上下限
	pair<set<int>::const_iterator,set<int>::const_iterator> pa;
	pa = st1.equal_range(40);
	cout << "40 equal_range first it : " << *pa.first << " , second it : " << *pa.second << endl;

	
	pa = st1.equal_range(50);
	if(pa.first != st1.end()){
		cout << "50 equal_range lowerBound : " << *pa.first << endl;
	}

	if(pa.second == st1.end()){
     	cout << "50 equal_range has no upperBound "<< endl;
	}
	
}

void StdSetMultiset::setCustom(){
	cout << "setCustom:::::::"<<endl;
	set<ClassTeacher,MySetClassTeacherSort> st;
	st.insert(ClassTeacher(30,(char*)"bob"));
	st.insert(ClassTeacher(25,(char*)"lucy"));
	st.insert(ClassTeacher(31,(char*)"tony"));
	st.insert(ClassTeacher(28,(char*)"tom"));
	st.insert(ClassTeacher(21,(char*)"lily"));
	printSetClassTeacher(st);
}

void StdSetMultiset::printSetClassTeacher(set<ClassTeacher,MySetClassTeacherSort> &st){
	set<ClassTeacher,MySetClassTeacherSort> :: const_iterator it = st.begin();
	for(;it!=st.end();it++){
		cout << "age : " <<(*it).getAge()<< " ,name " << (*it).getName() <<endl;
	}
}

void StdSetMultiset::setBasic(){
	cout << "setBasic:::::::"<<endl;
	set<int> st;
	cout << "st is empty :" << st.empty() << " , size : " << st.size() <<endl;
	//插入set时会自动排序
	//插入相同的值，新的数据不会被插入
	//默认从小到大排序
	st.insert(30);
	st.insert(30);
	st.insert(20);
	st.insert(50);
	st.insert(40);
	st.insert(10);
	cout << "after insert st is empty :" << st.empty() << " , size : " << st.size() <<endl;
	printSetInt(st);

	set<int>::iterator it = st.begin();
	it ++;
	st.erase(it);
	cout << "erase 第二个数"<<endl;
	printSetInt(st);

	st.erase(40);
	cout << "删除40"<<endl;
	printSetInt(st);

	st.clear();
	cout << "after clear st is empty :" << st.empty() << " , size : " << st.size() <<endl;

	cout << "创建一个从大到小排序的set" << endl;
	//内部会得到MySetIntSort对象，调用（）仿函数实现传参调用
	set<int,MySetIntSort> st1;
	st1.insert(30);
	st1.insert(30);
	st1.insert(20);
	st1.insert(50);
	st1.insert(40);
	st1.insert(10);
	printSetInt(st1);
}

void StdSetMultiset::printSetInt(set<int,MySetIntSort> &st){
	set<int,MySetIntSort>::const_iterator it = st.begin();
	for(;it!=st.end();it++){
		cout<<(*it)<<" , ";
	}
	cout << endl;
}

void StdSetMultiset::printSetInt(set<int> &st){
	//set遍历的时候使用const_iterator  只读迭代器
	//因为set的内容是排序的，一旦修改布局会变化，所以set一旦插入就不能更改
	set<int>::const_iterator it = st.begin();
	for(;it!=st.end();it++){
		cout<<(*it)<<" , ";
	}
	cout << endl;
}

