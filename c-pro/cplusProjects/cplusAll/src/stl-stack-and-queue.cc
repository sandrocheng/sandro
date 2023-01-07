/*
 * stl-stack-and-queue.cc
 */

#include "stl-stack-and-queue.h"

void StlStackAndQueue::start(){
	cout << "========StlStackAndQueue start======="<< endl;
	stackBasic();
	queueBasic();
	cout << "========StlStackAndQueue end========="<< endl;
}

void StlStackAndQueue::queueBasic(){
	cout << "queueBasic::::::"<<endl;
	queue<int> q;
	q.push(1);
	q.push(2);
	q.push(3);
	q.push(4);
	q.push(5);
	q.push(6);

	cout << "size : " << q.size()<< ", q.front : " << q.front() << " ,q.back : " << q.back()<<endl;
	while(!q.empty()){
		cout << q.front() << " , ";
		q.pop();
	}
	cout<< endl;
	

}
void StlStackAndQueue::stackBasic(){
	cout << "stackBasic::::::"<<endl;

	stack<int> s;
	s.push(1);
	s.push(2);
	s.push(3);
	s.push(4);
	s.push(5);
	cout<<"s size : "<<s.size()<<endl;
	while(!s.empty()){
		cout << s.top() << " , ";
		s.pop();
	}
	cout<<endl;

}



