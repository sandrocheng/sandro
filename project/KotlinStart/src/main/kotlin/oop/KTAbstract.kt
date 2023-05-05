package oop

/**
 * 抽象类
 * kt的抽象类和java没有区别
 */
abstract class KTAbstract {

    abstract fun getSubData():String

    fun onCreate() = setData(getSubData())

    private fun setData(data:String) = println("get data : $data")
}

class Sub: KTAbstract() {
    override fun getSubData(): String = "sub data"
}

fun main() = Sub().onCreate()