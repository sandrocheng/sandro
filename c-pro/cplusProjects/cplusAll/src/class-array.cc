/* -*- Mode: C; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*-  */
/*
 * class-array.cc
 */

#include "class-array.h"

ClassArray::ClassArray(int capactiy){
	this->size = 0;
	this->capacity = capactiy;
	this->arr = new int[this->capacity];
	memset(arr,0,sizeof(int) * (this->capacity));
}
ClassArray::ClassArray(){
	this->size = 0;
	this->capacity = 5;
	this->arr = new int[this->capacity];
	memset(arr,0,sizeof(int) * (this->capacity));
}

ClassArray::ClassArray(const ClassArray &ca){
	this->size = ca.getSize ();
	this->capacity = ca.getCapacity();
	this->arr = new int[this->capacity];
	memcpy(this->arr,ca.getArr (),sizeof(int) * (this->capacity));

}

ClassArray::~ClassArray(){
	if(this->arr!=NULL){
		delete [] this->arr;
	}
}

int ClassArray::getSize() const{
	return this->size;
}

int ClassArray::getCapacity() const{
	return this->capacity;
}

int* ClassArray::getArr() const{
	return this->arr;
}

void ClassArray::printf(){
	cout<<"array size is  " << size << " , " << ",capacity is " << capacity << endl;
	for(int i=0;i<this->size;i++){
		cout <<i <<" : " << this->arr[i] << " , ";
	}
	if(size == 0){
		cout << "arr is empty";
	}
	cout << endl;
}

void ClassArray::addData(int elem){
	if(this->size >= this->capacity){
		int *temp = new int[2*(this->capacity)];
		memset(temp,0,sizeof(int)*2*(this->capacity));
		memcpy(temp,this->arr,sizeof(int) * size);

		delete [] arr;
		this->arr = temp;
		capacity = capacity * 2;
	}

	this->arr[size] = elem;
	size +=1;
}

void ClassArray::delBack(){
	if(size <= 0){
		cout << "arr is empty";
	}
	else{
		size --;
		arr[size] = 0;
	}
}
int& ClassArray::at(int pos){
	if(pos < 0 || pos >=size){
		cout << "illegal pos : " << pos << " ,cur arr size is " << size << endl;
		error = ERROR;
		return error;
	}
	
	return arr[pos];
}


