package generic

import generic.classes.GenericClass1
import generic.classes.GenericClass2
import generic.classes.StudentData1
import generic.classes.TeacherData1


/**
 * 定义泛型类
 * 泛型函数
 * 使用泛型实现一个类型转换功能
 * 泛型类型的约束
 */
fun main(){
    defineGeneric()
    genericFun()
    genericRevert()
    genericConstraint()
}

open class GBase(private val name:String){
    fun work(){
        println("cur name : $name")
    }
}
open class GPerson(name:String) : GBase(name=name)
class GStu(name:String):GPerson(name = name )
class GTeacher(name:String):GPerson(name = name)

//限定泛型必须是GBase的子类
private fun <T : GBase> printName(obj:T) {
    obj.work()
}
/**
 * 泛型类型的约束
 */
private fun genericConstraint(){
    println("genericConstraint====================")
    val base = GBase("base")
    val person = GPerson("person")
    val stu = GStu("student")
    val tea = GTeacher("teacher")
    printName(base)
    printName(person)
    printName(stu)
    printName(tea)

}

/**
 * revert:是否需要类型转换
 * input:输入的值
 */
private class Data<T>(val needRevert:Boolean = false,val input:T){

    /**
     * 参数是一个lmbda表达式，该表达式的参数是泛型T，返回值是一个泛型K
     *
     */
    inline fun <K>revertAction(action:(T) ->K) : K? = action(input).takeIf { needRevert }

}

data class Student(val name:String,val age:Int)
data class Teacher(private val name:String,private val age:Int,private val salary:Int)

/**
 * 使用泛型实现一个类型转换功能
 */
private fun genericRevert(){
    println("genericRevert====================")
    val d = Data<Int>(true,123)
    val r:String? = d.revertAction {
        "[$it]"
    }
    println("revert -> $r")
    val strD = Data<String>(true,"333")
    var strR:Int? = strD.revertAction {
        it.toIntOrNull()?:0+ 111
    }
    println("revert -> $strR")

    val stu = Student("tony",24)
    val tea:Teacher? = Data<Student>(true,stu).revertAction {
        Teacher(it.name,it.age,1000)
    }
    println(tea)
}

/**
 * 泛型函数
 */
private fun genericFun(){
    println("genericFun===================")
    println(GenericClass2(true, "string").getObj())
    println(GenericClass2(false, "string").getObj()?:"返回的是null")

    GenericClass2(true, "string").getObj()?.run {
        println("getObj 返回 $this")
    }?: println("getObj 返回 null了")

    GenericClass2(false, "string").getObj()?.run {
        println(this)
    }?: println("getObj 返回 null了")

    GenericClass2(true, "string2").getObj()?.apply {
        println("getObj 有值 ：$this")
    }?:println("getObj 没有值")

    GenericClass2(false, "string2").getObj()?.apply {
        println("getObj 有值 ：$this")
    }?:println("getObj 没有值")

    show(GenericClass2(true, 1000).getObj())
}

/**
 * 泛型是包括null的，所以参数没有指定可空，外部传参依然可以传null
 */
private fun<T> show(obj:T){
    obj?.also {
        println("show $it")
    }?:println("show param is null")
}

/**
 * 定义泛型类
 */
private fun defineGeneric(){
    println("defineGeneric===================")
    val st1 = StudentData1("lily",18,false)
    val tea2 = TeacherData1("Tony",30,true,5000)
    GenericClass1(st1).show()
    GenericClass1(tea2).show()
    GenericClass1(100).show()
    GenericClass1("data").show()
}