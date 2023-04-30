package oop

class Body(_info:String){

    private val bodyInfo = _info

    fun show(){
        Heart().run()//外部类可以访问内部类
        Foot().work()//外部类可以访问嵌套类
    }

    //默认情况下 内部类不能访问外部的类，需要增加inner修饰符后，才能访问外部类
    inner class Heart{
        fun run() = println(" $bodyInfo ,heart run")
    }

    //因为没有使用inner修饰符，Foot这个类实际上并不是内部类，也就无法访问外部类Body中的变量和函数
    //这种类叫做嵌套类
    class Foot{
        fun work(){
            println("Foot -> work")
        }
    }

    inner class Hand{
        inner class LeftHand{
            //LeftHand这个类要想访问外部的变量，需要让所有的嵌套类都用inner修饰才可以
            fun use(){
                println(" $bodyInfo ,leftHand use")
            }
        }
        //Hand是inner修饰，那么Hand内部的所有类都必须用inner修饰，否则编译报错
        inner class RightHand{

        }
    }
}


/**
 * 嵌套类和内部类
 */
fun main(){
    //内部类
    Body("sandro").show()
    Body("sandro").Hand().LeftHand().use()

    //嵌套类使用
    Body.Foot().work()
}