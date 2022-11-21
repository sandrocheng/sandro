/*
 * stl-deque.cc
 */

#include "stl-deque.h"

void StlDeque::start(){
	cout << "=======StlDeque::start()=========" << endl;
	dequeBase();
	practice();
	cout << "=======StlDeque::end()=========" << endl;
}

void StlDeque::practice(){
	cout << "StlDeque::practice:::::::::::" << endl;
	vector<ClassTeacher> v;
	v.push_back(ClassTeacher(30,(char*)"bob"));
	v.push_back(ClassTeacher(25,(char*)"lucy"));
	v.push_back(ClassTeacher(31,(char*)"tony"));
	v.push_back(ClassTeacher(28,(char*)"tom"));
	v.push_back(ClassTeacher(20,(char*)"lily"));
	showVectorClassTeacher(v);
	payTeacher(v);
	cout <<"get average salary >>"<<endl;
	showVectorClassTeacher(v);
	
}

void StlDeque::payTeacher(vector<ClassTeacher> &v){
	vector<ClassTeacher>::iterator it = v.begin();
	srand(time(NULL));
	for(;it!=v.end();it++){
		deque<float> d;
		for(int i = 0;i<22;i++){
			d.push_back(rand()%100);
		}
		sort(d.begin(),d.end());
		d.pop_back();
		d.pop_front();

		(*it).setSalary((float)accumulate(d.begin(),d.end(),0) / d.size());
		
	}
}

void StlDeque::showVectorClassTeacher(vector<ClassTeacher> &v){
	vector<ClassTeacher> :: iterator it= v.begin();
	for(;it!=v.end();it++){
		cout << "salary : " << (*it).getSalary() << " , name : " << (*it).getName() <<endl;
	}
}

void StlDeque::dequeBase(){
	cout << "StlDeque::dequeBase:::::::::::" << endl;
	deque<int> d;
	d.push_back(1);
	d.push_back(2);
	d.push_back(3);
	d.push_front(-3);
	d.push_front(-2);
	d.push_front(-1);
	cout << "deque d size : " << d.size() << " , value is "<<endl;
	printIntDeque(d);

	d.pop_front();
	cout << "deque pop_front : " <<endl;
	printIntDeque(d);

	d.pop_back();
	cout << "deque pop_back : " <<endl;
	printIntDeque(d);

	d.insert(d.begin() + 2,3,100);//在第3位上插入3个100
	cout << "deque insert : " <<endl;
	printIntDeque(d);
}

void StlDeque::printIntDeque(deque<int> &d){
	deque<int>::iterator it = d.begin();
	for(;it!=d.end();it++){
		cout << *it << " , ";
	}
	cout << endl;
}
