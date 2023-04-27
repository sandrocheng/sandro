package oop.classes

/**
 * 初始化块
 */
class ClassF(_name:String?,_age:Int,_info:String?) {
    /**
     * 初始化块，init代码块
     * 主构造调用的时候执行
     */
    init {
        //代码块里可以使用主构造里的临时变量
        //可以在这里做统一的初始化工作，或者变量的校验
        println("name:${_name},age:${_age},info:$_info")
    }

    /**
     * 没有参数的次构造，次构造调用的时候会调用主构造，从而执行init代码块
     */
    constructor():this(null,0,null){
        println("次构造调用");
    }
}