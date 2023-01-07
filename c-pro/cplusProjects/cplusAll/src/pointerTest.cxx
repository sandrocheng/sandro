
#include<iostream>
#include<time.h>

using namespace std;

static void pointerDefine();
static void arrayMetaPointer();
static void stringPointer();
static void pointersArr();
static void arrayPointer();
static void funArgsPointer();
static void funArgsPointer01(int *p);
static void printOneDimenArray(int *array,int arraylen);
static void printMatrix(int (*matrix)[3],int mRow,int mCol);
static int * getAddr();
static int add(int x,int y);
static int sub(int x,int y);
static int my_div(int x,int y);
static int multi(int x,int y);
static int myCalc(int x,int y,int (*func)(int x,int y));

void pointerTest(){
	cout<<"------------------pointertest start-------------------"<<endl;
	pointerDefine();
	arrayMetaPointer();
	stringPointer();
	pointersArr();
	arrayPointer();
	funArgsPointer();
	cout<<"------------------pointertest end-------------------"<<endl;
	
}


static void funArgsPointer01(int *p){
     *p = 100;
}

static void funArgsPointer(){
	cout << "funArgsPointer====="<< endl;

	int num = 0;
	funArgsPointer01(&num);
	cout << "after funArgsPointer01 ,num is " << num << endl;

	int array[] = {11,22,33,44,55};
	int arrLen = sizeof(array)/sizeof(array[0]);
	printOneDimenArray(array,arrLen);

	int matrix[][3] = {{1,2,3},{4,5,6},{7,8,9}};
	int mRow = sizeof(matrix)/sizeof(matrix[0]);
	int mCol = sizeof(matrix[0])/sizeof(matrix[0][0]);
	printMatrix(matrix,mRow,mCol);

	int *p = getAddr();
	cout << "getAddr value is " << *p << endl;

	int (*fp)(int x,int y) = NULL;//初始化函数指针
	cout<<"fp address size : " << sizeof(fp) <<endl;
	fp = add;//函数指针赋值，注意参数要一致
	cout<<"fp address : " << fp <<endl;
	int x = fp(10,20); //通过函数指针调用函数
	cout<<"fp return " << x<< endl;

	//使用typedef 给函数指针定义别名
	typedef int (*FUN_P)(int x, int y);
	FUN_P fp2 = add;
	cout << "fp2 address is " << fp2 << " , fp2 return " << fp(30,40)<<endl;


	char *str[4] = {(char *)"add",(char *)"sub" , (char *)"multi",(char *)"div"};
	srand(time(NULL));
	int type = rand() % 4;
	int result = 0;
	if(type == 1){
		result = myCalc(30,5,sub);
	}else if(type == 2){
		result = myCalc(30,5,multi);
	}else if(type == 3){
		result = myCalc(30,5,my_div);
	}else{
		type = 0;
		result = myCalc(30,5,add);
	}
	cout<<"fun is " << str[type] << " ,args is 30 5,return " << result << endl;
}

//函数指针型参
static int myCalc(int x,int y,int (*func)(int x,int y)){
	return func(x,y);
}

static int my_div(int x,int y){
	return x/y;
}

static int multi(int x,int y){
	return x * y;
}

static int add(int x,int y){
	return x + y;
}

static int sub(int x,int y){
	return x - y;
}

static int * getAddr(){
	static int num = 100;
	return &num;
}

static void printMatrix(int (*matrix)[3],int mRow,int mCol){

	for(int i=0;i<mRow;i++){
		for(int j = 0;j<mCol;j++){
			cout << matrix[i][j] << ", ";
		}
		cout<< endl;
	}
}


static void printOneDimenArray(int *array,int arraylen){
	for(int i = 0 ;i< arraylen;i++){
		cout << array[i] << " , ";
	}
	cout<<endl;
}

