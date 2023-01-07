#include<iostream>
#include<bitset>
#include<time.h>

using namespace std;

#define PI 3.14
#define MY_MUL(a,b) a*b
#define MY_MUL2(a,b) (a)*(b)

void defineFunc(){
	cout<<"defineFunc PI : " << PI <<endl;

	cout<<"MY_MUL(5,5) : " << MY_MUL(5,5) <<endl;


	/*
	 * 宏函数不具备参数完整性
	 * 这里会被替换成 10 + 10*20 + 20 ，因此最终结果是230，不是 800 （（10+10）* （20*20））
	 */
	cout<<"MY_MUL(10 + 10, 20 + 20) : " << MY_MUL(10 + 10, 20 + 20)<<endl;

	/*
	 *通过小括号把可以在一定程度上保证参数的完整性
	 */
	cout<<"MY_MUL2(10 + 10, 20 + 20) : " << MY_MUL2(10 + 10, 20 + 20)<<endl;
}