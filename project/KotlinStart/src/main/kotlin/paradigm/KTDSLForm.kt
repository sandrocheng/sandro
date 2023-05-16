/**
 * DSL编程范式
 * DSL: Domain Specified Language,领域专用语言，常见DSL语言有json,gradle
 * kt中的DSL语言一般用于小范围的代码块
 */
package paradigm

import java.io.File

class Context{
    var info = "info"
    fun toast(str : String) = println("toast : $str")

}

/**
 * 使用扩展函数，对Context增加一个apply5方法
 * Context.(String),说明lambda有两个参数
 *      参数一，Context，在扩展函数和匿名函数实现中使用this 代表Context
 *      参数二，String,在匿名函数中使用it获取
 */
private fun Context.apply5(lambda:Context.(String)->Unit):Context{
    // "apply5 info" 这个字符串，会传参给lambda匿名函数实现
    // 在匿名函数的实现中使用it获取
    lambda("apply5 info")//实际上是 lambda(this,"apply5 info")，this可以不写
    info += "1"
    return this
}

fun main(args:Array<String>){
    dsl1()
    fileApplyDSL()
}

private inline fun File.myApplyFile(lambda:(String,List<String>?)->Unit):File{
    lambda(this.absolutePath,this.readLines())
    return this
}

private fun fileApplyDSL(){
    println("fileApplyDSL=====================")

    //myApplyFile DSL范式：
    //  输入：必须是File类才有资格调用myApplyFile，匿名函数中会得到File.name 和 File.readLines
    //  输出：当前File对象
    File("res/text.txt")
        .myApplyFile{
            fileName:String,_ ->//两个参数，不去接收的可以用 “_”拒收
            println("文件名：$fileName")
        }.myApplyFile {
            _,data:List<String>? ->//两个参数，不去接收的可以用 “_”拒收
            println(data)
        }

}

private fun dsl1(){
    //这种调用就属于DSL编成范式
    //1、定义了lambda规则标准
    //     输入：必须是Context才有资格调用apply5函数，通过函数扩展的方式去限定,同时匿名函数中持有this和it
    //     输出：始终返回Context本身，所以可以链式调用
    //调用时候必须按照这个规则使用才可以，这就是DSL编程范式
    Context().apply5 {
        this.toast("success")
    }.apply5 {
        this.toast(it)
    }.apply5 {
        this.toast(this.info)
    }
}