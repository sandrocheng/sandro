package base

/**
 * kotlin语言声明变量与内置数据
 */

// 5  =============================== 编译时常量
const val bData : Byte = 1
const val data2 = 100

fun main(args: Array<String>) {

    println("Program arguments: ${args.joinToString()}")
    //   1 =============================声明变量
    /**
     *  代表可读可改  变量名   变量类型    值
     *  var         name : String = "Hello World! "
     */
    var name:String = "Hello World! "
    print(name)
    name = "kotlin"
    println (name + " !")

    //    2 ============================内置数据类型
    /**
     * String      字符串
     * Char        单字符
     * Boolean     true/false
     * Int         整形
     * Double      双精度小数
     * Float       单精度小数
     * List        集合
     * Set         无重复的元素集合
     * Map         键值对集合
     */
    val char : Char = 'a';
    println("char is $char");

    //    3 ============================kotlin语言的只读变量

    /**
     * 代表只读变量   变量名  变量类型     值
     * val          data : Int     =  20
     */
    val data : Int = 20
    println("data is $data")

    //   4 ============================ kotlin语言的类型推断
    /**
     * val price:Double  = 10.0
     * val male:Boolean = true
     * 编译器会提示 ：Explicitly given type is redundant here，类型不需要定义
     * 因为kotlin会根据值推导出变量类型，此时类型部分就可以不需要写了
     */
    val price  = 10.0
    val male = true;
    println("price : $price , male is $male");

    println("bData : $bData");

    //5 =========================== kotlin语言的range表达式

    var number = 1
    if(number in 1..100){
        println("number: $number")
    }
    number = 100
    if(number in 1..100){
        println("number: $number")
    }
    number = 101
    if(number !in 1..100){
        println("$number is not in 1~100");
    }

    //6  ======================= kotlin语言的when表达式
    var day  = 3
    val dayStr = when(day){
        6 ->"星期六"
        7 ->"星期日"
        else->{
            println("day is $day")
            "工作日"
        }
    }
    println("dayStr is $dayStr");

    day  = 1
    val dayStr2 = when(day){
        6 ->"星期六"
        7 ->"星期日"
        else->{
            println("day is $day，工作日");
            //此时没有返回值，kt使用Unit对象代替了这个表达式的返回值结果，
            //Unit对象重写了toString方法，因此println的时候会输出Unit对象的toString结果“kotlin.Unit”
        }
    }
    println("dayStr2 is $dayStr2");

    //7 ============================kotilin字符串模板
    val garden = "黄石公园"
    val time = 6
    println("今天天气很晴朗，去$garden 玩，玩了${time}个小时")//如果用空格隔开可以直接接如其他字符串，如果没有空格隔开就需要使用{}把变量包裹起来

    val isLogin = true
    //kt的if是表达式可以更灵活的使用，java的if是语句，有局限性
    println("server response result : ${if(isLogin) "恭喜你登陆成功" else "登陆失败"}");
}