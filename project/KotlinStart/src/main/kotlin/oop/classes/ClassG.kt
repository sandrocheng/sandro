package oop.classes

/**
 * 构造初始化顺序
 */
class ClassG (_name:String,val age:Int){//第一步 ，主构造内部属性age生成并赋值
    //第二步，因为成员变量name在init代码块上边，所以name会先生成并赋值 ，如果name在init代码块下边，则name的生成和赋值会在init后面
    val name = _name
    init {//第三步，执行init代码块
        val nameTmp = _name
        println("init name:$name,nameTmp:$nameTmp ,age:$age");
    }


    constructor(_name:String,_age:Int,_isMale:Boolean):this(_name,_age){
        //第五步，如果外部是通过次构造实例化一个对象，次构造内部代码块最后执行
        println("次构造 name:$_name ,age:$_age ,isMale:$_isMale")
    }

    //第四步，其他写在init代码块后面的成员变量的生成和赋值或初始化
    val list = mutableListOf<Int>()
}