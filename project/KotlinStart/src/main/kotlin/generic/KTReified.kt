package generic
/**
 * reified
 */

data class ObjectClass1(val name:String,val age:Int,val info:String)
data class ObjectClass2(val name:String,val age:Int,val info:String)
data class ObjectClass3(val name:String,val age:Int,val info:String)

//所有功能写在函数上
class Manager{
    /**
     * 默认随机输出一个对象，如果此对象和用户指定的对象不一致，我么就启用备用对象
     * reified一般用在方法的泛型声明，使用reified的泛型可以通过as is 来比较当前对象的类和泛型声明的类
     * 使用reified的函数，需要声明为 inline函数
     */
    inline fun<reified T> randomOrDefault() : T?{
        val list:List<Any> = listOf(ObjectClass1("sandro",43,"working"),
            ObjectClass2("tony",12,"playing"),
            ObjectClass3("cici",22,"studying"))

        val obj:Any = list.shuffled().first()
        println("get random obj : $obj, class : ${obj.javaClass}" )

        //注意这里要返回 T？,因为takeIf(false)会返回null ,然后再返回 null as T? 才可以，
        // null as T 会抛异常 null cannot be cast to non-null type generic.ObjectClass1
        // null必须要转化为可空类型才行
        return obj.takeIf { it is T } as T?
    }
}

fun main(){
    val data:ObjectClass1? = Manager().randomOrDefault<ObjectClass1>()
    println("get data : ${data}")
}