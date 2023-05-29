package annotation

class MyClass{
    companion object{
        //在java中调用只能通过MyClass.Companion.getTarget()去调用
        val target = "开始学习"
        fun showTar(name:String) = println("$name 要$target")
    }
}

class MyClass2{
    companion object{
        /**
         * 使用JvmStatic后，在java中调用可以直接调用
         * MyClass2.showTar()
         */
        @JvmStatic
        val target = "开始学习"

        @JvmStatic
        fun showTar(name:String) = println("$name 要$target")
    }
}

fun main(){
    MyClass.showTar("sandro")
    MyClass2.showTar("jhye")
}