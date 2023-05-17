/**
 * DSL范式之过滤函数 filter
 */
package paradigm

fun main(){
    val list = listOf(
        listOf("1","2","3"),
        listOf("a","b","c"),
        listOf("A","B","C")
    )

    val newList = list.map { sublist ->  //把默认的it重命名为sublist
         //对每个子集合进行判断
        sublist.filter {
            //如果是数字则不加入新的集合中
            it.toIntOrNull() == null
        }
    }
    println(newList)
}