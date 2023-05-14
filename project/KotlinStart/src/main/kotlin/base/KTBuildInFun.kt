package base

/**
 * 总结
 * 1）apply和also类似，返回值都是调用者本身，和匿名函数最后一行的值没有关系
 *    不同点：引用不同，apply使用this作为引用，also使用it作为引用
 *       xxx.apply{this == xxx本身}
 *       xxx.also{it == xxx本身}
 *     应用场景：链式调用，多步初始化
 *        比如：File("xxx").apply(setxxx()).apply(setxxx())... （因为使用this,this可以省略）
 *             File("xxx").also(it.setxxx()).also(it.setxxx())...(it不能省略)
 *
 * 2） let 和 run 类似，返回值都是匿名函数最后一行，由用户决定
 *    不同点：引用不同，run使用this作为引用，let使用it作为引用
 *       xxx.run{this == xxx本身}  当调用this的函数时 this.xxx ，this可以省略
 *       xxx.let{it == xxx本身}
 *    with和run基本一样，只是需要传参 xxx.run(){} == with(xxx){}
 *    应用场景：对某一个变量进行相关操作时候，可以用 let with run包裹起来，提升代码块阅读效率
 * kt内置函数
 * apply内置函数
 * let内置函数
 * run内置函数
 * with内置函数
 * also内置函数
 * takeIf内置函数
 * takeUnless内置函数
 */
fun main(args:Array<String>){
    applyBuildIn()
    letBuildIn()
    runBuildIn()
    withBuildIn()
    alsoBuildIn()
    takeIfBuildIn()
    takeUnlessBuildIn()
}

/**
 * takeUnless内置函数
 * 和takeIf相反
 *
 */
private fun takeUnlessBuildIn(){
    println("takeUnlessBuildIn===============================")

    val str = "success"
    var result = str.takeUnless{
        takeIfM1("lucy",18)
    }
    println("result : $result")//返回null

    //takeUnless一般配合空合并操作符，进行判空处理
    val s = ""
    val r = s.takeUnless { it.isNullOrBlank() } ?: "s 为空"
    println(r)
}
/**
 * takeIf内置函数
 * 如果takeif匿名函数中返回true，则调用对象本身，否者返回null
 * 一般的用法是 takeIf + 空合并操作符
 */
private fun takeIfBuildIn(){
    println("takeIfBuildIn===============================")
    val str = "success"
    var result = str.takeIf {
        takeIfM1("lucy",18)
    }
    println("result : $result")

    result = str.takeIf { takeIfM1("lucy",0) }
    println("result : $result")

    println("验证结果 is ${str.takeIf { takeIfM1("lucy",0) }?:"验证失败"}")
    println("验证结果 is ${str.takeIf { takeIfM1("lucy",18) }?:"验证失败"}")
}

/**
 * 模拟参数检查函数
 */
private fun takeIfM1(name:String , age:Int):Boolean{
    //kt if是表达式，代表一个值，所以可以直接return if表达式的值
    return (age in 1..120) && name!=null
}

/**
 * also内置函数
 * 1.also 返回值是调用对象本身,和apply是一样的
 * 2.一般用于链式调用
 */
private fun alsoBuildIn(){
    println("alsoBuildIn===============================")
    val str = "Hello World"
    str.also {
        println("str : $it")
    }.also {
        println("str len is ${it.length}");
    }

    var r2:Int = 123.also{
        println("123 + 234 = ${it + 234}");
    }
    println("r2 is $r2");

}

/**
 * with内置函数，和run函数类似
 * 1. 匿名函数中持有的当前对象是this,不是it
 * 2. with函数返回类型，是根据匿名函数最后一行的变化而变化
 * 3. 使用参数传值，例如：with(xxx){...}
 */
