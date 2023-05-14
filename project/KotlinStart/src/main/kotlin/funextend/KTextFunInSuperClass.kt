/**
 * 在超类上定义扩展函数，因为影响范围比较大，需要慎用
 * 自己实现的超类扩展函数不能重复定义
 * kt内置的扩展函数可以覆盖
 */
package funextend

//对 Any超类进行扩展
fun Any.showContent() = println("content : $this")

fun Any.linkprint():Any{
    println("$this")
    return this
}

data class Result(val name:String,val password:String)
fun main(){
    //对Any类进行了扩展，所有子类都能调用到扩展函数
    Result("name","password").showContent()
    val n =  999
    n.showContent()
    //通过扩展函数完成一个链式调用
    n.linkprint().linkprint().linkprint()
}

