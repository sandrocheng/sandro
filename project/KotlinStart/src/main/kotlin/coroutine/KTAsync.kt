package coroutine

import kotlinx.coroutines.CoroutineStart
import kotlinx.coroutines.async
import kotlinx.coroutines.delay
import kotlinx.coroutines.runBlocking
import log

fun main(){
    runBlocking {
        //相对于launch，async是异步执行的，并且能够返回异步执行结果
        //这里即使是使用ATOMIC的方式，依然不会立即执行，不像launch那样几乎是立即执行了
        //如果这里使用的是LAZY,那么任务会在调用await的时候才会启动，或者调用start也可以启动
        val d = async(start = CoroutineStart.ATOMIC) {
            log("test working")
            delay(1000)
            202//最后一行的值会被返回给外部，外部通过 .await()方法阻塞等待返回的值
        }
        log("blocking 1")//async是非阻塞的，这句话会继续执行
        log("blocking 2")//async是非阻塞的，这句话会继续执行
        log("blocking 3")//async是非阻塞的，这句话会继续执行
        log("blocking 4")//async是非阻塞的，这句话会继续执行

        //阻塞并等待结果
        //d.getCompleted()可以立即返回结果，但是如果任务没有执行完毕，或者被取消，会抛出相应的异常
        log("async result : ${d.await()}")
        log("blocking 2")
    }
}
