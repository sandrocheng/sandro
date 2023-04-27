package oop.classes

/**
 * 次要构造函数，完成类似java的构造函数重载
 * 如果次要函数和主构造函数都有默认参数，实例化的时候，由于编译器无法确认用的是哪个构造函数，会优先调用主构造函数
 */
class ClassE(var name:String ) {//有参数的主构造
    var age:Int = 0
        private set
    private var isMale = false
    private var info:String? = null

    val infoMsg:String
        get() {
            return info?.let {
                it
            }?:"未赋值"
        }


    /**
     * 次构造
     * 如果主构造有参数，次构造必须要通过:this(xxx)调用父构造,否则编译失败
     * 目的是为了构造统一管理，为了更好的初始化设计
     */
    constructor(_name:String,_age:Int):this(_name){
        this.age = _age
    }

    /**
     * 这个次构造，通过this(xxx,xxx) 调用的是另一个次构造
     * info定义了一个默认参数，如果不传值就使用这个默认值
     */
    constructor(_name:String,_age:Int,_isMale:Boolean ,_info:String = "未知"):this(_name,_age){
        this.isMale = _isMale
        this.info = _info
    }
}