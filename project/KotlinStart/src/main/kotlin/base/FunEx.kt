/**
 * kt 函数
 */
package base

fun main(args: Array<String>) {
    val result = method1(18,"tom");
    println("method1 return $result")

    action1("lily",11)
    action2("lucy")
    action3()
    action3("tony",19)
    action3(age=11)//使用具名参数调用方式

    show(71);
//    show(-1)
    `测试`()
    JavaTest.`in`()//in是java类中的方法名，但是在kt中 in 是关键字，此时为了执行调用方法，需要用``
}

/**
 * Nothing类型特点
 */
private fun show(number:Int){
    when(number){
        in 0..59 -> println("不及格")
        in 60..69 -> println("及格")
        in 70..100 ->println("优秀")
        else -> {
            //TODO会返回一个Nothing类型的对象，并抛出异常，程序会终止
            TODO("没有这种分数 $number")
        }
    }
}

private fun `测试`(){
    println("测试反引号函数名")
}

//:Unit不写，默认也有，相当于Java中的void
private fun action1(name:String,age:Byte):Unit{
    println("action1 name :$name , age : $age");
}

private fun action2(name:String,age:Byte = 18){
    println("action2 name :$name , age : $age");
}

private fun action3(name:String = "NoName",age:Byte = 18){
    println("action3 name :$name , age : $age");
}

private fun action3(){
    println("action3 without param");
}

/**
 * private : 默认是public修饰符
 * fun : 函数声明关键字
 * method1 : 函数名
 * age:Int,name:String  函数参数
 * : Int ,返回类型
 */
private fun method1(age:Int,name:String) : Int {
    println("name $name , age : $age");
    return 200
}

