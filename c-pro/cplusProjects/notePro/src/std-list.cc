/*
 * std-list.cc
 */

#include "std-list.h"

void StdList::start(){
	cout << "===========StdList::start============" << endl;
	listBase();
	cout << "===========StdList::end==============" << endl;
}

void StdList::listBase(){
	cout << "listBase::::::::::" << endl;
	list<int> l;
	l.push_back(1);
	l.push_back(2);
	l.push_back(3);
	l.push_back(4);
	l.push_front(-1);
	l.push_front(-2);
	l.push_front(-3);
	l.push_front(-4);
	cout << "list size : " << l.size()<<endl;
	printListInt(l);

	//list迭代器是双向的，不支持 +2这样的操作，只能++
	list<int>::iterator it = l.begin();
	it ++;
	it ++;
	it ++;
	it ++;
	it ++;
	l.insert(it,3,100);//在迭代器的位置插入 3个 100
	cout << "list insert size : " << l.size()<<endl;
	printListInt(l);

	//stl提供的算法只支持随机访问迭代器，list是双向迭代器，所以sort不支持list
//	sort(l.begin(),l.end());
	l.sort();
	cout<< "sort list "<<endl;
	printListInt(l);

	l.reverse();//反转
	cout << "list reverse"<<endl;
	printListInt(l);
}

void StdList::printListInt(list<int> &l){
	list<int>::iterator it = l.begin();
	for(;it!=l.end();it++){
		cout << *it << " , ";
	}
	cout << endl;
}


