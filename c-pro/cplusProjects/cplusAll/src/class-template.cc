
/*
 * class-template.cc
 */

#include "class-template.h"

template <class T,class K> 
ClassTemplate<T,K>::ClassTemplate(){
}

template <class T,class K> 
ClassTemplate<T,K>::ClassTemplate(T a,K b){
	this->a = a;
	this->b = b;
}

template <class T,class K> 
void ClassTemplate<T,K>::showData(){
	cout <<"ClassTemplate::showData(),a : " << a << " ,b : " << b << endl; 
}
