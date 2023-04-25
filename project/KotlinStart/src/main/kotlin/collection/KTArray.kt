package collection

/**
 * 数组类型
 * kt中的各种数组类型，虽然是引用类型，背后可以编译成java基本数据类型
 * 类型          初始化方法
 * IntArray     intArrayOf
 * DoubleArray  doubleArrayOf
 * LongArray    longArrayOf
 * ShortArray   shortArrayOf
 * ByteArray    byteArrayOf
 * FloatArray   floatArrayOf
 * BooleanArray booleanArrayOf
 * Array<对象类型>        arrayOf   对象数组
 */
fun main(args:Array<String>){
    //常规方法数组越界问题
    val intArray:IntArray = intArrayOf(1,2,3,4)
    try {
        println(intArray[100])//越界异常：java.lang.ArrayIndexOutOfBoundsException
    }catch (e:Exception){
        println("exception : $e");
    }

    //使用elementAtOrElse 或者 elementAtOrNull避免异常
    println("intArray[100] ${intArray.elementAtOrElse(100){-1}}")
    println("intArray[101] ${intArray.elementAtOrNull(100)}")
    println("intArray[101] ${intArray.elementAtOrNull(100) ?:"没有100个数据"}")

    //集合转数组
    val listToArray:CharArray = listOf('a','b','c').toCharArray()
    println("listToArray[1] : ${listToArray[1]}")

    val stringArray:Array<String> = arrayOf("A","B","c")
    println("stringArray[1] : ${stringArray[1]}");

}