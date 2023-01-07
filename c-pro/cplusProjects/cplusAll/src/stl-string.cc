/* -*- Mode: C; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*-  */
/*
 * stl-string.cc
 */

#include "stl-string.h"

void StlString::start(){
	cout << "=======StlString::start=========" << endl;
	stringBase();
	strBuild();
	strassign();
	getChar();
	stringAppend();
	strFind();
	stringCompare();
	stringSubstr();
	stringAD();
	cStyle();
	cout << "=======StlString::end=========" << endl;
}
void StlString::cStyle(){
	cout << "StlString::cStyle::::" << endl;
	string str = "string";

	//string 转 c-style
	char *s = (char*)str.c_str();
	cout << s << endl;
	
}

void StlString::stringAD(){
	cout << "StlString::stringAD::::" << endl;
	string str = "abcdefghijklmn";
	str.insert(0 , "AB") // 在第n位 插入字符串
	   .insert(2,(char*)"CD")
	   .insert(4,3,'E');//在第4位 插入 3 个‘E’
	cout << str << endl;

	str.erase(2,4);//删除从第二个位置开始的4个字符
	cout << str << endl;
}

void StlString::stringBase(){
	cout << "StlString::stringBase::::" << endl;
	string str = "abcdefg";
	cout << "str length : " << str.size() << " , str.capacity() : " << str.capacity()<< endl;
}

void StlString::stringSubstr(){
	cout << "StlString::stringSubstr::::" << endl;
	string str = "abcdefg";
	string sub = str.substr(1,3);//把字符串的第1位到第3位之间的字符串取出来 
	cout << "sub : " << sub << endl;
}

void StlString::stringCompare(){
	cout << "StlString::stringCompare::::" << endl;
	string str1 = "abcd";
	cout << "str1.compare(\"abcd\") is " <<str1.compare("abcd") << endl;
	cout << "str1.compare((char*)\"abc\") is " <<str1.compare((char*)"abc") << endl;

	if(str1 == "abcd"){
		cout << "str1 == \"abcd\""<<endl;
	}
}

void StlString::strFind(){
	cout << "StlString::strFind::::" << endl;
	string str("abcdaefaeabbb");
	int pos = str.find((char*)"ae",6);//从第n个位置开始查找字符串第一次出现的位置，n默认=0；
	cout << "pos is " << pos<<endl;

	string s = "ae";
	pos = str.find(s);//从第n个位置开始查找字符串第一次出现的位置，n默认=0；
	cout << "pos is " << pos<<endl;

	pos = str.find((char*)"ae",1,4);//从位置1 查找s,最多找4个字符
	cout << "pos is " << pos<<endl;

	pos = str.find('b',6);//从第n个位置查找字符，位置参数可以不写，默认0；
	cout << "pos is " << pos<<endl;

	pos = str.rfind((char*)"a");//查找最后一个字符出现的位置
	cout << "pos is " << pos<<endl;


	pos = str.rfind("a",4);//查找最后一个字符出现的位置，只查到第n个字符
	cout << "pos is " << pos<<endl;

	str = "abcd";
	str.replace(1,2,"BBCCCC");//替换从第pos位置的n个字符全部替换成str
	cout << "str is " << str <<endl;
	
}

void StlString::stringAppend(){
	cout << "StlString::stringCMP::::" << endl;
	string str1("str1"),str2("str2");
	cout << "str1 + str2 : " << str1 + str2 << endl;
	str1 += str2;
	cout << "str1 : " << str1 << endl;

	str1 += (char*)" hello ";
	cout << "str1 : " << str1 << endl;

	str1 += 'a';
	cout << "str1 : " << str1 << endl;

	str1.append(" abc")
		.append(str2)
		.append(3,'A')//在当前字符串尾部添加 n个 字符
		.append("大气",3)//把字符串的前n个字符拼接到当前字符串尾部，汉字占3个字符
		.append("abcdefg",1,5);//从字符串第pos个位置开始，取n个拼接到当前字符串尾部
	cout <<"str1 :" <<  str1 << endl;
	
	
}

void StlString::getChar(){
	cout << "StlString::getChar::::" << endl;
	string str("abcdefghijklmnopq");
	char &x = str.at(1);
	cout << "x is " << x << " , str[0] is " << str[0] << endl;

	str[0] = 'A';//str[]返回引用，可以修改字符串内容
	x = 'B';//使用引用变量复制at方法返回值也可以修改字符串内容
	str.at(2) = 'C';
	cout <<"after str change : " << str << endl;
	// [] 越界不会返回异常，at方法越界会抛出异常	

	try{
		char t = str.at(100);
	}catch(exception e){
		cout <<"getChar exception : " << e.what() << endl;
	}

	char y;
	try{
		y = str[100];
	}catch(exception &e){
		cout <<"getChar exception , " << e.what() << endl;
	}
	try{
		str[100] = 'a';//不同编译器效果不一样，比如qt 会直接段错误
	}catch(exception &e){
		cout <<"getChar exception , " << e.what() << endl;
	}
	cout << "y is " << y << endl;
}

void StlString::strassign(){
	cout << "StlString::strassign()::::" << endl;
	string str = "string assign";
	cout<<"str : " << str << endl;
	string str2;
	str2 = str;
	cout<<"str2 : " << str2 << endl;
	str2 = 'c';
	cout<<"str : " << str <<" , str2 : " << str2 << endl;

	char *p = (char *)"string pointer";
	str2 = p;//使用char 指针给string赋值
	cout<<"str : " << str <<" , str2 : " << str2 << endl;

	//assign 复制到当前string对象
	str.assign((char*)"new string");
	cout<<"str : " << str << endl;
	//复制char指针 前n个字符到当前字符串对象中
	str2.assign(p,10);
	cout<<"str2 : " << str2 << endl;

	str2.assign(str);
	cout<<"str2 : " << str2 << endl;
	str2.assign(6,'a');
	cout<<"str2 : " << str2 << endl;
	str2.assign("abcdefg higklmn",2,7);//从str的 第2位开始，复制7个字符到当前字符串
	cout<<" , str2 : " << str2 << endl;
}

void StlString::strBuild(){
	cout << "StlString::strBuild()::::" << endl;
	string str1("str1 word") ;//使用字符串初始化
	string str2 = str1;//使用拷贝构造 把str1的内容拷贝到str2
	string str3;//构造一个空串 string 对象
	string str4(5,'a');//使用5个字符'a' 初始化string对象
	cout << "str1 : " << str1 << endl;
	cout << "str2 : " << str2 << endl;
	cout << "str3 : " << str3 << endl;
	cout << "str4 : " << str4 << endl;
}