private fun withBuildIn(){
    println("withBuildIn===============================")
    var str = "Hello World"

    //具名操作
    with(str, ::println)//println参数是一个String,此时传参就是with中的this,也就是str

    //匿名操作
    with(with(str){
        length //匿名函数里，this代表str对象，并且可以省略，此时返回的是str.length 整形,并作为外层with中的参数
    }){
        println("str[$str] len is $this" );
    }

}

/**
 * run内置函数
 * 1. run返回类型根据最后一行变化而变化
 * 2. 匿名函数中持有的当前对象是this,不是it
 * 3. 多个run函数链式执行，可以使用匿名函数，也可以使用匿名函数
 * 4. 使用具名函数的时候，run和let可以互相替换
 */
private fun runBuildIn(){
    println("runBuildIn===============================")
    val str = "hello world"
    val r1 : Boolean = str.run{
        println("当前匿名函数引用对象的值是: $this");
        true
    }
    println("r1 : $r1");

    //具名函数配合run函数
    //第一个run函数返回int，并传递给第二个run函数，第二个run函数返回boolen值给到more5
    str
        .run(::runM1)
        .run{
            this > 5
        }
        .run(::println)//第三个run执行println具名函数，参数是第二个run返回的boolean值
}

private fun runM1(str:String):Int{
    return str.length
}

/**
 * let内置函数
 */
private fun letBuildIn(){
    println("letBuildIn===============================")
    //普通方式，对集合第一个元素相加
    val list:List<Int> = listOf(1,2,3,4,5)
    val v1 = list.first()
    val r1 = v1 + v1
    println("r1 : $r1");

    //let方式 对集合第一个元素相加
    /**
     * let 匿名函数特点
     * 1. let函数返回类型，是根据匿名函数最后一行的变化而变化
     * 2. 匿名函数里面持有的是变量it,代表当前对象
     */
    var r2 = listOf(5,4,3,2,1).let{
        //let匿名函数中 it代表当前对象 ： listOf(..)返回的对象
        it.first() + it.first() //let匿名函数最后一行的值会作为返回值
    }
    println("r2 : $r2");


    //普通方式判断null
    println("${m1(null)} , ${m2("hello")}")
    //let方式判断null
    println("${m3(null)} , ${m3("hello")}")
}

/**
 *let方式判断null
 */
private fun m3(value : String?): String {
  return value?.let{
      //?.let代表只有不为空的情况下才会执行let内置函数
      "value is $it"
  } ?:"-"//?： 当value为null的时候不执行let内置函数，此时执行?:后面的语句
}

/**
 * 普通方式 对值判空，并返回
 */
private fun m1(value:String?): String {
    return value ?: "-"
}

/**
 * 普通方式 对值判空，并返回 简化版本
 */
private fun m2(value:String?) = value?:"-"

/**
 * apply内置函数
 */
private fun applyBuildIn(){
    println("applyBuildIn===================");
    val info = "Hello World"
    //普通方式
    println("info 字符串的长度是:${info.length} , 最后一个字符是：${info[info.length-1]} , 全部转成大写：${info.uppercase()}")

    //apply方式,特点：始终返回info本身
    val infoNew = info.apply {
        //匿名函数，大部分情况下都会持有 it ,但是apply没有it,使用this代替，this == info本身
        println("apply 匿名函数中的this : $this")
        println("info 字符串的长度是:${this.length} , 最后一个字符是：${this[this.length-1]} , 全部转成大写：${this.uppercase()}")
        //在apply匿名函数块里，this作为对象引用可以省略
        println("info 字符串的长度是:${length} , 最后一个字符是：${this[length-1]} , 全部转成大写：${uppercase()}")
    }
    println("apply返回值 ：$infoNew")

    //真正使用apply函数的写法是用来链式调用，比如新建对象，初始化操作之类，类似build模式初始化一个对象
    info.apply {
        println("info 字符串的长度是:${length} ")
    }.apply {
        println("最后一个字符是：${this[length-1]}")
    }.apply {
        println("全部转成大写：${uppercase()}")
    }
}