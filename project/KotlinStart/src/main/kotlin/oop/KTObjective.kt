package oop

import oop.`object`.CompainObjClass
import oop.`object`.ExpressionClass
import oop.`object`.ObjTest1

/**
 * 对象的声明
 * 对象表达式
 * 伴生对象
 */
fun main(args:Array<String>){
    objDeclaration()
    objExpression()
    companionObj()
}

/**
 * 伴生对象
 */
private fun companionObj(){
    println("companionObj=====================")
    println("verison : ${CompainObjClass.VERSION}")
    CompainObjClass.SHOWINFO()
}

/**
 * 对象表达式
 * 对于java接口实例化，可以使用 object: 对象表达式，也可以使用 lmbda简化方式
 * 对于kt接口实例化，只能使用object:对象表达式
 */
private fun objExpression(){
    println("objExpression=====================")
    //匿名对象表达式方式
    //使用 “object :” 修饰类名， 可以直接继承出来一个匿名的子类，这个子类没有类名
    //同时返回一个实例
    val ec = object : ExpressionClass() {
        override fun add(info: String) {
            super.add(info)
            println("------------")
        }

        override fun del(info: String) {
            super.del(info)
            println("------------")
        }
    }
    ec.del("hello")
    ec.add("world")

    //具名对象表达式
    val sub = SubEC()
    sub.add("start")
    sub.del("end")

    //对java的接口，使用对象表达式方式
    val p3 = object : Runnable{
        override fun run() {
            println("java Runnable instance run ...")
        }
    }
    p3.run()

    //对java的接口，使用lmbda表达式实例化简化写法
    val p4 = Runnable {
        println("java Runnable short run ... ")
    }
    p4.run()

    //对kt接口只能使用对象表达式匿名实例化，不能像java接口一样使用lmbda方式实例化
    val p5 = object : KTRunnable{
        override fun run1() {
            println("KTRunnable run1...")
        }

        override fun run2() {
            println("KTRunnable run2...")
        }
    }
    p5.run1()
    p5.run2()
}

interface KTRunnable{
    fun run1()
    fun run2()
}

/**
 * 定一个具名子类
 */
class SubEC:ExpressionClass(){
    override fun add(info: String) {
        super.add(info)
        println("~~~~~~~~~~")
    }

    override fun del(info: String) {
        super.del(info)
        println("~~~~~~~")
    }
}


/**
 * 对象的声明
 */
private fun objDeclaration(){
    println("objDeclaration================")
    //objective ObjTest1即是单例实例，又是类名
    //多次调用init块只执行了一次，返回的引用都是一个
    println(ObjTest1)
    println(ObjTest1)
    ObjTest1.show()//因为是对象,所以不用实例化，直接当成变量使用
}