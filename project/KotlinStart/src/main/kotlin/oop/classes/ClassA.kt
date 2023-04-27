package oop.classes

class ClassA {
    /**
     * 背后实际上是定义了私有成员变量，
     * 并定义成员变量的set get方法
     * private String name = null
     */
    var name: String? = null
    var age = 0

    var info = "info"
        //这两个get set方法是针对info这个变量的隐式方法，如果只是简单的读取和设置就不需要显示的写出来
        //field代表info这个变量，get set也是对应info这个变量
        //写的话，编译器会提示这是多余的代码
        //get set方法 标准写法需要再缩进一下
        get() = field  //如果变量是public的，get方法不能用private修饰
        set(value) { //set方法也可以通过 private set(value){} ,定义为私有方法
            field = value
        }

    var word = "hello word"
        //此时因为对get方法进行了扩展使用，这个时候编译器会认为是合理的
        get() {
            return field.uppercase()
        }
        set(value) {
            field = "[$value]"
        }
}