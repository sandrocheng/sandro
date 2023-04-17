/**
 * kt 匿名函数
 */
package base

fun main(args : Array<String>){
    println("args length : ${args.size}");

    //匿名函数============================
    var len = "Sandro".count();
    println("sandro len is $len")

    //count后面可以使用匿名函数增加逻辑，it 是 每个字符，判断每个字符是否是“r”，如果是"r"才计数
    val len2 = "Sandro".count(){
        it == 'r'
    }
    println("r in Sandro is $len2");

    //函数类型与隐式返回===================
    //1、函数输入输出的声明 ，定一个了一个返回值是String的methodAciton函数
    val methodAciton : ()-> String

    //2、函数实现
    methodAciton = {
        val prefix = "kt_"
        "methodAciton ${prefix}sandro"//最后一行的值就是返回值，匿名函数不能用return返回
    }

    //3、调用函数
    println(methodAciton())

    //带参数的隐式函数==============
    //1、定义函数的声明并直接实现,参数部分只定义类型，不定义变量名
    val methodAction2:(Int ,String)->String = {
        age,name-> //2、按参数类型顺序指定对应的变量名
        "methodAction2 age : $age , name : $name"
    }
    println(methodAction2(12,"cici"));

    //匿名函数中it关键字特点=================================
    //匿名函数参数只有一个参数时，it就是代表这个参数的参数名称，类型会根据这个参数的类型变化
    val methodAction3 : (Int) ->String = {
        var result = it +1
        "methodAction3 param is $it ,result is $result"
    }
    println(methodAction3(3))

    //匿名函数的类型推断=======================
    //匿名函数中的类型一般不需要指定，kt可以自动推断
    //使用自动推断，不需要用“:” ,直接 方法名={} 就可以了
    val methodAction4 = {
        v1:Double,v2:Int -> //方法参数定义
        val result = v1+v2//这里会自动推导返回类型是double，不需要显示声明名返回类型了
        result
    }
    println("methodAction4 ${methodAction4(3.3,5)}");

    //这个匿名函数返回值由于无法确定是字符串还是Int，所以会统一返回一个Any类型的实例
    val methodAction5 = {
        number : Int ->
        when(number){
            6->"休息日"
            7->"休息日"
            in 1 .. 5 -> "工作日"
            else -> -1
        }
    }
    println("methodAction5 ${methodAction5(5)}");

    //使用函数A作为函数b的参数===========================
    //类似于c++的函数指针，或者java中接口回调
    val callBack = {
        result : String,code : Int ->
        println("funWithMParam callBack1 result : $result , code : $code");
    }
    funWithMParam("call funWithMParam 1 ",callBack);

    //简化写法2
    //直接使用匿名函数作为参数 ，此时匿名函数参数是放在{}中的
    funWithMParam("call funWithMParam 2 ", callBack = { result: String, code: Int ->
        println("funWithMParam callBack2 result : $result , code : $code");
    })

    //简化写法3
    //直接使用匿名函数作为参数 ，此时匿名函数参数是放在函数调用的后面,并包裹在{}中
    funWithMParam("call funWithMParam 3 "){
            result : String ,code : Int ->
        println("funWithMParam callBack3 result : $result , code : $code");
    }

    //内联函数================================================
    //当函数参数中有lambda语句，可以使用内联函数对其优化，减少调用栈
    //反编译class文件，可以看到如果使用lambda作为函数参数，编译成java字节码时，在调用端会调用多个对象，造成性能损耗。
    funWithMParam2("call funWithMParam2  "){
            result : String ,code : Int ->
        println("funWithMParam2 callBack result : $result , code : $code");
    }

    //函数引用========================================================
    //使用 “::” 将函数转换成一个函数引用，作为lambda函数参数
    funWithMParam2("call funWithMParam2",::funWithMParam2Back);

    //函数类型作为返回类型========================
    val obj = showAction("bob" , 18);
    println(obj(" is a student "));

    //匿名函数和具名函数====================================
    //使用匿名函数作为callback参数
    showStudentInfo("kk",28,true,callback={
        //因为callback参数只有一个，所以在实现这个callback的时候不需要显式的定义一个参数，直接用$it引用这个值
        println("使用匿名函数 ：$it ")
    })
    //使用具名函数showStudentInfoCallBack作为callback参数
    //注意使用的时候需要用 “::”把函数声明为一个函数对象才能作为参数使用
    showStudentInfo("lily",16,false,::showStudentInfoCallBack);
}

private fun showStudentInfoCallBack(result:String){
    println("使用showStudentInfoCallBack具名函数：$result");
}

/**
 * 定一个参数是函数的内联函数
 * callback：回调
 */
private inline fun showStudentInfo(name:String,age:Int,isMale:Boolean,callback:(String)->Unit){
    callback("name:$name,age:$age,isMale:$isMale");
}

/**
 * 返回一个函数类型的值
 * showAction的参数是 String 和 Int
 * 返回一个匿名函数
 * 匿名函数的参数是String,返回值是String
 */
private fun showAction(name:String,age:Int):(String) -> String {
    return {
        world : String ->
        "name : $name , age: $age,world:$world"
    }
}

private fun funWithMParam2Back(result:String,code :Int){
    println("funWithMParam2Back result : $result , code : $code")
}

/**
 * 参数callBack是一个函数
 * callBack函数参数是String和一个int,返回值是Unit
 */
private fun funWithMParam(msg:String,callBack:(String,Int) -> Unit){
    println(msg);
    callBack("success",0);
}

/**
 * 使用内联函数可以提高效率
 */
private inline fun funWithMParam2(msg:String,callBack:(String,Int) -> Unit){
    println(msg);
    callBack("funWithMParam2",1);
}

