package coroutine

import kotlin.concurrent.thread

/**
 * kt中使用java线程
 */
fun main(){
    Thread {//使用Thread类，在匿名函数中实现线程任务，需要start才能执行
        Thread.currentThread().name = "subThread1"
        Thread.sleep(3000)
        println("[${Thread.currentThread().name}] hello world1 ")
    }.start()

    thread {//使用thread匿名方法，直接启动线程任务，不需要start
        Thread.currentThread().name = "subThread2"
        println("[${Thread.currentThread().name}] hello world2")
    }
}