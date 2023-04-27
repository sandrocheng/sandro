package oop.classes

/**
 * lateinit延迟加载是在使用的时候，手动加载的懒加载方式，然后再使用
 * 惰性初始化 by lazy，是自动加载，然后再使用
 */
class ClassI {

    //不使用惰性初始化，普通方式初始化一个耗时操作的变量
    val data:String = readbyDatabase()

    private fun readbyDatabase(): String {
        println("readbyDatabase....")
        println("readbyDatabase....")
        println("readbyDatabase....")
        println("readbyDatabase....")
        println("readbyDatabase....")
        println("readbyDatabase....")
        println("readbyDatabase....")
        return "database load success"
    }

    //使用惰性加载
    val data2 by lazy {
        readbyDatabase()
    }
}