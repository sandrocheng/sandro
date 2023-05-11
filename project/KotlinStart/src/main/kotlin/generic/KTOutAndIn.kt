package generic

//生产者 <out T> 协变
//类/接口里泛型被out修饰 ，说明整个Producer类/接口里面，这个T只能被读取，不能被修改
interface Producer<out T>{

    //Type parameter T is declared as 'out' but occurs in 'in' position in type T
    //方法函数里有T，代表泛型被传入，所以编译器阻止这种写法
//  fun consume(item: T){}

    //因为是只读，所以作为返回值是允许的
    fun product():T?
}

//消费者 <in T> 逆变
//in修饰泛型T,说明不能被读取只能被修改
interface Consumer<in T>{
    //in 通过参数传入，说明可修改，这么写没问题
    fun consume(item: T)

    //Type parameter T is declared as 'in' but occurs in 'out' position in type T?
    //泛型T在这里被返回给调用者，说明可读了，所以编译器阻止这种写法
//    fun product():T?

}

//生产者&消费者 T 默认情况下是不变
//能被修改，也能被读取
interface ProducerAndConsumer<T>{
    fun consume(item: T)
    fun product():T?
}

open class Animal
open class Humanity : Animal()

open class Man:Humanity()
open class Woman:Humanity()
class ProducerAnimal : Producer<Animal>{
    override fun product(): Animal? {
        println("product Animal")
        return Animal()
    }
}

/**
 * 声明处泛型使用in修饰，这种写法java是不支持的，？extends xxx,是部分能放到类声明里
 * 当前类里面所有成员函数根泛型相关的只能修改，不能读取
 */
class SetClass<in T>( _data:T){
    private val data = _data//因为使用in来修饰反省了，所以必须用private，否则get方法会返回，导致编译处辍

    fun set1(item:T){
        println("set1 : $item")
    }

    //Type parameter T is declared as 'in' but occurs in 'out' position in type T
    //在in 声明的类里面，所有成员函数都无法返回根泛型相关的值
//    fun get1item():T{ return data}
}

/**
 * 声明处泛型使用out修饰，
 * 当前类里面所有成员函数根泛型相关的只能读取，不能修改
 */
class GetClass<out T>(_data:T){
   val  data = _data//因为不能让外部修改，所以这里需要用val，或者private var
    //Type parameter T is declared as 'out' but occurs in 'in' position in type T
    //不能让外界修改，编译失败
//    fun set1(item:T) = println("set1 : $item")

    //
    fun get1item():T{ return data}
}
/**
 * out-协变
 * in-逆变
 */
fun main(){
    outTest()
    inTest()
}

class ConsumerAnimal : Consumer<Animal>{override fun consume(item: Animal) = println("consume Animal") }
class ConsumerHumanity : Consumer<Humanity>{override fun consume(item: Humanity) = println("consume Humanity") }
private fun inTest(){
    //默认情况下泛型具体处（ConsumerAnimal）是不能赋值給泛型声明处 p1 : Consumer<Woman> 的
    //in的目的就是  泛型具体处（ConsumerAnimal）可以赋值給泛型声明处 p1 : Consumer<Woman>
    //逆变，子类（泛型声明处）接收父类（泛型具体处）的赋值  子类=父类
    val p1 : Consumer<Woman> = ConsumerAnimal()
    val p2 : Consumer<Man> = ConsumerHumanity()
    p1.consume(Woman())
    p2.consume(Man())
    /**
     * java中
    List<CharSequence> list = new ArrayList<CharSequence>();
    //子类String泛型 默认是不能接收 父类（CharSequence）泛型的，编译会失败
    List<String> list2 = new ArrayList<CharSequence>();
    //? super相当于 kt中的in，这样子类String泛型 就可以接收 父类（CharSequence）泛型了
    List<? super String> list3 = new ArrayList<CharSequence>();
     */

}
class ProducerHumanity : Producer<Humanity>{
    override fun product(): Humanity? {
        println("product Humanity")
        return Humanity()
    }
}
class ProducerMan : Producer<Man>{
    override fun product(): Man? {
        println("product Man")
        return Man()
    }
}
class ProducerWoman : Producer<Woman>{
    override fun product(): Woman? {
        println("product Woman")
        return Woman()
    }
}


/**
 * out-协变
 */
private fun outTest(){
    //协变，父类（泛型声明处）接收子类（泛型具体处）的赋值  父类=子类
    //out的作用：泛型的子类对型可以赋值给泛型的父类对象
    //默认情况下，没有out修饰，泛型的子类对象是不能赋值给泛型父类对象的
    val p1:Producer<Animal> = ProducerAnimal()//传递根类
    val p2:Producer<Animal> = ProducerHumanity()//因为泛型被out修饰了，所以传递父类也没有问题
    val p3:Producer<Animal> = ProducerMan()//同理子类也可以
    val p4:Producer<Animal> = ProducerWoman()//同理子类也可以
    p1.product()
    p2.product()
    p3.product()
    p4.product()

    /**
    //在java中 String实现了CharSequence接口
    List<CharSequence> list =  new ArrayList<CharSequence>();
    //默认情况下泛型的子类对象是不能直接赋值给父类对象的，编译失败，
    //泛型的实现类对象，不可以赋值给泛型的声明处的父类对象
    List<CharSequence> list2 = new ArrayList<String>();
    //? extends 相当于kt中的out,通过这种声明，才可以泛型子类对象赋值给泛型父类对象
    List<? extends CharSequence> list3 = new ArrayList<String>();
     */
}