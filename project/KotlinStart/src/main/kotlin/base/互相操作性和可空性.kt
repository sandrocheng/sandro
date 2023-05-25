package base

fun main(){
    //从java函数得到的返回值，不建议直接使用
    println(JavaTest.getInfo().length)
    try {
        //这种写法，虽然编译能通过，但是不推荐
        println(JavaTest.getNullInfo().length)
    }catch (e:Exception){
        println(e)
    }

    //从java获取的返回值，推荐使用可空变量接收后再调用
    val info1 : String? = JavaTest.getInfo()
    val info2 : String? = JavaTest.getNullInfo()
    println(info1?.length)
    println(info2?.length)

}