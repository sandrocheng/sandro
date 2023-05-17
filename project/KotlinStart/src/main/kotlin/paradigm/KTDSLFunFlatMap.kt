/**
 * DSL范式之 转换函数flatMap
 */
package paradigm

fun main(args:Array<String>){
    /**
     * flatMap 可以理解为集合的乘法，最后生成一个新的集合
     */
    val list = listOf("sandro","lily","lucy")
    val newList = list.flatMap {
        //最后一行是返回值，必须是个集合,比如list，set等
        setOf("$it is working","$it is sleeping")
    }
    newList.forEach {
        println(it)
    }

}

