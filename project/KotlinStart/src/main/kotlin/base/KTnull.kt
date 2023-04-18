package base

/**
 * kt的可空性特点
 * 安全调用操作符
 * 使用带let的安全调用
 * 非空断言操作符特点
 * 使用if判断null值的情况
 * 空合并操作符
 */
fun main(args: Array<String>) {
    //kt的可空性特点=================================
    //第一种情况：默认是不可控类型：不能随意给null
    var name : String = "sandro"
    //name = null , 如果手动赋null，编译其会提示：Null can not be a value of a non-null type String

    //第二种情况：使用修饰符 “？” 声明变量时指定为可空类型
    var name2:String ?
    name2 = null//此时就可以赋值为null了

    println("name : $name ,name2 : $name2");

    //安全调用操作符================================
    var name3:String ? = "sandro"
    //name3.capitalize()因为name3是可空类型，想要使用name3,必须给出补救措施
    name3?.capitalize()//通过使用修饰符"?"，如果真的是null ?后面这一段代码就不执行，从而避免控制镇异常
    println(name3);

    //使用带let的安全调用==============
    var name4:String ?="name4"//定义一个可空变量
    name4?.let {
        //在let的代码块中 使用 it 代替 name4本身
        //这种写法，相当于对nam4进行了判空，如果name4为空，代码块不执行
        println(it);
    }

    name4=""
    var name5 = name4?.let{
        if(it.isBlank()){//如果name没有内容
            "default" // 返回一个新值给外部
        }else{
            it
        }
    }
    println("name5 : $name5");

    //非空断言操作符特点=============================
    //!!表示不管name是否为空都执行，这种情况下和java一样有可能空指针异常
    //如果能保证name是有值的才建议使用断言，否则有空指针的风险
    var name6:String?=""
    var n = name6!!.capitalize()
    println(n)

    //使用if判断null值的情况========================
    if(name6 != null){
        println(name6.capitalize())
    }

    //空合并操作符======================
    //使用?:判断变量是否为空，如果为空执行“:”后面的语句
    var info:String? = null
    println(info?:"sundro")

    //let + 空合并操作符
    println(info?.let { "[$it]" } ?: "[sandro]")
}