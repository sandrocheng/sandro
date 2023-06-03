package coroutine

import kotlinx.coroutines.*
import log

fun main() {
    runLaunch()
}

/**
 * launch是协程中比较重要的方法，可以在一个协程代码块中继续执行另一个协程任务
 * 默认情况下launch中会使用一个空的Context
 */
private fun runLaunch() = runBlocking {
    log("aa")//[main] aa
    launch (Dispatchers.IO){
        log("bb")//[DefaultDispatcher-worker-1] bb
    }
    //不指定调度器的情况下，这个launch会继承外部（runBlocking）的调度器
    launch {
        log("cc")//[main] cc
    }
    launch(CoroutineName("coroutine1")){
        //[main] dd name : CoroutineName(coroutine1)
        //从上下文context中读取协程名字
        //[main] dd name : CoroutineName(coroutine1)
        log("dd name : ${coroutineContext[CoroutineName].toString()}")
    }

    val job = launch {
        log("e start")
        log("e end")
    }
    //job在调度的时候是异步而且耗时的，所以job中的任务有可能还没执行，就被这里cancel掉了
    job.cancel()

    //通过设置start 为 CoroutineStart.ATOMIC，可以提升任务的执行速度。
    //协程立即启动，但是不能在没有执行的时候被取消
    val job2 = launch(start = CoroutineStart.ATOMIC) {
        log("f start")
        delay(500)
        log("f end")
    }
    job2.cancel()

    //通过设置start 为 CoroutineStart.LAZY,可以让当前任务不立即执行，直到start被调用
    val job3 = launch(start = CoroutineStart.LAZY) {
        log("g start")
        delay(500)
        log("g end")
    }
    log("g init finish")
    job3.start()
}