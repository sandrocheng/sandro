package collection

/**
 * List
 * List的创建与元素获取
 * 可变list集合
 * mutator函数
 * list遍历
 * 使用解构语法过滤元素
 */
fun main(args:Array<String>){
    ListCreateAndDataGet()
    changeableList()
    ktmutator()
    listForEach()
    listFilter()
}

/**
 * 使用解构语法过滤元素
 */
private fun listFilter(){
    println("listFilter==================")

    //基本用法
    val list = listOf(1,2,3,4,5,6,7)
    //v1 v2 v3 是三个不可变变量，分别赋值为list的前三个值
    //如果list没有三个值会抛出异常java.lang.ArrayIndexOutOfBoundsException
    //最多只能赋值给5个变量，第六个时，编译会失败：Destructuring declaration initializer of type List<Int> must have a 'component6()' function
    val(v1,v2,v3) = list
    println("v1:$v1 , v2:$v2 , v3:$v3 ")

    //过滤用法
    //"_"不是变量名，是用来过滤解构赋值的，不接受赋值
    val(_,n2,n3) = list//这里只获取第二个和第三个值
    println("n2:$n2,n3:$n3");
}

/**
 * list遍历
 */
fun listForEach(){
    println("listForEach==================")

    val list = listOf(10,20,30,40,50)
    //方式一 输出list详情，并不是遍历集合
    println(list)

    //方式二
    for(data in list){
        println("data : $data")
    }

    //方式二 元素值遍历
    list.forEach {
        //it = 每一个元素
        println("foreach it : $it")
    }

    //方式三 元素索引遍历
    list.forEachIndexed { index, i ->
        //forEachIndexed 有两个回执，代表索引和值
        println("index : $index , data : $i")
    }
}

/**
 * mutator函数
 * mutator函数重载了 += -= 操作符，用来增删元素
 * removeIf
 */
fun ktmutator(){
    println("ktmutator==================")

    val ml = mutableListOf("sandro","joy","wang")
    ml += "jess"
    ml -= "sandro"
    println(ml)

    ml.removeIf { true } //逐个元素调用该匿名函数，返回true则删除当前元素
    println("ml : $ml")
    ml.add("a")
    ml.add("b")
    ml.add("c")
    ml.removeIf {
        it == "a"
    }
    println("ml : $ml")
}

/**
 * 可变list集合
 * 可变list集合可以增删元素,使用listOf创建的List不能增删元素
 */
private fun changeableList(){
    println("changeableList==================")

    //可变list初始化,完整写法
    val list:MutableList<String> = mutableListOf<String>("sandro","jhye","joy","jihai")
    println(list)
    //可变list初始化,简化写法
    val l = mutableListOf("sandro1","jhye1","joy1","jihai1")
    l.add("jess")
    l.add(0,"space")
    l.removeAt(2)
    l.remove("sandro1")
    println(l)

    //不可变化集合 to 可变集合
    val array = listOf(1,2,3,4)
    val array2 = array.toMutableList()
    array2.add(100)
    println(array2)

    //可变集合 to 不可变集合
    val array3 = array2.toList()
    println(array3)

}

/**
 * List的创建与元素获取
 *
 */
private fun ListCreateAndDataGet(){
    println("ListCreateAndDataGet==============")
    //List初始化
    val names:List<String> = listOf<String>("sandro","joy","jess","ray")
    //List初始化 简化写法 ,如果元素是多种类型，返回的list类型是 Any,相当于val namesForShort<Any> = ...
    val namesForShort = listOf("sandro",123,"jess","ray")

    //取值
    println(namesForShort)//println可以直接输出所有元素
    println("names[0] : ${names[0]}")//kt对List进行了运算符重载，可以像java数组取值一样

    try {
        println("${names[100]}")//使用运算符索引获取元素，有异常的风险
    }catch (e:Exception){
        println("names[100] error , $e")//java.lang.ArrayIndexOutOfBoundsException
    }

    //推荐有保护措施的取值getOrElse、getOrNull ，能够避免空指针异常 下标越界异常
    val names100 = names.getOrElse(100){
        //取不到值的情况下，返回一个值
        "-"
    }
    println("names100 : $names100")

    //取不到值的情况下，返回null对象,
    val names101 = names.getOrNull(101)
    println("names101:$names101")
    //一般配合可空操作符使用
    println("names102: ${names.getOrNull(101)?:"-"}")
}