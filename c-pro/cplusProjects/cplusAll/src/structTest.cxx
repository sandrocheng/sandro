
#include <iostream>
#include <string.h>
#include <sstream>
#include <bitset>

using namespace std;

enum COLOR{RED = 10,GREEN,BLUE};

struct Score{
	int maths;
	int english;
	int his;
};

struct Student{
	int num;
	char name[20]; //字符常量数组赋值时 只能使用strcpy来拷贝，不能直接赋值，
	char sex;
	int age;
	char *addr;//字符串指针可以直接更改指针来赋值
	Score score;

	void setNum(int mNum){
		num = mNum;
	}
};

//有位域变量的结构体
//起到数据压缩的作用
//无法取得位域变量的地址
//位域宽度不能超过本身类型的宽度
//
struct BitStruct{
	unsigned int a:2;//只占用两位的变量
	unsigned int :2;//无意义位域，可以压缩，只占两位，不使用
	unsigned int :0;//另启一个存储单元，这样就不允许压缩
	unsigned int b:2;
	unsigned int c: 4;
};

//共用体，所有成员使用同一个空间
//该共用体只占最大成员类型的空间
union UnionData{
	char a;
	short b;
	int c;
};

static void structDeepCopy(Student *dst,Student *src);
static void structArray();
static void structPointer();
static void structArrayPointer();
static void structMem();
static void structINMem();

void structTest(){
	cout<<"------------------structTest start-------------------"<<endl;

    Student lucy  = {1,"lucy",'f',18,(char *)"USA",{5,3,4}};
	Student bob;
    bob.addr = (char *)"";
	//清空内存设置，不清空则为随机数
	memset(&bob,0,sizeof(bob));//从第0位开始清空整个结构体大小的数据
	bob.num = 2;
	strcpy(bob.name ,"bob");
	bob.sex = 'm';
	bob.age = 19;
	bob.addr = (char *) "AUS";
	Score score = {3,4,5};
	bob.score = score;
	cout<<"lucy num : " << lucy.num << " , name :" << lucy.name 
	    << " , sex : " << lucy.sex << " , age : " << lucy.age << " , addr : " << lucy.addr	
		<< " , maths : " << lucy.score.maths << " , english : " << lucy.score.english
		<< " , his " << lucy.score.his 
 		<< endl;
	cout<<"bob num : " << bob.num << " , name :" << bob.name 
	    << " , sex : " << bob.sex << " , age : " << bob.age << " , addr : " << bob.addr		
		<< " , maths : " << bob.score.maths << " , english : " << bob.score.english
		<< " , his " << bob.score.his 
		<< endl;


	Student stu = bob;//结构体直接赋值
	cout<<"stu num : " << stu.num << " , name :" << stu.name 
	    << " , sex : " << stu.sex << " , age : " << stu.age << " , addr : " << stu.addr		
		<< " , maths : " << stu.score.maths << " , english : " << stu.score.english
		<< " , his " << stu.score.his 		
		<< endl;

	memcpy(&stu,&lucy,sizeof(Student));//通过内存拷贝的方法 赋值
	cout<<"stu num : " << stu.num << " , name :" << stu.name 
	    << " , sex : " << stu.sex << " , age : " << stu.age << " , addr : " << stu.addr		
		<< " , maths : " << stu.score.maths << " , english : " << stu.score.english
		<< " , his " << stu.score.his 			
		<< endl;

	structArray();
	structPointer();
	structArrayPointer();
	structMem();

	cout <<"structDeepCopy============="<<endl;
	Student tom  = {4,"tom",'m',18,NULL,{3,3,4}};
	tom.addr = new char[20];
	strcpy(tom.addr,"CAN");
	cout<<"tom num : " << tom.num << " , name :" << tom.name 
	    << " , sex : " << tom.sex << " , age : " << tom.age << " , addr : " << tom.addr		
		<< " , maths : " << tom.score.maths << " , english : " << tom.score.english
		<< " , his " << tom.score.his 			
		<< endl;

	Student tony;
	structDeepCopy(&tony,&tom);
	strcpy(tony.name,"tony");;
	tony.setNum(5);
	cout<<"tony num : " << tony.num << " , name :" << tony.name 
	    << " , sex : " << tony.sex << " , age : " << tony.age << " , addr : " << tony.addr		
		<< " , maths : " << tony.score.maths << " , english : " << tony.score.english
		<< " , his " << tony.score.his 			
		<< endl;
	delete[] tony.addr;
	delete[] tom.addr;
	structINMem();

	cout << "bit struct BitStruct size is " << sizeof(BitStruct) << endl;
	BitStruct bs ;
	bs.a = 13;//1101;//a只能保存两位，只保存了 1101的底两位
	cout << "BitStruct a is " << (int) bs.a << endl;

	UnionData ud;
	cout << "UnionData size is " << sizeof(UnionData)<<endl;
	ud.a = 10;
	ud.c = 30;
	ud.b = 20;
	
	cout << "ud.a + ud.b + ud.c = "<< ud.a + ud.b + ud.c << endl;
	ud.c = 0x01020304;
	ud.b = 0x0102;
	ud.a = 0x01;
	cout << "ud.a + ud.b + ud.c = "<< hex << ud.a + ud.b + ud.c << endl;
	cout << dec;

	COLOR pcolor = RED;
	cout << "pcolor is " << pcolor << endl;
	cout << "RED : " << RED << " , GREEN : " << GREEN << " , BLUE : " << BLUE << endl;
	
	cout<<"------------------structTest end-------------------"<<endl;
}

