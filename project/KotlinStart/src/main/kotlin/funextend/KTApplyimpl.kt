/**
 * kt apply内置函数解析
 */
package funextend

fun main() {
    val str = "aaa"
    str.myApply {
        println("$length")
    }.myApply {
        println("$this , len is $length")
    }
}

/**
 * apply返回类型是引用本身
 * 匿名函数持有this 代表 调用者本身
 *
 * inline，因为使用到了匿名函数，使用inlin能够提高效率
 * fun<I> ， 泛型函数定义，代表当前函数只使用到了一个函数
 * I.myApply():I ， 泛型函数扩展，代表任何类型的变量都可以使用myApply，返回值是当前调用类型，实际上就是返回当前的调用者
 * lambda:I.()， -> Unit ,myApply的参数是一个匿名函数
 *                      该匿函数返回值是 Unit类型
 *                      入参是调用者类型，实际上就是调用者本身，
 *                      I.()这中写法，说明调用的时候用 this持有调用者的引用，如果是 （I），这种写法，持有的就是it
 *                      如参只有一个，并且是泛型时，才能这么写
 */
private inline fun<I>  I.myApply(lambda:I.()-> Unit):I{
    //lambda == lambda(this),因为参数定义的时候使用的是 I.(),说明只有一个参数，就是this本身，所以this就可以省略了
    lambda(this)
    return this
}