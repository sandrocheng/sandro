/**
 * kt内置函数和泛型扩展函数
 */
package funextend

/**
 * 过泛型扩展函数方法实现一个类似let一样的内置函数
 * 因为使用了匿名函数，为了提升效率，使用inline修饰
 * fun<I,O> 代表使用到了两个泛型，一个是input,一个是output
 * I.mylet ：定义一个扩展函数，任何类型都能使用(xxx.mylet),返回值是任何类型的值都可以，由用户决定
 * lambda : (I)->O) ： 参数是一个匿名函数，该匿名函数参数是调用者类型的变量，返回任何类型都可以(实际上是匿名函数变量的最后一行的值)
 * 函数体中使用this代表调用的对象，因为是对I进行了扩展此时，this实际上就是输入的数据I。 this == I本身
 */
private inline fun<I,O> I.mylet(lambda : (I)->O):O = lambda(this)



fun main(){
    val str = "sandro".mylet{
        //匿名函数，当参数只有一个时，可以不用列举参数类型，并直接用it当作引用
        "{$it}"
    }
    str.apply {  }
    println(str)
}