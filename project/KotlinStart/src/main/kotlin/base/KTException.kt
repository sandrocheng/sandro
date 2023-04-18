package base

import java.lang.IllegalArgumentException

/**
 * 异常处理和自定义异常
 * 先决条件函数
 */

fun main(args:Array<String>){
    //异常处理和自定义异常=============================
    try {
        var info:String? = null;
        checkExeption(info);
        println(info!!.length);
    }catch (e:Exception){
        println("出现异常 $e");
    }

    //先决条件函数
    //使用checkNotNull 和 requireNotNull 判空
    var value:String?=null
    try {
        checkNotNull(value)
    }catch (e:Exception){
        println("$e");//java.lang.IllegalStateException: Required value was null.
    }
    try {
        requireNotNull(value)//java.lang.IllegalArgumentException: Required value was null.
    }catch (e:Exception){
        println("$e");
    }

    var b = false
    try {
        //Boolean变量 可以用require判断是否是false,false会抛异常
        require(b)//java.lang.IllegalArgumentException: Required value was null.
    }catch (e:Exception){
        println("require exception : $e");//java.lang.IllegalArgumentException: Failed requirement.
    }

}

private fun checkExeption(info:String?){
    info ?: throw MyException()
}

class MyException : IllegalArgumentException("没有赋值")