//机构体指针变量在堆区
static void structINMem(){
	cout<<"structINMem======"<<endl;
	Student *p = new Student;
	cout<<"p address is " << p <<endl;
	

	Student lily  = {6,"lily",'f',17,NULL,{4,4,4}};
	*p = lily;
	p->addr = new char[20];
	strcpy(p->addr,"USA");
	
	cout<<"p address is " << p << " num : " << p->num << " , name :" << p->name 
	    << " , sex : " << p->sex << " , age : " << p->age << " , addr : " << p->addr		
		<< " , maths : " << p->score.maths << " , english : " << p->score.english
		<< " , his " << p->score.his 			
		<< endl;

	//释放空间 先释放成员指向
	delete [] p->addr;
	delete p;
	
}
//深拷贝，当结构体有指针变量，并且指针变量的值指向堆区的时候，直接赋值（浅拷贝），会导致多个地址指向同一个堆区的问题
//当一个结构体变量释放对区的时候会对其他对象的指针变量产生影响，所以需要深度拷贝避免该问题
static void structDeepCopy(Student *dst,Student *src){
	*dst = *src;
	dst->addr = new char[20];
	strcpy(dst->addr,src->addr);
}

//结构体指针指向堆区
static void structMem(){
	cout<<"structMem=========="<< endl;
	Student lucy  = {1,"lucy",'f',18,(char *)"USA",{5,3,4}};
	lucy.addr = new char[32];
	strcpy(lucy.addr,"CHINA");
	cout<<"lucy num : " << lucy.num << " , name :" << lucy.name 
	    << " , sex : " << lucy.sex << " , age : " << lucy.age << " , addr : " << lucy.addr	
		<< " , maths : " << lucy.score.maths << " , english : " << lucy.score.english
		<< " , his " << lucy.score.his << endl;	
	delete []lucy.addr;
}

static void structArray(){
	Student array[3] = {
		{1,"lucy",'f',18,(char *)"USA",{5,3,4}},
		{2,"bob",'m',16,(char *)"USA",{3,4,5}},
		{3,"nijia",'f',17,(char *)"JAN",{4,3,5}}
	};
	int len =  sizeof(array)/sizeof(array[0]) ;
	cout<< "array size is " << len  << endl;
	
	for(int i = 0;i< len ;i++){
		cout<<"array " << i << " ,num : " << array[i].num << " , name :" << array[i].name 
	    << " , sex : " << array[i].sex << " , age : " << array[i].age << " , addr : " << array[i].addr		
		<< " , maths : " << array[i].score.maths << " , english : " << array[i].score.english
		<< " , his " << array[i].score.his 			
		<< endl;
	}
}

static void structPointer(){
	Student stu = {1,"lucy",'f',18,(char *)"USA",{5,3,4}};
	Student *p = &stu;

	cout<<"structPointer p num : " << (*p).num << " , name :" << (*p).name 
	    << " , sex : " << (*p).sex << " , age : " << (*p).age << " , addr : " << (*p).addr		
		<< " , maths : " << (*p).score.maths << " , english : " << (*p).score.english
		<< " , his " << (*p).score.his 			
		<< endl;

		cout<<"structPointer p num : " << p->num << " , name :" << p->name 
	    << " , sex : " << p->sex << " , age : " << p->age << " , addr : " << p->addr		
		<< " , maths : " << p->score.maths << " , english : " << p->score.english
		<< " , his " << p->score.his 			
		<< endl;
}

static void sortArray(Student *p , int len){
	for(int i=0;i<len;i++){
		for(int j=0;j<len - i - 1;j++){
			if((p[j].num) < (p[j+1].num)){
				Student temp = p[j+1];
				p[j+1] = p[j];
				p[j] = temp;
			}
		}
	}
}


static void structArrayPointer(){
	cout<<"structArrayPointer=========="<< endl;
	Student array[3];
	memset(array,0,sizeof(array));

	int len = sizeof(array)/sizeof(array[0]);
	cout<< "len is " << len << endl;
	for(int i = 0;i<len;i++){
		Student s = {100 + i,"",'f',18 + i,(char *)"USA",{i,i+1,i+2}};
		array[i] = s;
		strcpy(array[i].name,"name-");
		ostringstream str;
		str << i;
		strcat(array[i].name,str.str().data());
	}
	sortArray(array,len);

	for(int i = 0;i< len ;i++){
		cout<<"array " << i << " ,num : " << array[i].num << " , name :" << array[i].name 
	    << " , sex : " << array[i].sex << " , age : " << array[i].age << " , addr : " << array[i].addr		
		<< " , maths : " << array[i].score.maths << " , english : " << array[i].score.english
		<< " , his " << array[i].score.his 			
		<< endl;
	}
	
}