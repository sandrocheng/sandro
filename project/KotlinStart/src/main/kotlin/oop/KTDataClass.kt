package oop



/**
 * 数据类
 * 使用data修饰符 修饰的类
 * 一般用于类似 java bean形式的类，比如pojo
 * 普通类一般只会生成privte的成员变量，以及这些成员变量的set get方法
 * 数据类还会增加更多的方法，比如解构函数，克隆函数，toString（把所有成员变量都组成一个字符串）,hashCode,equals函数
 *
 * 默认生成的toString hashCode,equals,copy等，只负责主构造中声明的成员变量
 * 常用于数据封装，类似与java的 pojo
 * 数据类至少必须有一个参数的主构造函数
 * 数据类必须有 var val的参数，不能是临时变量
 * 数据类不能使用open abstract sealed，inner等修饰 只能用为一 data修饰class
 *
 */
data class DataBean(val name:String ,val age:Int){

    //info不在主构造中声明，toString copy,hashCode等都不会使用这个变量
    var info:String = ""

    init {
        println("主构造被调用")
    }

    constructor(_name:String):this(_name,20){
        println("次构造被调用")
        info = "次构造生成的内容"
    }

    override fun toString(): String {
        return  "name:$name, age:$age, info:$info"
    }
}

/**
 * 普通类
 */
class DataBean2(val name:String ,val age:Int){

}

/**
 * 数据类
 * copy函数
 */
fun main(args:Array<String>){
    val bean = DataBean("sandro",43)
    val bean2 = DataBean("sandro",43)
    println(bean)//DataBean(name=sandro, age=43)  数据类自动生成的成员字符串

    //普通类实例，如果没有复写equals,只会使Any的 equals，hashCode不一样，所以不等
    println("DataBean2(\"sandro\",43) == DataBean2(\"sandro\",43) :  ${DataBean2("sandro",43) == DataBean2("sandro",43)}")

    //数据类中会自动生成equals函数，并且逐一比对成员变量的值，所以相等
    //也就是说数据类的实例使用==时，判断的时所有数据的值是否相等
    println("bean == bean2 : ${bean == bean2}")

    //info不在主构造中声明，所以copy的时候没有赋值，
    //当数据类使用copy的时候，必须要考虑到次构造生成对象的情况是否会有问题
    val bean3 = DataBean("tony")
    println("bean3[${bean3}]") //bean3[name:tony, age:20, info:次构造生成的内容]
    val bean4 = bean3.copy()
    println("bean4[${bean4}]")//bean4[name:tony, age:20, info:]
}