/*
 * 菱形继承
 * 有公共祖先的继承
 * 最底层的子类数据会包含多份（公共祖先的数据）
 * 因为有多份公共祖先的成员，使用时候注意需要加作用域，避免歧义
 */

//动物
class Animal{
	public:
		int legs = 4;
};

//老虎
class Tiger:public Animal{

};

//狮子
class Lion:public Animal{

};

class Liger:public Tiger,public Lion{

};



