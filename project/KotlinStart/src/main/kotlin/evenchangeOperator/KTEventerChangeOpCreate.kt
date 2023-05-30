package evenchangeOperator

/**
 * 手写事件变换操作符号 - create
 * 类似 rxjava中create操作符，
 * create操作符负责初始化数据，并把结果数据保存到中间变量中
 * 中间变量可以继续使用map链式调用逐一加工数据
 */
fun main(){
    create {//匿名表达式，把数据最后一行流向 map
        "sandro"
    }.map {//匿名表达式，把create最后一行,继续流向下一个map
        "$this map1 success,"
    }.map {//匿名表达式，把上一个map的最后一行,继续流observer
        "$this map2 success."
    }.observer {//接收上一个map处理的最后一行，给到当前匿名函数，并处理结果
        println("oberserver : $this")
    }
}

/**
 * 中转站保存中间记录
 * 主构造中传值 create 最后一行的值
 * valueItem就是 create操作符最后一行的值
 */
class  RxJavaCoreObj<T>(var valueItem:T)

/**
 * 使用泛型扩展函数的方式，给RxJavaCoreObj类扩展出一个新的方法 map
 * 该方法需要被链式调用，所以要返回自身
 */
inline fun<I,O> RxJavaCoreObj<I>.map(mapAction:I.()->O):RxJavaCoreObj<O>{
    return RxJavaCoreObj(mapAction(valueItem))
}

/**
 * 定义一个消费函数，用于处理中转站中最后的值
 */
inline fun<I> RxJavaCoreObj<I>.observer(oberserverAction:I.()->Unit) = oberserverAction(valueItem)


/**
 * 定义一个创建函数create，用于初始化数据，并把最后一行数据封装成对象返回外部
 */
private fun<T> create(action:() -> T) : RxJavaCoreObj<T> = RxJavaCoreObj<T>(action())
