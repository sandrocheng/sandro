package coroutine

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.runBlocking
import log

/**
 * runBlocking与coroutineScope可能看起来很类似，因为它们都会等待其协程体以及所有子协程结束。这两者的主要区别在于
 * runBlocking方法会阻塞当前线程来等待，而 coroutineScope只是挂起，会释放底层线程用于其他用途。
 * 由于存在这点差异，runBlocking 是常规函数，而coroutineScope是挂起函数。
 */
fun main(){
    //不指定调度器，runBlocking会依赖调用的线程
    runBlocking {
        work1()
    }
    log("main 结束")

    //使用调度器，虽然在其他线程执行，但是依然会阻塞当前线程
    runBlocking(Dispatchers.IO) {
        log("协程2开始")
        delay(500)
        log("协程2结束")
    }

    //代码块最后一行在执行结束后返回调用者
    val result = runBlocking {
        delay(500)
        "work finish"
    }
    log("result:$result")
}

private suspend fun work1(){
    log("协程1开始")
    delay(500)
    log("协程1结束")
}