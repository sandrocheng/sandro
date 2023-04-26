package collection

/**
 * Map的创建
 * map取值
 * 可变map集合操作
 */
fun main(args : Array<String>){
    mapCreate()
    mapGetValue()
    mapForEach()
    mutableMap()
}

/**
 * 可变map集合操作
 */
private fun mutableMap(){
    println("mutableMap=================")
    //map的增、删、改
    val map:MutableMap<Int,String> = mutableMapOf(Pair(1,"abc"),Pair(2 , "def"),Pair(3,"ghi"))
    map += 4 to "qwer"
    map -= 1
    map[5] = "asd"
    map[2] = "aaa"
    println(map)

    //如果没有key对应的元素，就添加，并返回这个值,
    val result = map.getOrPut(6){"bbb"}
    println(map)
    println("result : $result")

    // 如果当前key对应的值存在则返回当前值，默认值不会起作用
    val r2= map.getOrPut(2){"bbb"}
    println(map)
    println("r2 : $r2")
}

/**
 * map遍历
 */
private fun mapForEach(){
    println("mapForEach=================")

    val map = mapOf(1 to "A",2 to "B",3 to "C",4 to "D")
    //方式一
    map.forEach { (t, u) ->
        println("key:$t , value:$u")
    }

    //方式二
    map.forEach{
        //it类型 Map.Entry<k,v>
        println("k:${it.key} , v:${it.value}")
    }

    //方式三
    for (entry in map) {
        println("key:${entry.key} , value:${entry.value}")
    }
}
/**
 * map取值
 */
private fun mapGetValue(){
    println("mapGetValue=================")
    val map  = mapOf(Pair(1,"jhye"),Pair(2,"jihai"),Pair(3,"wentao"))
    //方式1
    println("map[1] : ${map[1]}")
    println("map[100] : ${map[100]}")//如果找不到，返回null,不会崩溃

    //方式2 getOrDefault 设置一个非法情况下的默认值作为参数
    println("map[100] : ${map.getOrDefault(100,"-")}")

    //方式3 getOrElse 通过匿名函数设置默认返回值
    println("map[100] : ${map.getOrElse(100){"--"}}")

    //方式4 等价于map[100]
    println("map.get(100) : ${map.get(100)}" )

    //方式5 这种方式如果需要捕获异常，保证调用安全
    try{
        println("map.get(100) : ${map.getValue(100)}" )
    }catch (e:Exception){
        println("map.get(100) error $e")//java.util.NoSuchElementException: Key 100 is missing in the map.
    }

}
/**
 * Map的创建
 */

private fun mapCreate(){
    println("mapCreate=================")
    val map1 : Map<Int,String> = mapOf<Int,String>(1 to ("sandro") , 2 to ("joy") , 3 to ("yixiong"))
    println(map1)
    val map2  = mapOf(Pair(1,"jhye"),Pair(2,"jihai"),Pair(3,"wentao"))
    println(map2)
}