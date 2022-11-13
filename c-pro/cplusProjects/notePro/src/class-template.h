
/*
 * class-template.h
 * 类模板
 */
#ifndef _CLASS_TEMPLATE_H_
#define _CLASS_TEMPLATE_H_

#include <iostream>
using namespace std;

template <class T,class K> class ClassTemplate
{
	public:
		ClassTemplate();
		ClassTemplate(T a,K b);
		void showData();
	private:
		T a;
		K b;
};

#endif // _CLASS_TEMPLATE_H_

