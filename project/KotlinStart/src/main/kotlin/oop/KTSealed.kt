package oop

/**
 * 密封类
 * 成员变量 必须要继承自己
 */
sealed class ExamResult2{
    //使用object，保证单例，主要用于分类
    object A :ExamResult2()
    object B :ExamResult2()
    object C :ExamResult2()
    object D :ExamResult2()

    //使用class，说明这个成员变量是多例的，并且可以传递参数
    class APlus(val name:String): ExamResult2() //A+
}

class Teacher2(private val examResult: ExamResult2){
    fun show():String{
        //这种使用枚举对象的方式叫做 代数数据类型
        //代数数据类型作为when的参数时，只要列出所有枚举值，就不需要else了
        return when(this.examResult){
            is ExamResult2.A -> "优秀"
            is ExamResult2.B -> "良好"
            is ExamResult2.C -> "及格"
            is ExamResult2.D -> "不及格"
            is ExamResult2.APlus -> "第一名，该学生的姓名是：${this.examResult.name}"
        }
    }
}

fun main(){
    //密封类ExamResult2 中的 A B C D 由于是单例对象，所以可以直接当成变量使用
    println(Teacher2(ExamResult2.A).show())
    println(Teacher2(ExamResult2.B).show())
    println(Teacher2(ExamResult2.C).show())
    //密封类ExamResult2 中的 APlus 由于是class类，所以需要实例化，
    println(Teacher2(ExamResult2.APlus("lily")).show())

    //false 因为APlus是class 所以每次实例化都是独立的引用，所以两个实例对象不是一个引用
    println(ExamResult2.APlus("lily") === ExamResult2.APlus("lily"))

    //true A 是object单例对象，所以是同一个引用
    println(ExamResult2.A === ExamResult2.A)
}