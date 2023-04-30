package oop.`object`

/**
 * 伴生对象
 * 由来：在kt中是没有static静态修饰符的，伴生很大程度上和java的static差不多
 */
class CompainObjClass {

    //伴生对象
    //CompainObjClass构建多少次，companion object中只有一次加载
    companion object{
        //相当于java中的静态变量
        val VERSION = "1.0"

        //相当于java 中的静态方法
        fun SHOWINFO(){
            println("CompainObjClass info ,version : $VERSION")
        }
    }
}