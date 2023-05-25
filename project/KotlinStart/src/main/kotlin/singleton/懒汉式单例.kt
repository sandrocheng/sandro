package singleton

/**
 * 使用派生方法实现
 * 通过私有化构造，让外部无法生成实例
 */
class LazySingleton private constructor() {
    companion object{
        //使用lazy 懒加载函数实例化
        //mode=LazyThreadSafetyMode.SYNCHRONIZED 内部会实现一个双重校验的逻辑提升效率，并保证线程安全
        val instatnce:LazySingleton by lazy(mode=LazyThreadSafetyMode.SYNCHRONIZED){
            LazySingleton()
        }
    }

    fun run(){
        println("LazySingleton run")
    }
}

fun main(){

    LazySingleton.instatnce.run()
}