/**
 * 虚继承
 * 可以解决菱形继承带来的多个相同祖先变量的问题
 * 
 * 虚继承会在子类中产生虚基类指针（vbptr）指向虚基表类（vbtable），虚基表类记录的是通过该指针访问公共祖先的数据的偏移量
 * 注意：
 * 		虚继承只能解决具备公共祖先的多继承带来的二义性问题，不能解决没有公共祖先的多继承问题的。
 *      工程开发中真正意义上的多继承是几乎不被使用。因为多继承带来的代码复杂性远多于其带来的便利
 *      在设计方法上，审核多继承都可以用单继承代替
 */

class GrassEatAnimal{
	public:
		bool eatGrass = true;
};

class Horse: virtual public GrassEatAnimal{};

class Donkey : virtual public GrassEatAnimal{};

class Mule : public Horse,public Donkey{};