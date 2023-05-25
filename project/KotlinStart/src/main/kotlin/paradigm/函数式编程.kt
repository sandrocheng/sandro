package paradigm

fun main(){
    val names = listOf("name1","name2","name3")
    val ages = listOf(20,21,22)

    //使用kt 内置函数方法能够比较简洁的做集合操作
    (names zip ages).map {
        "name is ${it.first} ,ages is ${it.second}"
    }.map {
        println(it)
    }

    //更简洁的方式
    (listOf("name1","name2","name3") zip listOf(20,21,22)).map {
        println( "name is ${it.first} ,ages is ${it.second}")
    }
}