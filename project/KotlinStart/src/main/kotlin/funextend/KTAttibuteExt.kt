/**
 * 属性扩展
 */
package funextend

/**
 * 对String类 增加一个 myInfo属性
 * 在编译成java时，在当前类下，定义一个了一个 getMyVersion(String $this$myInfo)的静态方法,String调用对象通过参数传进来
 */

private val String.myVersion :Double
    get()=1.0

private val String.myInfo : String
    get(){
        return "内容：$this,字符串长度：$length"
    }
fun main(){
    println("aaa".myVersion)
    println("sandro".myInfo)
}
