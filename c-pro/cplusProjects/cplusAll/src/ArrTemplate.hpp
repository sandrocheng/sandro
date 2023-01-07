/*
* 数组类模板
*
*/
#include <iostream>
#include <string.h>
using namespace std;

template<class T>
class ArrTemplate{
		template<class K>
		friend ostream& operator<<(ostream &out,ArrTemplate<K> arr);
	private :
		T *arr;
		int size;
		int capacity;
	public :
		ArrTemplate();
		ArrTemplate(int capacity);
		ArrTemplate(const ArrTemplate &ob);
		~ArrTemplate();
		void push(T elem);
		void sortArr();
		ArrTemplate& operator=(ArrTemplate &ob);
}; 

template<class T>
ArrTemplate<T>::ArrTemplate(){
	this->capacity = 5;
	this->size = 0;
	arr = new T[capacity];
	memset(arr,0,sizeof(T) * this->capacity);
}

template<class T>
ArrTemplate<T>::ArrTemplate(int capacity){
	this->capacity = capacity;
	this->size = 0;
	arr = new T[capacity];
	memset(arr,0,sizeof(T) * this->capacity);
}

template<class T>
ArrTemplate<T>::ArrTemplate(const ArrTemplate &ob){
	this->capacity = ob.capacity;
	this->size = ob.size;
	arr = new T[this->capacity];
	memset(arr,0,sizeof(T) * this->capacity);
	memcpy(arr,ob.arr,sizeof(T) * this->capacity);
}

template<class T>
ArrTemplate<T>::~ArrTemplate(){
	delete [] arr;
}

template<class T>
ArrTemplate<T>& ArrTemplate<T>::operator=(ArrTemplate<T> &ob){
	if(this->arr !=NULL){
		delete [] arr;
		arr = NULL;
	}
	this->size = ob.size;
	this->capacity = ob.capacity;
	this->arr = new T[this->capacity];
	memset(this->arr,0,sizeof(T) * this->capacity);
	memcpy(this->arr,ob.arr,sizeof(T) * this->capacity); 
	return *this;
}

template<class T>
void ArrTemplate<T>::push(T elem){
	if(this->size >= this->capacity){
		this->capacity *= 2;
		T *tmp = new T[this->capacity];
		memset(tmp,0,this->capacity * sizeof(T));
		if(this->arr != NULL){
			memcpy(tmp,this->arr,sizeof(T) * size);
			delete [] this->arr;
		}
		this->arr = tmp;
	}
	arr[size] = elem;
	size ++;
}

template<class T>
void ArrTemplate<T>::sortArr(){
	if(this->arr == NULL || this->size ==0 ){
		cout<<"no elem in arr"<<endl;	
    	return;	
	}
	for(int i = 0;i<size -1 ;i++){
		for(int j = 0;j<size - i - 1;j++){
			if(this->arr[j] > this->arr[j+1]){
				T temp = this->arr[j];
				this->arr[j] = this->arr[j+1];
                this->arr[j+1] = temp;
			}
		}	
	}
}

template<class K>
ostream& operator<<(ostream &out,ArrTemplate<K> at){
	for(int i=0;i<at.size;i++){
		cout << i << " : " << at.arr[i] << " , ";
	}
	return out;
}