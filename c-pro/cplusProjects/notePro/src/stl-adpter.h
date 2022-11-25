/*
 * stl-adpter.h
 * 适配器为算法提供接口
 *
 * 
 */

#ifndef _STL_ADPTER_H_
#define _STL_ADPTER_H_

#include <iostream>
#include "stl-start-base.h"
#include <vector>
#include <algorithm>

using namespace std;

class StlAdpter: public StlStartBase 
{
	public:
		virtual void start();

	private:
		//函数对象适配器
		void funObjAdapter();
		
		/*
		 *函数指针适配器 
		 *使用ptr_fun获取函数指针地址
		 * C++中函数名代表不了函数地址，需要使用ptr_fun(函数名)后才能得到函数地址
		 */
		void funpointerAdapter();

		/*
		 *成员函数适配器
		 * 使用mem_fun_ref 找到 容器中对象类的成员函数地址
		 */
		void memberfuncAdaptor();

		/*
		 * 取反适配器
		 * 
		 */
		void invertAdaptor();

};

class StlMemFuncAdaptor{

	private :
		int d;
	public:
		StlMemFuncAdaptor(int data){
			this->d = data;
		}

		void printInt(int tmp){
			cout << "d : " << d << " ,tmp : " << tmp << endl; 
		}
	
};

class StlAdpterPrintInt{
	public :
		void operator()(int val){
			cout << val << " , " ;
		}
};

//公共继承binary_function 参数萃取
//前两个int 值对应 仿函数的两个参数
//第三个使用 void
class StlAdpterPrintIntAdd:public binary_function<int,int,void>{
	public :
		//需要使用const修饰
		void operator()(int val , int tmp) const{
			cout << "[val : " << val << " ,tmp : " << tmp<< " ], " ;
		}
};

static void myPrintInt(int value,int tmp);

#endif // _STL_ADPTER_H_

