package oop.classes

/**
 * 在主构造函数中直接定义成员变量,这样比较方便，比较常见的写法
 * 相当于
 * class ClassC(_name:String ,_age:Int,_isMale:Boolean){
 *      var name = _name
 *      val age = _age
 *      val isMale=_isMale
 * }
 */
class ClassD(var name:String,val age:Int,private val isMale:Boolean ) {
    val sex:String//使用计算属性
    get() {
        if(isMale){
            return "男"
        }
        return "女"
    }
}