//数组指针
static void arrayPointer(){
	cout << "ArrayPointer====="<< endl;
	const int l = 7;
	int arr[l] = {11,22,33,44,55,66,77};
	int *q = (int *)(&arr + 1);
	int arrlen = q - arr;
	cout << "arr 首地址 ：" << &arr << " , 数组尾地址 ：" << q << " , 数组长度 ： " << arrlen
		<<endl;

	int (*p)[l] = NULL;//数组指针 本质是指针变量，只是该变量存储的是数组的首地址,数组指针必须定义长度
    cout << "sizeof(p) = " << sizeof(p)<<endl;
	cout << "p = " << p <<endl;
	cout << "p + 1 = " << p + 1 << endl;//p + 1 表示 该指针指向的跳过整个数组的地址（单位 字节）

	p = &arr;
	cout << "after assignment p = " << p << " &aar : " << &arr <<endl;

	cout << "*p = " << *p 
		<<" , *&arr = " << *&arr
		<< " , arr = " << arr
		<<endl;
	cout << "读取数组第三个元素 ， "
        << "*(arr + 2 ) = " << *(arr + 2)
		<< " , *(*p + 2) = " << *(*p + 2)
		<< " , *(*(p + 0) + 2) = " << *(*(p + 0) + 2)
		<< " , *(p[0] + 2) = " << *(p[0] + 2)
		<< " , p[0][2] = " << p[0][2]
		<< endl;

	int arr2[][4] = {
			{1,2,3,4},
			{5,6,7,8},
			{9,10,11,12}
	};

	cout << "0行0列取值，**arr2 = " << **arr2
		 << " , *(*arr2 + 0) = " << *(*arr2 + 0) 
		 << " , *(*(arr2 + 0) + 0) = " << *(*(arr2 + 0) + 0)
		 << " , *(arr2[0] + 0) = " << *(arr2[0] + 0)
		 << " , arr2[0][0] = "<< arr2[0][0]
		<<endl;
	
	int (*t)[4] = arr2;
	cout <<"t[2][2] = "  << t[2][2] << endl;

	int row = sizeof(arr2) / sizeof(arr2[0]);
	int col = sizeof(arr2[0]) / sizeof(arr2[0][0]);

	int *k = &arr2[0][0];
	for(int i = 0;i< row * col ;i ++){
		cout << k[i] << " , " ;
	}
	cout << endl;
}

//指针数组
static void pointersArr(){
	cout<<"pointersArr===="<<endl;
	int array[3] = {11,22,33};
	int *arr[] = {&array[0],&array[1],&array[2]};

	int len = sizeof(arr)/sizeof(arr[0]);
	cout << "arr len is " << len << endl;

	for(int i = 0;i < len ; i++){
		cout << "array " << i << " is " << array[i] << " , &array[" << i << "] is " << &array[i]
             << " arr[" << i << "] is " << arr[i] << " value of arr[" << i << "] is " << *arr[i]
			 <<endl; 
	}

	char *str[3] = {(char *)"hello",(char *)"world" , (char *)"sandro"};
	len = sizeof(str)/sizeof(str[0]);
	for(int i = 0;i<len;i++){
		cout << "str[" << i << "] is " << str[i] << " ,the 3rd char is " << *(str[i] + 2)<< endl;
	}
	

}
//字符串与指针
static void stringPointer(){
	cout<<"stringPointer===="<<endl;
	char str[128] = "hello world";
	cout << "str size is " << sizeof(str)<<endl;

	char *str2 = (char *)"hello world";//指针赋值字符串常量地址，该字符串是保存在文字常量区中的，只能读取不能写操作。
	cout<< "str2 is " << str2 <<endl;
}

/*
 *数组元素的指针
*/
static void arrayMetaPointer(){
	cout<<"arrayMetaPointer===="<<endl;

	int arr[5] = {10,20,30,40,50};
	int *p = &arr[0];
	cout<<"p value is " <<(int)(*p)<<endl;
	p = arr;
	cout<<"p value is " <<(int)(*p)<<endl;
	p = &arr[2];
	cout<<"p value is " <<(int)(*p)<<endl;

	p = arr;
	cout<<"array value is : ";
	int length = sizeof(arr)/sizeof(arr[0]);
	for(int i = 0;i<length;i++){
		cout<<*(p+i) << " ; " << &(*(p+i)) << " , ";
	}
	cout<<endl;

	cout << "&arr[0] : " << &arr[0]<<endl
		 << "&*(arr + 0) : " << &*(arr + 0) <<endl
		 << "arr + 0 " << (arr + 0) << endl
		 << "arr : " << arr << endl;


}

static void pointerDefine(){
	cout<<"pointerDefine===="<<endl;
	int num = 1024;
	cout<<"num is " << num << " , and address is " << &num <<" ,and address size is " <<sizeof(int *)<< endl; 
	int *p = NULL;
	p = &num;
	int *p2 = &num;
	int **p3 = &p;
	cout<<"pointer p is " << p << " , and p value is " << *p << " ,p2 is " << p2 << " &p2 is " << &p2 
        << " , and p3 is" << p3
		<< endl;

	num = 0x01020304;
	cout<<"p value is " << hex << *p <<endl;
	short *x = (short *)&num;
	cout<<"x value is "<<hex<<*x<<endl;
	cout<<"x low value is "<<hex<<*x << " , x high value is "<<*(x + 1)<<endl;

	char *y = (char *)&num;
	cout<<num << " each bite value : "<<endl
		<< "1 bite value is "<<hex<<(int) *y<<endl
		<< "2 bite value is "<<hex<<(int)(*(y + 1))<<endl
		<< "3 bite value is "<<hex<<(int)(*(y + 2))<<endl
		<< "4 bite value is "<<hex<<(int)(*(y + 3))<<endl;


	void *z = NULL;
	z = &num;
	short num2 = 3;
	z = &num2;//void一般用于形参，不能直接取*p,需要强转具体类型
	cout<<"void z is "<<hex<<z << " ,value is "<<*((short *)z)<<endl;
	cout<<dec;
}