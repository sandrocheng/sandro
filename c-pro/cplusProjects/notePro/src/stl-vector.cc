/*
 * stl-vector.cc
 */

#include "stl-vector.h"

void StlVector::start(){
	cout << "=======StlVector::start=========" << endl;
	vectorBase();
	vectorAssign();
	vecotrSize();
	vectorElemAccess();
	vectorAD();
	vectorSwap();
	vectorNest();
	sortVector();
	customObjVector();
	cout << "=======StlVector::end=========" << endl;
}

void StlVector::customObjVector(){
	cout << "customObjVector::::::"<<endl;
	ClassTeacher t1(22,(char*)"lily");
	vector<ClassTeacher> v;
	v.push_back(t1);
	v.push_back(ClassTeacher(30,(char*)"bob"));
	v.push_back(ClassTeacher(25,(char*)"lucy"));
	v.push_back(ClassTeacher(31,(char*)"tony"));
	v.push_back(ClassTeacher(28,(char*)"tom"));

	printVectorClassTeacher(v);

	//对自定义类型vector排序，需要指定规则
	try{
		cout << "sort data : " << endl;
		sort(v.begin(),v.end(),compareClassTeacher);
		printVectorClassTeacher(v);
	}catch(exception &e){
		cout << "customObjVector exception : " << e.what()<<endl;
	}

}

bool compareClassTeacher(ClassTeacher &ob1,ClassTeacher &ob2){
	return ob1.getAge()<ob2.getAge();
}


void StlVector::printVectorClassTeacher(vector<ClassTeacher> &v){
	vector<ClassTeacher> :: iterator it = v.begin();
	for(;it!=v.end();it++){
		cout<< "age : " << (*it).getAge() <<" , name : " << (*it).getName() <<endl;
	}
}

void StlVector::sortVector(){
	cout << "sortVector::::::"<<endl;
	vector<int> v;
	v.push_back(3);
	v.push_back(33);
	v.push_back(1);
	v.push_back(2);
	v.push_back(77);
	v.push_back(54);
	BasePrintVectorInt(v);

	sort(v.begin(),v.end());
	BasePrintVectorInt(v);
}

void StlVector::vectorNest(){
	cout << "vectorNest::::::"<<endl;
	vector<int> v1(5,10);
	vector<int> v2(5,20);
	vector<int> v3(10,30);

	//需求 定一个vector存放 v1 v2 v3
	vector<vector<int>> v;
	v.push_back(v1);
	v.push_back(v2);
	v.push_back(v3);

	vector<vector<int>>::iterator it = v.begin();
	for(;it!=v.end();it++){
		vector<int> tempV = *it;
		BasePrintVectorInt(tempV);
	}
	
}

void StlVector::vectorSwap(){
	cout << "vectorSwap::::::"<<endl;
	vector<int> v;
	v.reserve(1000);
	v.push_back(1);
	v.push_back(2);
	v.push_back(3);
	v.push_back(4);
	v.push_back(5);
	cout << "size : " << v.size() << " , capacity : " << v.capacity() << endl;

	//使用匿名对象，通过v拷贝构造,vector的拷贝构造只拷贝 size大小的内容，capacity不会复制过来，拷贝完以后
	//size == capacity
	//然后和v swap一下，就可以达到收缩内存空间的效果,此时匿名对象会成为之前那个大的vector，函数结束后就会自动释放空间
	vector<int>(v).swap(v);
	cout << "size : " << v.size() << " , capacity : " << v.capacity() << endl;
}

void StlVector::vectorAD(){
	cout << "vectorAD::::::"<<endl;
	vector<int> v;
	v.push_back(1);
	v.push_back(2);
	v.push_back(3);
	v.push_back(4);
	v.push_back(5);
	v.pop_back();//尾部删除
	BasePrintVectorInt(v);
	vector<int>::iterator it = v.begin() + 2;//获取第3位迭代器
	v.insert(it,2,100);//在迭代器it的位置后面插入 2个 100
	BasePrintVectorInt(v);

	v.erase(v.begin() + 2,v.begin() + 4);//删除从第3位到第5位前的数据，不包括第五位。
	BasePrintVectorInt(v);

	v.erase(it);
	BasePrintVectorInt(v);

	v.clear();
	cout << "size : " << v.size() << " capacity : " << v.capacity()<< endl;
}

