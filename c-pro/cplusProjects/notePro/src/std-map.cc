/*
 * std-map.cc
 */

#include "std-map.h"

void StdMap::start(){
	cout << "=========StdMap::start==========" <<endl;
	mapBasic();
	multimapExample();
	cout << "=========StdMap::end============" <<endl;	
}

void StdMap::multimapExample(){
	cout << "multimapExample:::::" <<endl;
	multimap<int,ClassTeacher> m;
	m.insert(make_pair(21,ClassTeacher(21,(char*)"lily")));
	m.insert(make_pair(22,ClassTeacher(22,(char*)"lucy")));
	m.insert(make_pair(22,ClassTeacher(22,(char*)"tom")));
	m.insert(make_pair(20,ClassTeacher(20,(char*)"bob")));
	m.insert(make_pair(20,ClassTeacher(20,(char*)"tony")));
	cout << "multimap size : " << m.size()<<endl;
	printMultiMap(m);

	printMultiMapByAge(m,19);
	printMultiMapByAge(m,20);
	printMultiMapByAge(m,21);
	printMultiMapByAge(m,22);

}

void StdMap::printMultiMapByAge(multimap<int,ClassTeacher> &m,int findAge){
	multimap<int,ClassTeacher>::const_iterator it = m.find(findAge);
	if(it != m.end()){
		int count = m.count(findAge);
		cout << "There are " << count << " teachers who is " << findAge <<" years old  " << endl;
		for(int i = 0;i<count;i++,it++){
			cout << "age : " << (*it).second.getAge() << " ,name : " <<(*it).second.getName()<<endl ;
		}
	}else{
		cout << "not find " << findAge << " years old teacher "<<endl;
	} 
}

void StdMap::printMultiMap(multimap<int,ClassTeacher> &m){
	multimap<int,ClassTeacher>::const_iterator it = m.begin();
	for(;it!=m.end();it++){
		cout << "key : " << (*it).first << " ,age : " << (*it).second.getAge()
			 << " ,name : " << (*it).second.getName()<< endl;
	}
}

void StdMap::mapBasic(){
	cout << "mapBasic:::::" <<endl;
	map<int,ClassTeacher> m;
	m.insert(pair<int,ClassTeacher>(21,ClassTeacher(1,(char*)"lily")));
	m.insert(make_pair(22,ClassTeacher(22,(char*)"lucy")));
	m.insert(make_pair(20,ClassTeacher(20,(char*)"tom")));
	m.insert(make_pair(26,ClassTeacher(26,(char*)"bob")));
	m.insert(make_pair(25,ClassTeacher(25,(char*)"tony")));
	m[19] = ClassTeacher(19,(char*)"foo");
	cout << "size : " << m.size()<<endl;
	printMap(m);
	//map[]这种方式取值一定要保证该key值存在，否则会在map李插入一个空的实值
	cout <<"m[20].getAge() : " << m[20].getAge() << endl;

	
}

void StdMap::printMap(map<int,ClassTeacher> &m){
	map<int,ClassTeacher>::const_iterator it = m.begin();
	for(;it!=m.end();it ++){
		cout << "key : " << (*it).first << " ,age : " << (*it).second.getAge()
			 << " ,name : " << (*it).second.getName()<< endl;
	}
}



