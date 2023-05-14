/**
 * 扩展函数
 * 增加扩展函数后
 *      生成的java代码时候编译器会增加一个 static方法
 *          public static final void show(Student $this$show){
 *              System.out.println($this$show.name + " , " + $this$show.age);
 *          }
 *      因为是public static 方法，所以该扩展函数也可以再任何地方调用
 */
package funextend

class Student(val name:String,val age:Int){
    private val info = "info"
    fun show(){
        showName()
        println("age:$age , info:$info")
    }

    private fun showName(){
        println("name : $name")
    }
}

//Student的扩展函数如果和本身的函数重名，将会被忽略
fun Student.show(){
    println("name : $name,age:$age")
}

//扩展函数内只能调用到public的成员，私有成员调用不了
fun Student.print(){
    println("name : $name,age:$age")
}

/**
 * 给Sring类增加扩展函数,该方法在任何类里都可以调用
 * @param n 增加一个重复符号的个数
 */
fun String.printName(n:Int):String = this + "@".repeat(n)

fun main(){
    Student("joy",33).show()//这里实际上调用的是类本身的show函数，扩展函数因为重名了所以被忽略了
    Student("lily",13).print()
    println("aaa".printName(3))
}