void StlVector::vectorElemAccess(){
	cout << "vectorElemAccess::::::"<<endl;
	vector<int> v;
	v.push_back(1);
	v.push_back(2);
	v.push_back(3);
	v.push_back(4);
	cout<<"v.front() : "<<v.front()<< " , v.at(1) : " << v.at(1) << " , v.back() : "<< v.back()
		<<" , v[2] : " << v[2]
		<<endl;
	v[0] = 100;
	v.at(3) = 400;
	BasePrintVectorInt(v);

	try{
		v.at(100) = 6; //at方法会抛出异常
	}catch(exception &e){
		cout<< e.what()<<endl;
	}

	try{
		v[100] = 6; 
		cout<<"v[100] : " << v[100]<<endl;//[] 方式不会抛出异常，但是会越界，给程序带来不稳定问题。
	}catch(exception &e){
		cout<< e.what();
	}
}

void StlVector::vecotrSize(){
	cout << "vecotrSize::::::"<<endl;
	vector<int> v;
	if(v.empty()){
		cout <<"v is empty "<<endl;
	}
	v.assign(3,100);
	cout << "v.size() : " << v.size() << " , v.capacity() : " << v.capacity() <<endl;
	BasePrintVectorInt(v);
	v.resize(15);//重新指定vector长度为num，如果容器变长，则以默认值填充新位置，如果容器变短，则末尾超出长度的元素将被删除
	cout << "after resize(15) v.size() : " << v.size() << " , v.capacity() : " << v.capacity() <<endl;
	BasePrintVectorInt(v);
	v.resize(3);
	cout << "after resize(3) v.size() : " << v.size() << " , v.capacity() : " << v.capacity() <<endl;
	BasePrintVectorInt(v);	

	v.resize(5,-1);//重新指定vector长度为5，如果容器变长，则以"-1"填充新位置，如果容器变短，则末尾超出长度的元素将被删除
	cout << "after resize(5,-1) v.size() : " << v.size() << " , v.capacity() : " << v.capacity() <<endl;
	BasePrintVectorInt(v);		
}

void StlVector::vectorAssign(){
	cout << "vectorAssign::::::"<<endl;
	vector<int> v(5,100);//构造 5 个 内容是100 的vector
	BasePrintVectorInt(v);

	vector<int> v2;
	v2.assign(v.begin(),v.end());//区间赋值
	vector<int> v3 = v2;//重载=号赋值
	v3.push_back(200);
	
	BasePrintVectorInt(v2);
	BasePrintVectorInt(v3);

	v3.assign(3,300);//v3被重新赋值3 个 100，注意旧数据会被丢弃
	cout << "v3.assign(3,300)" << endl;
	BasePrintVectorInt(v3);

	v3.swap(v2);//将v3和v2的内容交换
	cout << "v3.swap(v2)" << endl;
	BasePrintVectorInt(v2);
	BasePrintVectorInt(v3);
}

void StlVector::vectorBase(){
	cout << "vectorBase::::::"<<endl;
	vector<int> v;//构造一个int类型的vector
	cout << "new vector v.capacity() : " << v.capacity() << "  v.capacity() : " << v.size()<<endl;
	v.push_back(1);
	cout << "after push 1 elem v.capacity() : " << v.capacity() << "  v.capacity() : " << v.size()<<endl;
	v.push_back(2);
	v.push_back(3);
	v.push_back(4);
	v.push_back(5);
	cout << "after push 5 elems v.capacity() : " << v.capacity() << "  v.capacity() : " << v.size()<<endl;
	
	vector<int> v2(v.begin(),v.end());//用一个老的vector中的数据初始化一个新的vector，将[v.begin(),v.end()]中的元素拷贝到当前vector
	v2.push_back(6);

	BasePrintVectorInt(v);
	BasePrintVectorInt(v2);

	vector<char> v3(3,'b');//用3个 'b' 构造一个char类型的vector
	vector<char> v4(v3);//拷贝构造函数
	v3.push_back('a');
	v3.push_back('c');
	for(vector<char> :: iterator it = v3.begin();it!=v3.end();it ++){
		cout << *it << " , ";
	}
	cout << endl;

	for(vector<char> :: iterator it = v4.begin();it!=v4.end();it ++){
		cout << *it<< " , ";
	}
	cout << endl;

	vector<int> v5;
	vector<int>::iterator it ;
	int count = 0;
	for(int i = 0;i< 1000;i++){
		v5.push_back(i);
		if(it != v5.begin()){
			it = v5.begin();
			count ++ ;
			cout << "vector 第"<< count <<"次分配新空间，capacity : " << v5.capacity() << " ,size : " << v5.size()<<endl;
		}
	}

	cout << "事先分配空间" << endl;
	vector<int> v6;
	v6.reserve(1000);//事先分配足够的容量，减少动态分配空间的开销
	vector<int>::iterator it2 ;
	count = 0;
	for(int i = 0;i< 1000;i++){
		v6.push_back(i);
		if(it2 != v6.begin()){
			it2 = v6.begin();
			count ++ ;
			cout << "vector 第"<< count <<"次分配新空间，capacity : " << v6.capacity() << " ,size : " << v6.size()<<endl;
		}
	}
}

