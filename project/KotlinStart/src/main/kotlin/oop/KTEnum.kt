package oop

import sun.security.util.Length

/**
 * 在kt中枚举也是一个类
 */
enum class Week(){
    星期一,
    星期二,
    星期三,
    星期四,
    星期五,
    星期六,
    星期日
}

data class BodyInfo(var info:String,var length: Int)

/**
 * 因为是类，所以枚举也可以有构造
 * 并且可以把构造中的参数赋值给每一个枚举值中
 *
 * 每一个枚举值参数必须一致，也要要跟构造中的声明一致
 * 构造中定义类型，值中要实例化
 *
 */
enum class EnumBody(private val bi:BodyInfo){
    LEFT_HAND(BodyInfo("左手",80)),
    RIGHT_HAND(BodyInfo("右手",81)),

    LEFT_FOOT(BodyInfo("左腿",95)),
    RIGHT_FOOT(BodyInfo("右腿",94)); //注意这里，如果后面要定义函数，最后一个枚举值后面需要用“;”

    /**
     * 枚举中定义的函数，使用时需要通过具体的枚举值才能调用
     * 在函数中可以直接使用构造里定义的成员变量
     */
    fun getBodyInfo(): String {
        return "${bi.info} ，长度： ${bi.length}"
    }

    fun updateData( _bi:BodyInfo){
        this.bi.info = _bi.info
        this.bi.length = _bi.length
    }
}

enum class ExamResult{
    A,B,C,D;

}

class Teacher(private val examResult: ExamResult){
    fun show():String{
        //这种使用枚举对象的方式叫做 代数数据类型
        //代数数据类型作为when的参数时，只要列出所有枚举值，就不需要else了
        return when(this.examResult){
            ExamResult.A -> "优秀"
            ExamResult.B -> "良好"
            ExamResult.C -> "及格"
            ExamResult.D -> "不及格"
        }
    }

    fun msg() = when(this.examResult){
        ExamResult.A -> "学习优秀，掌握所有知识"
        ExamResult.B -> "能够顺利完成学习任务"
        ExamResult.C -> "基本掌握"
        ExamResult.D -> "无法顺利掌握基本知识"
    }
}

fun main(args:Array<String>){
    println(Week.星期一)

    //枚举的值等价于枚举本身
    println("Week.星期一 is Week : ${Week.星期一 is Week}")//true

    println("EnumBody.LEFT_FOOT.getBodyInfo() : ${EnumBody.LEFT_FOOT.getBodyInfo()}")
    EnumBody.LEFT_FOOT.updateData(BodyInfo("left foot",96))
    println("EnumBody.LEFT_FOOT.getBodyInfo() : ${EnumBody.LEFT_FOOT.getBodyInfo()}")

    println("Teacher(ExamResult.A).show() :  ${Teacher(ExamResult.A).show()}")
    println("Teacher(ExamResult.B).msg() :  ${Teacher(ExamResult.B).msg()}")
}