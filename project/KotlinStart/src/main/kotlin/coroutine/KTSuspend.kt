package coroutine

import kotlinx.coroutines.delay
import kotlinx.coroutines.runBlocking
import log

fun main(){
   runBlocking {
       test()
       log("test finish")
   }
}

/**
 * suspend 挂起函数，用于协程中执行
 * delay 和 Thread.sleep的区别：sleep是当前线程睡眠，如果在协程代码块中使用线程的sleep，那么运行在当前线程的其他协程任务也运行不了
 *                            delay，让当前协程挂起，不会影响执行其他协程，即便其他协程和当前协程运行在同一个线程上也没关系
 * 一般再在suspend中使用了线程的停止函数，比如sleep,wait等，编译器会提示，所以推荐在协程中调用的函数都使用suspend关键字
 * suspend + inline方式定义函数，编译器会做一定的协程效率优化
 */
private suspend inline fun test(){
    delay(500)
}