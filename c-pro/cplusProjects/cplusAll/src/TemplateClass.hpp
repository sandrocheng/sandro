//模板类由于定义 声明分类的问题，一般使用hpp这这特殊文件类型
//将声明和定义放在一起，方便使用
#include <iostream>
using namespace std;

template <class T,class K> class TemplateClass
{
	public:
		TemplateClass(){
        }
		TemplateClass(T a,K b){
        	this->a = a;
			this->b = b;
        }
		void showData(){
			cout <<"TemplateClass::showData(),a : " << a << " ,b : " << b << endl; 		
		}
	private:
		T a;
		K b;
};