/**
 * DSL范式之合并函数-zip
 */
package paradigm

fun main(args:Array<String>){
    val names = listOf("sandro", "lily", "lucy", "tony")
    val ages = listOf(40,30,20)

    //将两个集合合并起来，并返回一个新的集合，新集合的每个元素是Pair<String,Int>
    //因为ages只有三个，所以新的集合就只有三个元素
    val zipList = names.zip(ages)
//    val zipList = names zip ages   zip 是 中缀表达式，所以可以简写
    println(zipList)//[(sandro, 40), (lily, 30), (lucy, 20)]

    //因为每个元素是Pair类型的，所以合并之后，可以转换成map 或者 set等
    val map = zipList.toMap()
    println(map)//{sandro=40, lily=30, lucy=20}
    val set = zipList.toSet()//[(sandro, 40), (lily, 30), (lucy, 20)]
    println(set)
}
