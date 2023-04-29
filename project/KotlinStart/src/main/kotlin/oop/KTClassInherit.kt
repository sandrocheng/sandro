package oop

import oop.inheritClasses.BaseClass1
import oop.inheritClasses.BaseClass1Sub1

/**
 * 继承与重载
 * 类型转换和智能类型转换
 * Any超类
 */
fun main(args:Array<String>){
    classInherit()
    classRevert()
    anyClass()
}

/**
 * Any超类
 * Any相当于java的Object,kt中任何类都是隐式继承这个Any超类
 * class Obj1 : Any(),一般声明的时候都省略  ":Any()",
 * Any源码里会看到，只有类和方法的声明，并没有实现，实际上kt中有各平台的实现，内部已经自动匹配到对应平台的实现类中了
 */
fun anyClass(){
    println("anyClass===================")
    val bc : Any = BaseClass1Sub1("sandro")
    println("bc.toString() : ${bc.toString()}" )//toString就是Any超类提供的
}

/**
 * 继承与重载
 */
private fun classInherit(){
    println("classInherit===================")
    val bc : BaseClass1 = BaseClass1Sub1("sandro")
    bc.printName()
}

/**
 * 类型转换 和 智能类型转换
 */
private fun classRevert(){
    println("classRevert===================")
    val bcSub = BaseClass1Sub1("sandro")

    //使用is判断对象类型
    println("bcSub is BaseClass1Sub1 :  ${bcSub is BaseClass1Sub1}")//true
    println("bcSub is BaseClass1 :  ${bcSub is BaseClass1}")//true
    //println("bc is String :  ${bc is String}") is 用于有继承关系的类的判断，如果类型和bc可能的继承关系无关，编译器就直接能判断出来了

    if(bcSub is BaseClass1Sub1){
        //通过as 明确表示当前实例是子类
        (bcSub as BaseClass1Sub1).printName()
    }

    if(bcSub is BaseClass1){
        //通过as 明确当前调用是父类的方法
        (bcSub as BaseClass1).printName()//此时父类方法被子类重写所以还是调用子类的方法了
        (bcSub as BaseClass1).printInfo()
        bcSub.printInfo()//因为子类可以继承父类的public方法，所以也可以直接调用父类的方法
    }

    val bc:BaseClass1 = BaseClass1Sub1("tony")
    if(bc is BaseClass1Sub1){
        //bc此时是用父类声明的，即使赋值的是子类，也无法直接调用子类方法，必须用 is 判断
        //因为用了is判断，所以代码块里直接就转化为子类实例，并调用子类实例的方法了
        bc.showSubInfo()
        bc.printInfo()//子类可以直接调用父类的public方法
    }

    val bc2:BaseClass1 = BaseClass1Sub1("lily")
    //这里不能直接调用子类方法，必须用as转换后才能调用
    (bc2 as BaseClass1Sub1).showSubInfo()
    //一旦转换后，后面就可以省略转换了，就可以直接调用了
    bc2.showSubInfo()
}