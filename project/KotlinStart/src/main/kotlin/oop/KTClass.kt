package oop

import oop.classes.ClassA
import oop.classes.ClassB

/**
 * 定义类 与 field关键字
 * 计算属性与防范竞态条件
 */
fun main(args:Array<String>){
    classAndField()
    calProAndPreStaticCon()
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
    ClassA().name = "sss"//实际上是隐式调用这个成员变量的set方法 => new ClassA().setName("sss")
    println(ClassA().age)//实际上是隐式调用 new ClassA().getAge()

    println("ClassA().info : ${ClassA().info}")

    println("ClassA().word : ${ClassA().word}")
}