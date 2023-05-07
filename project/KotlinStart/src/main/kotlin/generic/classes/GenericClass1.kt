package generic.classes

/**
 * T代表类型 types
 * kt的泛型定义和java一样
 */
class GenericClass1<T>(private val obj:T) {
   //定义一个万能输出器
    fun show() = println("万能输出器：${obj}")
}

data class StudentData1(val name:String,val age:Int,val isMale:Boolean)
data class TeacherData1(val name:String,val age:Int,val isMale:Boolean,val salary:Int)