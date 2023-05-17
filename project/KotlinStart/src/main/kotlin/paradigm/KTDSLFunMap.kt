/**
 * DSL范式之 转换函数map
 */
package paradigm

fun main(args:Array<String>){
    val list = listOf("111", "333", "222", "ssss")

    /**
     * 内置函数 map，返回一个新的集合
     * it ：具体的每个元素
     * 最后一行返回一个新的元素，并把这些元素组成新的一个集合
     */
    val mapList = list.map {
        val data = it.toIntOrNull()
        if (data == null) 0 else (data + 100)
    }
    println(mapList)//返回新的List<Int> 集合

    //map用途:元素遍历修改值后生成一个新的map
    val list1 = list.map {
        val data = it.toIntOrNull()
        if (data == null) "000" else "$data"
    }.map {
        "【$it】"
    }
    println(list1)
}
