/**
 * 泛型扩展函数
 */
package funextend

private fun <T> T.showContentInfo() = println("${if (this is String) "字符串长度：$length" else "$this 不是字符串"}")
private fun commonFun(){}

//显示当前时间
private fun <I> I.showTime() = println("调用时间：${System.currentTimeMillis()}")

//显示调用者的类型
private fun <K> K.showTypeAction() {
    when(this){
        is String -> println("String")
        is Int -> println("Int")
        is Char ->println("char")
        else -> println("其他类型")
    }
}

fun main(args:Array<String>){
    val s = 1
    s.showContentInfo()
    "ssss".showContentInfo()
    val k = 'a'
    k.showContentInfo()
    commonFun().showContentInfo()//void函数返回的是 Unit类型，所以也适用
    commonFun().showTime()
    "kk".showTypeAction()
    commonFun().showTypeAction()
}
