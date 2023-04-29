package oop.inheritClasses

/**
 * 所有的类默认是被final修饰的不能被继承 ，和java相反
 * 如果要被继承需要使用 open
 *
 * 所有的函数默认也是final修饰的
 * 如果要被继承需要使用open
 */
open class BaseClass1(var name:String, val age:Int) {

    constructor(_name:String) : this(_name,20) {
        name = _name
    }

    private fun showName() = "name :$name"

    open fun printName() = println(showName())

    fun printInfo() = println("name :$name ,age :${age}")
}

