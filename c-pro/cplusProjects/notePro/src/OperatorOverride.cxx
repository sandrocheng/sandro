#include "OperatorOverride.h"

void OperOverride(){
	cout <<endl<< "-----------OperatorOverride start------------"<<endl;
	overriteOperBasicTest();

	MyStringTest();
	functorTest();
	SmartPointerTest();
	cout << "-----------OperatorOverride end--------------"<<endl;
}

static void SmartPointerTest(){
	cout << endl << "智能指针SmartPointerTest======"<<endl;
	ClassPrint * cp = new ClassPrint();
	cp->func ();

	delete cp;//不释放，不会调用析构函数，最后造成栈区崩溃
	cout<<"通过智能指针调用 ClassPoint,并自动释放内存"<< endl;
	ClassPrintSmartPointer sp(new ClassPrint);
	sp->func();
	sp.operator->()->func();
	(*sp).func();
}

static void MyStringTest(){
	cout <<endl<< "MyStringTest===="<<endl;
	ClassMyString str((char*)"hello");
	cout << "str[0] : " << str[0] << ",string size is " << str.getSize ()<< endl;

	cout << "str[0] : " << str[10] << ",string size is " << str.getSize ()<< endl;

	if(str[3] != str.error){
		str[3] = 'F';
		cout<<"str[3] is " << str[3] << endl;
		cout << str << endl;
	}

	if(str[13] == str.error){
		cout<<"str[13] error " << endl;
	}

	ClassMyString str2((char*)" world!");
	cout <<"str + str2 = \""<< str + str2<< "\"" << endl;

	ClassMyString str3((char*)"hello");
	cout <<"str3 + \" world!\" = \"" << str3 + (char*)" world"<<"\""<<endl;

	str = str2 = str3;
	cout<<"str : " << str << endl;
	cout<<"str2 : " << str2 << endl;
	cout<<"str3 : " << str3 << endl;

	str = (char *)"hello world!!";
	cout << "str : " << str << endl;

	cout << "str > str2 is "<<(str > str2) << " , bool true is "<< true << endl;
	cout << "st2 > \"hello world!!\" is "<<(str2 > (char*)"hello world!!") << endl;
}

//仿函数
static void functorTest(){
	cout <<endl<< "仿函数functorTest=====" << endl;
    ClassPrint cp;
	cp((char*)"Hello print"); 
	ClassPrint()((char*)"Hello print 2 !");
}

static void overriteOperBasicTest(){
	cout << "overriteOperBasicTest===="<<endl;
	OverrideStudent lucy(100,"lucy",99.8f);
	cout << lucy<<endl;
	OverrideStudent lily(200,"lily",88.9f);
	operator<<(cout,lily)<<endl;

	cout <<"global func override  lily + lucy  :"<<endl;
	cout << lily + lucy << endl;	

	cout << "class func override (lily >> lucy) : " << endl;
	cout << (lily >> lucy) << endl;	

	if(lily == lucy){
		cout << "lily == lucy"<<endl;
	}else{
		cout << "lily != lucy"<<endl;
	}

	OverrideStudent stu1(100,"lucy",99.8f);
	OverrideStudent stu2(100,"lucy",99.8f);

	if(stu1 == stu2){
		cout << "stu1 == stu2"<<endl;
	}else{
        cout << "stu1 != stu2"<<endl;
	}

	cout <<"stu1 ++" << (stu1++)<<endl;
	cout <<"after stu1 ++ : " << (stu1)<<endl;

	OverrideStudent stu3 = ++lily;
	cout<<"stu3 : " << stu3<<endl;
	cout<<"lily : " << lily <<endl;	
}

static ostream& operator<<(ostream &out,OverrideStudent stu){
	out << "stu num :" << stu.num << " , name " << stu.name << " , score : " << stu.score;
	return out;
}

static OverrideStudent operator+(OverrideStudent &stu1,OverrideStudent &stu2){
	OverrideStudent tmp ;
	tmp.num = stu1.num + stu2.num;
	tmp.name = stu1.name + stu2.name;
	tmp.score = stu1.score + stu2.score;

	return tmp;
}