package oop


/**
 * 接口类和函数默认都是 open的，不需要显示定义
 * 接口没有构造
 */
interface IUSB{
    var usbInfo:String
    var usbDevice:String

    fun link():Boolean
}

/**
 * 接口实现类，不仅需要重写接口的方法，还需要重写成员变量
 * 接口实现必须要使用override修饰
 */
class Mouse(override var usbInfo: String):IUSB{
    override var usbDevice: String = "mouse"
    constructor(_usbInfo: String,_device:String):this(_usbInfo){
        this.usbDevice = _device
    }

    override fun link(): Boolean {
        println("usbInfo:$usbInfo , usbDevice:$usbDevice")
        return !(usbInfo.isBlank() || usbDevice.isBlank())
    }
}

class KeyBoard:IUSB{

    //因为重写了get方法，而且方法中使用了field，所以必须初始化一个值，否则编译出错
    //注意get方法里，如果想要对成员函数判断，一定要使用field，如果使用成员变量，有可能会栈溢出
    //因为在使用成员变量的时候 实际上是调用getxxx方法，所以实际上就变成了无限的递归调用了
    //set方法默认会有实现，如果没有特殊需求，可以不用显式实现
    override var usbDevice: String = ""
        get() = if (field.isNullOrBlank()) "keyboard" else field

    override var usbInfo: String = ""
        get() {
            return if (field.isNullOrBlank()) "3.0" else field
        }

    override fun link(): Boolean {
        println("usbInfo:$usbInfo , usbDevice:$usbDevice")
        return !(usbInfo.isBlank() || usbDevice.isBlank())
    }
}

/**
 * 接口中的成员变量是无法直接赋值的，var类型的也不行
 * 但是可以通过get机制，提供一个默认的值返回,但是该成员变量必须是val的
 * kt中接口中的函数也可以有默认实现
 *
 * 因为默认实现以后，实现类在实现的时候编译器不会提示哪些成员或者函数需要实现，可能会造成误解，一般不推荐这种方式
 */
interface IUSB2{
    val usbInfo:String
        get()= "2.0"
    var usbDevice:String

    fun link():Boolean{
        return false
    }
}

/**
 * 接口定义
 */
fun main(){

    val m:IUSB = Mouse("")
    println("mouse link : ${m.link()}")

    val k = KeyBoard()
    k.usbInfo = "2.0"
    k.usbDevice = "huawei keyboard"
    println("keyboard link : ${k.link()}")

    println("k is IUSB : ${k is IUSB}")//true


    val m2:IUSB2 = object :IUSB2{
        //usbInfo在IUSB2中由于有了默认实现，所以可以不用写，如果有特殊需求，也可以重写
        override var usbDevice: String=""
            get() = if (field.isNullOrBlank()) "keyboard" else field

        override fun link(): Boolean {
            println("usbInfo:$usbInfo , usbDevice:$usbDevice")
            return !(usbInfo.isBlank() || usbDevice.isBlank())
        }

    }
    println("mouse2 link : ${m2.link()}")
}