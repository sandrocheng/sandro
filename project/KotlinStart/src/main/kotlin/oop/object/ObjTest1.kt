package oop.`object`

/**
 * 对象的声明
 * 单例类，只能有一个默认的空构造，不能传参数,如果设置参数会提示：Constructors are not allowed for objects
 *
 */
object ObjTest1 {
    //object的init代码块在生成java代码时，是放在一个static代码块里
    //这里和class不一样，class中init代码块是放在 java类的构造里面
    init {
        println("ObjTest1 init")
    }

    fun show() = println("ObjTest1.show()")
}