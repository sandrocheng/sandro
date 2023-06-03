package coroutine

import kotlinx.coroutines.*
import log

@OptIn(ExperimentalStdlibApi::class)
fun main(){
    runBlocking(Dispatchers.IO) {
        log("CoroutineDispatcher is ${coroutineContext[CoroutineDispatcher]}")
        //通过withContext把当前协程切换到其他线程池中，
        //比如在android里，可以通过withContext切换到主线程
        //最后一行的结果可以返回给外部
        //在执行完之前，这里是阻塞的（或者说，在执行withContext任务的时候，这里是挂起的）
        val result = withContext(Dispatchers.Default){
            log("withContext is ${coroutineContext[CoroutineDispatcher]}")
            delay(500)
            "success"
        }
        log("result : $result")
    }
}