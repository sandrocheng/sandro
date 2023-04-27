package oop.classes

//这个叫主构造函数，如果没有参数的化，()可以不写
//规范的写法 一般用 _xxx来传参，这些参数实际上是临时输入类型，不能直接使用，需要手动接受成为变量才能用
class ClassC(_name:String ,_age:Int,_isMale:Boolean) {

    var name = _name//需要手动接受才能赋值
        private set // set私有化简写，这样外部就不能 通过.name = "xxx"来给name赋值了
    private val isMale = _isMale // 使用val也相当于把set私有化了，和name一样，如果是private的变量，set和get方法都会自动定义为private
    val sex:String//使用计算属性
        get() {
            if(isMale){
                return "男"
            }
            return "女"
        }
    val age = _age
        get() {
            if(field < 0){
                return 0
            }
            return field
        }

}