package oop

import oop.classes.*

/**
 * 定义类 与 field关键字
 * 计算属性与防范竞态条件
 * 主构造函数
 * 在主构造函数中定义属性
 * 次要构造函数
 * 初始化块
 * 构造初始化顺序
 * 延迟初始化lateinit
 * 惰性初始化
 * kt初始化陷阱
 */
fun main(args:Array<String>){
    classAndField()
    calProAndPreStaticCon()
    mainConstructor()
    proInMainCon()
    secondaryCon()
    initBlock()
    conInitOrder()
    lateInit()
    initByLazy()
    initError()
}

/**
 * 常见初始化陷阱
 */
private fun initError(){
    println("initError==================")
    println(ClassJ("sandro").number)
    println(ClassJ("sandro").nameLen)
}

/**
 * 惰性初始化
 */
private fun initByLazy(){
    println("initByLazy==================")
    val ci = ClassI()
    Thread.sleep(100)
    //从结果看实例化时候，类成员就已经加载，如果类成员是耗时的，实例化也会是耗时的
    //没有任何懒加载的特点
    println("not lazy load : ${ci.data}")

    val ci2 = ClassI()
    Thread.sleep(100)
    println("sleep finish")
    //懒加载，成员变量在使用的时候才加载，否则不加载，成员变量的加载不会影响实例化的效率
    println("lazy load : ${ci.data2}")
}

/**
 * 延迟初始化lateinit
 */
private fun lateInit(){
    println("lateInit==================")
    val h = ClassH();
    h.request()
    h.showValue()

    ClassH().showValue2()
}

/**
 * 构造初始化顺序
 */
private fun conInitOrder(){
    println("conInitOrder==================")
    ClassG("sandro",43,true)
}

/**
 * 初始化块
 */
private fun initBlock(){
    println("initBlock==================")
    ClassF()
    ClassF("sandro",43,"working")
}

/**
 * 次要构造函数
 */
private fun secondaryCon(){
    println("secondaryCon==================")
    val ce1 = ClassE("sandro")//使用主构造实例化一个对象
    println("ce1: ${ce1.name},info:${ce1.infoMsg}")
    val ce2 = ClassE("joy",35)//使用的是两个参数的次构造
    println("ce2: ${ce2.name} , age:${ce2.age},info:${ce2.infoMsg} ")
    val ce3 = ClassE("jhyehou",45,true)//使用的是三个参数的次构造
    println("ce3: ${ce3.name} , age:${ce3.age} ,info:${ce3.infoMsg}")

}

/**
 * 在主构造函数中定义属性
 */
private fun proInMainCon(){
    println("mainConstructor==================")
    var cd = ClassD("sandro",43,true )
    println("cd.sex : ${cd.sex } ,cd.name : ${cd.name },cd.age : ${cd.age }")
}

/**
 * 主构造函数
 */
private fun mainConstructor(){
    println("mainConstructor==================")
    val c = ClassC(_name="sandro" ,_age = -1,_isMale = true)
    println("c.name : ${c.name} ,c.age : ${c.age} , c.sex : ${c.sex}" )
}

/**
 * 计算属性与防范竞态条件
 */
private fun calProAndPreStaticCon(){
    println("calProAndPreStaticCon==================")
    println("ClassB().number : ${ClassB().number}")//实际上是new ClassB().getNumber()
    //ClassB().number = 1 此时编译会报错，因为number 是 val 类型，不会有set函数

    println("ClassB().number2 : ${ClassB().number2}")

    println("ClassB().getShowInfo() ：${ClassB().getShowInfo()}")

}

/**
 * 定义类 与 field关键字
 */
private fun classAndField(){
    println("classAndField==================")
    ClassA().name = "sss"//实际上是隐式调用这个成员变量的set方法 => new ClassA().setName("sss"),kt里实例化对象不需要new
    println(ClassA().age)//实际上是隐式调用 new ClassA().getAge()

    println("ClassA().info : ${ClassA().info}")

    println("ClassA().word : ${ClassA().word}")
}