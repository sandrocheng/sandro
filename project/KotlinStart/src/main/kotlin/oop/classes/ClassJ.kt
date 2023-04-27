package oop.classes

/**
 * 常见初始化陷阱
 */
class ClassJ(_name:String) {
    private val name = _name
    //常见错误三：因为因为getNameStr在内部使用了 name成员变量
    //所以getNameStr()必须写在name赋值后面，否则会空指针，这里不如java那么灵活，需要考虑到生成的java顺序
    val nameLen:Int = getNameStr()

    fun getNameStr(): Int {
        return name.length
    }

    var number = 10

    val info:String
    init {
        //常见错误一：init中使用的变量，需要放到init块之前定义，否则编译会失败：Variable cannot be initialized before declaration
        number += 10

        //常见问题二：java.lang.NullPointerException，要注意构造执行顺序，如果getInfoWord写在info赋值之前会空指针
        info="hello world"
        getInfoWord()
    }

    fun getInfoWord() {
        println("info[0] : ${info[0]}");
    }
}