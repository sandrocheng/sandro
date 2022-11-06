#include<iostream>
#include<string.h>

using namespace std;

void strTest(){
	cout << "-----------strTest start-----------" << endl;
	char str1[] = "hello wrold";
	cout << "str1 is \"" <<str1 << "\" ,strlen is " << strlen(str1) << endl;

	char str2[] = "hello \0 wrold";
	cout << "str2 is \"" << str2 << "\" ,strlen is " << strlen(str2) << endl;
	cout << "-----------strTest end-------------" << endl;

	char dst[128] = "";//注意一定要申请长度，否则拷贝后 ，容易造成内存溢出的问题。
	char src[] = "hello\0world";
	strcpy(dst,src);
	cout << "dst is \"" << dst<< "\" ,and len is "<< strlen(dst) << endl;

	strncpy(dst,"eeeeeeee",(size_t)3);
	cout << "dst is \"" << dst<< "\" ,and len is "<< strlen(dst) << endl;
	
	strcat(dst," world");
	cout << "dst is \"" << dst<< "\" ,and len is "<< strlen(dst) << endl;

	strncat(dst,"!!!!!",1);
	cout << "dst is \"" << dst<< "\" ,and len is "<< strlen(dst) << endl;


	cout << "cmp src is " << strcmp(src,"hello")<< endl;
	cout << "ncmp src is " << strncmp(src,"hello111",5)<< endl;
	
}
