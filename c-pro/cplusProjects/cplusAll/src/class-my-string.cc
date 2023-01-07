
#include "class-my-string.h"

//全局函数重载 << ClassMyString
ostream& operator <<(ostream &out,ClassMyString ob){
	out<<ob.str;
	return out;
}

bool ClassMyString::operator>(ClassMyString &ob){
	if(this->str == NULL && ob.str == NULL){
		return true;
	}else if(this->str == NULL || ob.str == NULL){
		return false;
	}else{
		return strcmp(this->str,ob.str) > 0;
	}
}

bool ClassMyString::operator>(char* string){
	if(this->str == NULL && string == NULL){
		return true;
	}else if(this->str == NULL || string == NULL){
		return false;
	}else{
		return strcmp(this->str,string) > 0;
	}
}

ClassMyString& ClassMyString::operator=(ClassMyString &ob){
	if(this->str != NULL){
		delete [] str;
	}
	this->size = ob.size;
	this->str = new char[this->size + 1 * (sizeof(char))];
	memset(this->str,0,this->size + 1 * (sizeof(char)));
	strcpy(this->str,ob.str);
	return *this;
}

ClassMyString& ClassMyString::operator=(char* string){
	if(this->str != NULL){
		delete [] str;
	}
	this->size = strlen(string);
	this->str = new char[this->size + 1 * (sizeof(char))];
	memset(this->str,0,this->size + 1 * (sizeof(char)));
	strcpy(this->str,string);
	return *this;
}


ClassMyString ClassMyString::operator+(ClassMyString &ob){
	ClassMyString temp;
	temp.size = this->size + ob.size;
	temp.str = new char[temp.size + 1*(sizeof(char))];
	memset(temp.str,0,temp.size + 1 * (sizeof(char)));
	strcpy(temp.str,this->str);
	strcat(temp.str,ob.str);
	return temp;
}

ClassMyString ClassMyString::operator+(char* string){
	ClassMyString temp;
	temp.size = this->size + strlen(string);
	temp.str = new char[temp.size + 1*(sizeof(char))];
	memset(temp.str,0,temp.size + 1 * (sizeof(char)));
	strcpy(temp.str,this->str);
	strcat(temp.str,string);
	return temp;
}

char& ClassMyString::operator[](int pos){
	if(pos < 0 || pos >= size){
		cout<< endl <<"error : ClassMyString::operator[] ,error pos ，pos : " << pos << ", size is "<< this->size <<endl;
		return error;
	}
	return str[pos];
}

int ClassMyString::getSize(){
	return this->size;
}

ClassMyString::ClassMyString(){
	str = NULL;
	size = 0;
}

ClassMyString::ClassMyString(char* str){
	this->str = new char[strlen(str) + 1];//strlen返回的是str的长度，申请空间的时候要多申请一个字节，保存字符结束位'\0'
	memset(this->str,0,strlen(str) + 1);
	strcpy(this->str,str);
	size = strlen(str);
}

ClassMyString::ClassMyString(const ClassMyString &ob){
	size = ob.size;
	this->str = new char[size + 1];
	memset(this->str,0,size + 1);
	strcpy(this->str,ob.str);	
}

ClassMyString::~ClassMyString(){
	if(str != NULL){
		delete [] str;
		str = NULL;
	}
}
