/**
 * infix关键字
 *
 */
package funextend

/**
 * infix 中缀表达式，能够简化代码的写法
 * 自定义一个中缀表达式
 * 1 .中缀函数必须用在扩展函数中
 * 2 .必须有一个函数参数
 */
private infix fun <C1,C2> C1.gogo(c2 : C2){
    println("c1 is $this , c2 is $c2 ")
}
fun main(){
    //不依赖infix方式的写法
    mapOf(1.to("one") , 2.to("two"))
    //由于mapOf使用了 infix，所以可以简化成下面的写法
    mapOf(1 to "one" , 2 to "two")

    "a".gogo("b") //正常写法
    "abc" gogo "ccc" //简化写法
}
