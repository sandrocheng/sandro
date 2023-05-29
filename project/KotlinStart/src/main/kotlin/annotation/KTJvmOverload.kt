package annotation

/**
 * 该方法在java中调用时，无法使用默认参数
 */
fun show(name:String ,age:Int = 43,isMale:Boolean=true){
    println("name:$name,age:$age,isMale:$isMale")
}

/**
 * 编译器环节会专门重载一个函数给java用，这样java就可以使用默认参数了
 */
@JvmOverloads
fun show2(name:String ,age:Int = 43,isMale:Boolean=true){
    println("name:$name,age:$age,isMale:$isMale")
}

fun main(args:Array<String>){
    show("sanrdo")
}