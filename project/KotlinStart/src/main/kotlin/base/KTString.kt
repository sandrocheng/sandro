package base

/**
 * kt的String 常规操作
 * substring
 * split操作
 * replace
 * == 与 ===
 * 字符串遍历
 * 数字安全转换函数
 */

const val INFO = "sandro work in kotlin"
const val DATA = "java,c++,python,kotlin,nodjs,c,javascript"
fun main(args:Array<String>){
    //substring=================================
    val indexof = INFO.indexOf('k') + 1
    println("indexof : $indexof , substring : ${INFO.substring(0,indexof)}")
    println("indexof : $indexof , substring : ${INFO.substring(0 until indexof)}")

    //split============================================
    val list:List<String> = DATA.split(",")
    println("list size ${list.size} , values : $list");//kt可以直接输出list内容
    //kt的解构写法，最多只能赋值5个元素，从第6个开始要实现对应的接口
    val (v1,v2,v3,v4,v5) = list
    println("v1:$v1,v2:$v2,v3:$v3,v4:$v4,v5:$v5");

    //replace================================================
    val pwd = "qwer1234!@#一二三"
    println("pwd : $pwd")
    /**
     * 使用replace的正则表达式提取“qw34三”这5个字符，q w,替换成-，三替换单成 叁，其他替换成=，没有提取的字符不会被替换
     */
    val result = pwd.replace(Regex("[qw34三]")){
        when(it.value){
            "q" -> "-"
            "w" -> "-"
            "三" -> "叁"
            else -> "="
        }
    }
    println("result $result");

    //== 与 ===   ===============================
    // == 值的比较，相当与java中的equasl
    var name = "123"
    var name2 = "123"
    println("name == name2 is ${name == name2}");//true,因为值相等
    // === 是引用的比较，相当于 java中两个对象使用 ==
    println("name === name2 is ${name === name2}");//true ,因为字符串放在字符串常量池里，此时两个变量都是这个字符串常量池中的字符串的引用

    var name3 = "";
    name3 += "123"
    println("name === name3 is ${name === name3}");//false


    //字符串遍历=========================
    var str = "abcde"
    str.forEach {
        println("$it")
    }

    //数字安全转换函数===============
    val number : Int = "666".toInt()
    println(number)

    try {
        val number2:Int = "666.6".toInt()//此时会抛出NumberFormatException异常
    } catch (e: Exception) {
        println(e.message);
    }

    //使用toIntOrNull,如果转换失败，会返回null，所以定义的时候需要定义为可空类型
    //字符串转整形尽量用这个函数
    val number3:Int? = "666.6".toIntOrNull();
    println(number3?:"number3 is null");
}


