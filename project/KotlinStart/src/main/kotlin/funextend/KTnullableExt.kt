/**
 * 可空类型扩展函数
 */

package funextend

//通过增加?号声明该函数是可空类型扩展函数，即使是空 也能调用该函数
private fun String?.outputValue() = println(this?:"cur value is null")

private fun String.outputValue2() = println(this)

fun main(){
    val value:String? = null

    //因为output2不是可空类型扩展函数，所以当value是可空类型的时候就只能通过value? 去调用
    //如果value为null，根据kt语法规则，outputValue2是不能执行的
    value?.outputValue2()

    //outputValue()是可空类型扩展函数，即使value是null，依然能够执行
    value.outputValue()
}