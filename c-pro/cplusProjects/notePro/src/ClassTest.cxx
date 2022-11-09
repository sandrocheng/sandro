#include "ClassTest.h"

void classTest(){
	cout << "-----------classTest start-----------" << endl;
	Data data;
	data.setA(7);
	data.c = 5;
	data.showData();

	Person per;
	char name[] = "bob";
	per.init(20,name);
	per.printPer();
	cout << "getName() : " << per.getName()<<endl;

	Person p2;
	char name2[] = "cici";
	p2.init(20,name);
	if(isSamePer(p2,per)){
		cout <<"is same person" << endl;
	}else{
		cout << "is not same person" << endl;
	}

	if(p2.isSamePer(per)){
		cout <<"p2.isSamePer(per)  return true" << endl;
	}else{
		cout << "p2.isSamePer(per) return false" << endl;
	}

	ClassStudent cs;//隐式无参构造函数 推荐
	cs.printPer ();
	ClassStudent cs2 = ClassStudent(10,(char*)"cs2");
	cs2.printPer ();
	ClassStudent cs3(22,(char*)"cs3");//隐式调用有参数构造函数 推荐
	cs3.setAddr ((char *)"dalian");
	cs3.printPer ();

	cout << "ClassStudent cs4 = cs3 exec ====="<<endl;
	ClassStudent cs4 = cs3;//此时cs4的初始化执行的是 拷贝构造

	cs4.printPer ();

	//createCS 构造了一个新对象，并将该新的匿名对象放入到栈区（大于4字节回放到栈区）临时区
	//cs5 得到这个匿名对象后，直接把匿名对象改为了有名字的对象，此时不会发生拷贝操作
	//linux 编译时会优化这个操作，createCS创造的对象在返回时 因为返回给了cs5，相当于cs5接管了createCS中的对象，相当于给createCS中
	//创建的cs对象（栈区对象）直接改名了。这种操作会根据编译器不同，略有差别。有的是接管return时拷贝到临时栈区中的匿名对象(visual studio)，
	//有的是直接接管方法中创建对象的栈区内存中的对象（linux）
	cout << "ClassStudent cs5 = createCS() ====="<<endl;;
	ClassStudent cs5 = createCS();
	cs5.printPer ();
	cout << "cs6  ====="<<endl;
	ClassStudent cs6(10,(char*)"cs6",90,93); 
	cs6.printPer ();
	cout << "cs7  ====="<<endl;
	ClassStudent cs7(11,(char*)"cs7",90,93,99,100); 
	cs7.printfData(0).printfData (1).printfData (2).printfData (3);

	cout << "ClassStudent arr  ====="<<endl;
	//对象数组，每个元素都会自动调用构造函数和析构函数
	//对象数组不初始化，每个元素都调用无参构造
	ClassStudent arr1[2];

	//对象数组的初始化，必须显示使用有参构造，逐个元素初始化
	ClassStudent arr2[2] = {
		ClassStudent(11,(char*)"tom"),
		ClassStudent(12,(char*)"bob",80,77)
	};
	int len = sizeof(arr2)/sizeof(arr2[0]);
	for(int i = 0;i<len ;i++){
		arr2[i].printPer ();
	}
	dynamicObject();

	cout<<"static var========"<<endl;

	cout<< "static ClassScore.course : " << ClassScore::GET_COURSE() << endl;	

	cout << "singleton======"<<endl;
	ClassSingleTon::getInstance ()->setCount (1);
	ClassSingleTon::getInstance ()->setCount (2);
	ClassSingleTon::getInstance ()->setCount (3);
	cout << "ClassSingleTon::getInstance ()->getCount() : " << ClassSingleTon::getInstance()->getCount () << endl;
	cout << "-----------classTest end-------------" << endl;
}

static void dynamicObject(){
	cout << "dynamicObject============" << endl;
	ClassScore *sc = new ClassScore(78,89);
	cout << "[score sc] " << sc->getLog () << endl;
	delete sc;

	ClassScore *sc2 = new ClassScore;
	cout << "[score sc2] " << sc->getLog () << endl; 
	delete sc2;

	const int arraylen = 4;
	//可以指定有参构造，初始化数组，没有制定的使用无参构造
	ClassScore *scArr = new ClassScore[arraylen]{ClassScore(1,1),ClassScore(2,2)};
	cout << "arraylen : " << arraylen << endl;

	ClassScore *scArrlastMeta = scArr + 1;
	
	cout << "scArr first addr is " <<  scArr << " ,scArrlastMeta : " << scArrlastMeta << endl;
	for(int i=0;i<arraylen;i++){ 
		cout << "[score scArr] " << " " << i << " - " << scArr[i].getLog() << " , addr : " << &scArr[i] << endl; 
	}
	delete [] scArr;
	
}

static ClassStudent createCS(){
	ClassStudent cs(0,(char *)"--new--");//栈区 保存一个cs对象
	return cs;//return时候，会将cs拷贝到栈区的临时区域 并保存为一个匿名对象
}

static bool isSamePer(Person &p1,Person &p2){
	if(strcmp(p1.getName(),p2.getName()) != 0){
		return false;
	}
	return p1.getAge() == p2.getAge();
}
//Person 函数实现
void Person::setAge(int _age){
	if(_age > 100 || _age<0){
		cout << "age should <100 and >0"<< endl;
		return;
	}
	age = _age;
}

void Person::init(int _age,char* _name){
	setAge(_age);
	setName(_name);
}

char* Person::getName(){
	return name;
}

int Person::getAge(){
	return age;
}

void Person::setName(char* _name){
	strcpy(name,_name);
}

void Person::printPer(){
	cout << "person name : " << getName() <<" , age : " << getAge() << endl;
}

bool Person::isSamePer(Person &p2){
	if(strcmp(getName(),p2.getName()) != 0){
		return false;
	}
	return getAge() == p2.getAge();
}