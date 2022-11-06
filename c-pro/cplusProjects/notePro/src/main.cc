/* -*- Mode: C; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*-  */
/*
 * main.cc
 * Copyright (C) 2022 sandro <sandro@sandro-Lenovo-XiaoXin-V4000>
	 * 
 * foobar-cpp is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
	 * 
 * foobar-cpp is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License along
 * with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
#include<iostream>
#include<bitset>
#include<time.h>
#include "mainFun3.h"
#include "pointerTest.h"
#include "memory.h"
#include "stringTest.h"
#include "structTest.h"
#include "LinkArray.h"
#include "Cobject.h"
#include "ReferenceTest.h"
using namespace std;

//全局变量可以提前声明
extern int _data;
const int data = 100;

void cinIntTest();
void cinCharTest();
void cinCharTest2();
void fdTest();
void signTest();
void registerTest();
void sizeofTest();
void typedefTest();
void randTest();
void operatorTest();
void charArrayTest();
extern void MF_arraytest();
extern void test();


int main(int argc,char *argv[])
{
	int i;
	int x = 0b11111111;
	short y = 011;
	long z = 0x1f;
	int q = 500;


	cout << "Hello world! argc is " << argc
		<< endl
		<< "x is " << x
		<< endl
		<< "binary q is " << bitset<16>(q)
		<< endl
		<< "8-baes y is " << y << ",binary number is " << bitset<8>(y) <<" , oct :" << oct << y // oct 使用8进制展示变量
		<< dec //让cout重新改为10进制
		<< endl
		<< "16-baes z is " << z <<",binary number is " << bitset<16>(z) <<" ,  hex :" << hex << z// hex 使用16进制展示变量
		<< dec //让cout重新改为10进制
		<< endl
		<< "非初始化变量 i 的默认值 ："<< i
		<< endl
		<< "extern data is " << _data 
		<< endl;

	short j = 0x8fff;
	cout << "j dec is " << j << " , hex is " << hex << j << " ,binary is " << bitset<16> (j) << dec << endl;

	short k = -0x8fff;//8进制和16进制源码存储，负值需要再作一次补码运算，0x8fff需要17位保存导致溢出，不建议用负的16进制，转成十进制再求负数比较好
	cout << "k dec is " << k << " , hex is " << hex << k << " ,binary is " << bitset<16> (k) << dec << endl;

	cout << "j + k = "<<j+k<<endl;

	cout << "char " << 'a' << " ASCII num is " << (int)'a' << endl;

	char ch;
	cout << "null char is " << ch << " , ASCII is "<< (int)ch << endl;
	ch = '\0';//char 初始化最好用 ‘\0’ 对应ASCII 就是 0
	cout << "ch is " << ch << " , ASCII is " << (int)ch << endl;

	ch = 500;
	cout << "500 ch is " << ch << " , ASCII is " << (int)ch << endl;
	ch = 0b11110100;//500 二进制是0000000111110100 超出char范围，只能赋值8位  11110100 即 -12
	cout << "ch is " << ch << " , ASCII is " << (int)ch << endl;
//	cinIntTest();
//  cinCharTest();
//	cinCharTest2();
	fdTest();
	signTest();
	registerTest();
	sizeofTest();
	typedefTest();
    randTest();
	cout<<'\a'<<endl;
//	operatorTest();
	MF_arraytest();
//	charArrayTest();
	test();
	mf3_test();
	pointerTest();
	memoryTest();
	strTest();
	structTest();
	linkArrayTest();
	CobjectTest();
	ReferenceTest();
	return 0;
}

int _data = 111;



void charArrayTest(){
	char charArr1[] = "hello";
	cout<<charArr1 << " , length is " <<sizeof(charArr1)/sizeof(charArr1[0])<<endl;

	char charArr2[] = "hel\0lo";
	cout<<charArr2 << " , length is " <<sizeof(charArr2)/sizeof(charArr2[0])<<endl;



	char charArr4[32] = "";
	cout<<"请输入一行字符串（可以有空格）： ";
	cin.getline(charArr4,32);
	int length = 0;
	while(charArr4[length]!='\0'){
		length++;
	}
	cout<<"输入的字符串是："<<charArr4<< " , 长度为 ： " <<length<<endl;


	char charArr3[] = "";
	cout<<"请输入字符串(不能带空格，空格后面的字符串会被忽略) ： ";
	cin>>charArr3;
	cout<<"输入的字符串是："<<charArr3<<endl;

}

void operatorTest(){
	unsigned char data = 0xe7;
	unsigned char data2 = 0b10000001;
	cout << bitset<8>(data) <<" & " << bitset<8>(data2) << " = " << bitset<8>(data & data2)<< endl;

	cout << bitset<8>(data) <<" | " << bitset<8>(data2) << " = " << bitset<8>(data | data2)<< endl;

	cout << bitset<8>(data) <<" 按位取反 : "  << bitset<8>(~data)<< endl;

	cout << bitset<8>(data) <<" ^ " << bitset<8>(data2) << " = " << bitset<8>(data ^ data2)<< endl;


	int data3 = 0;
	int pos = 0;
	cout << "请输入一个整型数字 和 取第几位的值(右数第一个数字是0位)： ";
	cin >> data3 >> pos;
	cout << data3 << " 的二进制是 ： " << bitset<8> (data3) << " , 需要取第"<<pos << "位的值"<< endl;

	int num = data3>>pos;
	cout << bitset<8> (data3) << " 右移" << pos << "位 ： "<<  bitset<8> (num) << endl;

	int posnum = num & 0b1;//保留第0位，其他位都清零
	cout << "其他位清零 ： "<< bitset<8>(posnum)<<" ,第 " << pos << "位是 : "<< posnum <<endl;
	
}

void randTest(){
	srand(time(NULL));//使用rand()函数获取随机数之前要设置一个基数，最好用时间作为基数
	for(int i = 1;i< 6;i++){
    int data = rand() %100;
	cout << "随机数 " << i << " : "  << data << endl;
	}
}

void typedefTest(){
	typedef int INT32;
	INT32 x = 10;
	cout << "INT32 size is " << sizeof(INT32) << " , x is " << x << endl;

	typedef int MY_ARRAY[5];
	MY_ARRAY arr = {1,2,3,4,5};

	cout << "MY_ARRAY length : " << sizeof(MY_ARRAY) << endl;

}

void sizeofTest(){
	int x = 10;
	char y = '\0';
	short z = 20;
	long j = 300;
	float k = 1.0f;
	double t = 3.3;
	
	cout << "char size is " << sizeof(y) << endl 
		 << "short size is " << sizeof(z) << endl
		 << "int size is " << sizeof(x) << endl
		 << "float size is " << sizeof(k) << endl
		 << "long size is " << sizeof(j) << endl
		 << "double size is " << sizeof(t)
		 << endl;
}

void registerTest(){
	register int data = 0;
	for(int i=0;i<100;i ++){
		data += 2;
	}
	cout << "register data is " << data << endl;
}


void signTest(){
	short a = -22;
	cout << "signed " << a << " binary is " << bitset<16>(a)<<endl;
	cout << "signed " << -a << " binary is " << bitset<16>(-a)<<endl;

	unsigned short b = 0b1111111111101010;
	short c = 0b1111111111101010;// 负数，首位用“1”，其余部分用正数原码的补码表示
    cout << "unsigned binary " << bitset<16>(b) << " is " <<  b << endl 
		 << "signed binnary  " << bitset<16>(c) << " is " << c <<endl;
}

void fdTest(){
	float f = 3.14f;
	cout << f << " float size is  " << sizeof(f) << endl;

	double d = 0.0;
	cout << d << " double size is " << sizeof(d) << endl;
}

// 字符大小写转换练习
void cinCharTest2(){
	char ch = '\0';

	cout<<"请输入一个英文字母进行大小写转换，非英文字母不会转换 : ";
	cin >> ch;
	if(ch >= 'a' && ch <= 'z'){
		cout<<"转换为大写字符 : " << (char)(ch - ('a' - 'A')) << endl;
	} else if(ch >='A' && ch <= 'Z'){
        cout<<"转换为小写字符 : " << (char)(ch + ('a' - 'A')) << endl;
	}else{
		cout<<ch<<" 不是英文字母" << endl;
	}
}

//char输入练习
void cinCharTest(){
	char ch = '\0';
	cout<< "请输入一个字符 ：";
	cin>>ch;
	cout << "输入的字符是 ： " << ch << " , ASCII is : " << (int)ch << endl;	
		
}

//整形输入练习
void cinIntTest(){
	int cinData1 = 0;
	int cinData2 = 0;
	cout<<"请输入整形赋值给cinData1 和 cinData2: ";
	cin>>cinData1>>cinData2;
	cout<<"cinData1 is " << cinData1 
		<<" , cinData2 is "<< cinData2 
		<<endl;
}

