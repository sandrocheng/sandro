package oop.classes

/**
 * 计算属性与防范竞态条件
 */
class ClassB {
    /**
     * 因为是val类型的
     * 所以对应的java代码是
     * private int number = 0
     * public int getNumber(){return this.number;}
     * 不会有set方法
     */
    val number:Int = 0

    /**
     * number2在声明的时候没有赋值，但是get函数有值返回，因此也符合kt的语法，不会编译报错
     * 外部调用的时候 也是通过number来隐式调用到 getNumber2()这个方法
     * 这种属性变量，就叫做计算属性，此时field就失效了，不需要使用field,也不能初始化
     * 比如 val number2:Int = 0
     *          get() = 5
     *     此时会编译报错
     *  这种情况下对应的java代码不会有 private int number2=0 这个定义
     *  只会有 public int getNumber2(){...}这个函数
     */
    val number2:Int
        get()=(1..1000).shuffled().first()//取从1 到 1000的随机数

    private var info:String?=null

    /**
     * 防范竟态条件
     *  当调用成员时，这个成员可能为null，这个时候必须要采用防范竟态条件，这个是kt编程的规范
     *  先使用?.also 对字符串判空，如果为空 不执行 also匿名函数
     *  再使用?: 空合并字符，返回一个不空的值
     */
    fun getShowInfo():String{
        return info?.also {
            "[$it]"
        } ?: "info is null ,error"
    }
}