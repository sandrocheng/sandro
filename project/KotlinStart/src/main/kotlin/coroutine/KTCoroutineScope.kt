package coroutine

import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import log

suspend fun main(){
    /**
     * CoroutineScope : 是一个suspend函数，创建一个新的协程作用域，并在该作用域执行指定代码块
     *                  它并不启动协程，其存在的目的是进行符合结构化并发的并行分解（即长耗时任务拆分为并发的多个短耗时任务）
     * Dispatchers.IO：一般耗时操作可以放在IO调度器中
     * Dispatchers.Default:密集计算，多核效率会更高
     * Dispatchers.Main:android主线程
     *
     * CoroutineScope作用域中只能执行suspend函数
     *
     */
    val cs = CoroutineScope(Dispatchers.IO).launch {
        work1()
    }
    cs.join()//join类似 java c++中线程的join，前提是调用方法（比如这里是main函数），也必须是suspend的
    CoroutineScope(Dispatchers.IO).launch {
        log("协程2开始")
        delay(1000)
        log("协程2结束")
    }
    log("主线程")
    Thread.sleep(2000)//这里睡眠一下，否则主线程退出， 协程也会停止


    val cs2 = CoroutineScope(Dispatchers.Default).launch {
        log("sc start")
        delay(3000)
        log("sc finish")
    }
    Thread.sleep(500)
    log("cs.isActive ${cs2.isActive}")
    cs2.cancel()//CoroutineScope返回的协程对象可以取消

    log("app finish")
}

/**
 * suspend关键字：用于暂停执行当前协程，并保存所有局部变量，被标记为suspend的函数只能运行在协程或者其他suspend函数
 *              inline函数可以放在suspend函数中
 */
private suspend fun work1(){
    println("[${Thread.currentThread().name}] 协程1开始")
    delay(1000)
    println("[${Thread.currentThread().name}] 协程1结束")
}

