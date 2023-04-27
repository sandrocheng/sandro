package oop.classes

/**
 * 延迟初始化lateinit
 */
class ClassH {
    //延时初始化对象只能是var类型，不且不能是可空类型，否则编译失败
    private lateinit var value: String

    /**
     * 模拟一个耗时操作，延时初始化 value赋值
     */
    fun request(){
        value = "success"
    }

    /**
     * 由于showValue里使用了延迟加载变量，所以调用showValue前必须要先调用 request 方法加载延迟变量
     * 否则会 报 kotlin.UninitializedPropertyAccessException: lateinit property value has not been initialized
     */
    fun showValue(){
        //如果没有初始化只要用到就报错，就算判null也不行，比如 if(value==null) ,
        println("value : $value")
    }

    /**
     * 如果想要避免延迟加载带来的错误，需要判断变量是否初始化
     * ::value.isInitialized
     */
    fun showValue2(){
        if(::value.isInitialized){
            println("value:$value")
        }else{
            println("value延迟加载，当前request方法还没有执行");
        }
    }

}