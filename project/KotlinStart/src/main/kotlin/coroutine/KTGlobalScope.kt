package coroutine

import kotlinx.coroutines.GlobalScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import log

fun main(){
    log("process start")
    //GlobalScope代表整个程序的声明周期
    //比如android Activity中使用GlobalScope，那么就是整个进程的声明周期，即使Activity被销毁，当前协程任务依然会继续执行
    GlobalScope.launch {
        delay(1000)
        log("hello from GlobalScope.launch")
    }
//    GlobalScope.cancel()虽然提供了cancel方法，但是外部调用会报错，这里的cancel只能由其内部根据进程声明周期自行调用
    Thread.sleep(2000)//如果不加这句话进程跑完就结束了，协程任务没执行完也会停止
    log("process finish")

}