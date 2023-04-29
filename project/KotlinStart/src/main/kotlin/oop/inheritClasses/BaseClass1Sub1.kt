package oop.inheritClasses

/**
 * 使用:继承类
 * 子类使用临时变量接受name，并用父类的构造函数传值
 * 继承的父类可以使用主构造函数，也可以使用任何次要构造函数
 */
class BaseClass1Sub1(tmpName:String) : BaseClass1(tmpName){

    override fun printName() {
        println("BaseClass1Sub1->name : ${super.name}");
    }

    fun showSubInfo(){
        println("BaseClass1Sub1->name : ${super.name} age : $age");
    }
}