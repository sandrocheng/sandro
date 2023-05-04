package oop

data class AddClass2(val number:Int)
data class AddClass(val n1:Int,val n2:Int){

    //kt 中运算符的重载需要使用每个符号对应的特定函数名
    //比如 “+” 对应 plus,这里不像c++中可以直接使用符号作为函数名称
   operator fun plus(p2:AddClass2):Int{
       return n1 + n2 + p2.number
   }

   operator fun minus(p2:AddClass):Int{
       return n1 + n2 - p2.n1 - p2.n2
   }
}
/**
 * 运算符的重载
 * 和c++一样 kt也有运算符的重载
 *
 */
fun main(){
    //+号前面的类 需要实现运算符的重载，加号后面的类，通过重载函数的参数进行传递
    println("AddClass(1,2) + AddClass2(3) = ${AddClass(1,2) + AddClass2(3)}")

    println("AddClass(10,20) + AddClass(1,2) = ${AddClass(10,20) - AddClass(1,2)}")
}