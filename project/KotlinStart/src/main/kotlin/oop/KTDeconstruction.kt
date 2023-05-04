package oop

class Student(var name:String,var age:Int){

    //解构函数特点
    // 使用 operator修饰
    // 函数名以compent为前缀，从1开始，逐一顺序添加
    // 和成员一一对应
    operator fun component1() = name
    operator fun component2() = age

    override fun toString(): String {
        return "Student[name:$name , age:$age]"
    }
}

/**
 * 数据类自动生成主构造的解构函数
 */
data class Student2(var name: String, var age: Int){
    var info="info_"

    //次构造中新增的参数不会自动生成解构函数
    constructor(_info:String):this("未知", 0,){
        info = _info
    }
}

/**
 * 解构的声明
 */
fun main(args:Array<String>){
    val p = Student("lily",20)
    val(name,age) = p //解构参数 和 component1 component2 ...一一对应
    println(p)
    println("普通类解构获取成员变量的值 name:$name,age:$age")

    val p2 = Student2("lily", 20,)
    val(_,age2) = p2//使用 _ 占位符，拒收对应的值
    println(p2)
    println("数据类获取成员变量的值 age2:$age2")

}