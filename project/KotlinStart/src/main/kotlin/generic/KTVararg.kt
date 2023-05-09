package generic

//vararg:多个动态参数
//isMulti ： true代表是有多个类型
class VarargClass<T>(vararg objs: T, val isMulti:Boolean){
    //必须要使用out修饰泛型类型，代表只能泛型T一旦传入后 就只能读取不能修改
    private val objArray : Array<out T> = objs

    fun showIndexData(index : Int): T? {
        val data = objArray.elementAtOrNull(index)

        if(this.isMulti){
            data?.let {
                println("cur data is ${data.javaClass}")
            }

        }
        return data
    }

    fun <K> revertObj(index:Int,action:(T?) -> K) = action(objArray.elementAtOrNull(index))
}
/**
 * 动态参数 vararg
 */
fun main(){
    //如果动态参数只有一种类型，可以手动写上类型,比如：val b:VarargClass<Int> = VarargClass(1,2,3, isMulti =true)
    //但是当参数的类型很复杂有String,double,char等，所以这里p对象的类型泛型是非常复杂的,
    //实际上是{Comparable<*>&java.io.Serializable}，kt语法不支持在这里使用这种类型的写法，
    //所以要么使用自动推导类型的方式定义变量，要么使用Any来指定泛型，如果参数里有null,则需要用Any?来指定泛型 例如 val p:VarargClass<Any?>
    //另外动态参数是可以传值null的，所以要注意判空的使用
    val p = VarargClass("1",2,3.3f,4.4444444444,false,'A',null, isMulti =true)
    println("p.showIndexData(0) : ${p.showIndexData(0)}")
    println("p.showIndexData(1) : ${p.showIndexData(1)}")
    println("p.showIndexData(2) : ${p.showIndexData(2)}")
    println("p.showIndexData(3) : ${p.showIndexData(3)}")
    println("p.showIndexData(4) : ${p.showIndexData(4)}")
    println("p.showIndexData(5) : ${p.showIndexData(5)}")
    println("p.showIndexData(6) : ${p.showIndexData(6)}")

    val x = p.revertObj(6){
        "{$it}"
    }

    x?.let { println("x is $x") }

    val p2:VarargClass<String?> = VarargClass("1",null, isMulti =true)
    val p3:VarargClass<String> = VarargClass("1","2", isMulti =true)
    val p4:VarargClass<Any?> = VarargClass("1","2",4,null, isMulti =true)
    val p5:VarargClass<Any> = VarargClass("1","2",4, isMulti =true)

    val s = p5.revertObj(1){
        it.toString()
    }
    println(s)
}