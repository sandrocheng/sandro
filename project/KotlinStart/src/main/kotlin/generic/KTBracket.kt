package generic

/**
 * 泛型的[]操作符重载
 */
class BracketClass<T > (vararg objs:T){
    private val dataArray:Array<out T> = objs

    //默认get方法可以用[]读值
    operator fun get(index:Int):T? =  dataArray.getOrNull(index)
}

fun main(){
    val p = BracketClass("1",2,3.3f,true,null)
    for(i in 0..5){
        val data = p[i]
        data?.let {
            println("$i : ${data} is ${data.javaClass}")
        }?:println("取值失败")
    }

    println("------")
    val p2:BracketClass<String?> = BracketClass("A","B","C","D",null)
    for(i in 0..5){
        val data = p2[i]
        data?.let {
            println("$i : ${data} is ${data.javaClass}")
        }?:println("取值失败")
    }


}