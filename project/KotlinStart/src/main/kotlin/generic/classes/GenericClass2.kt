package generic.classes

/**
 * 如果isTrue 运用takeIf判断obj
 */
class GenericClass2<T>(private val isTrue:Boolean,private val obj:T) {
    fun getObj():T? = obj.takeIf { isTrue }
}