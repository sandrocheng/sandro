package coroutine

import kotlinx.coroutines.async
import kotlinx.coroutines.delay
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.selects.select
import log

private class Product(val name:String)
fun main() {
    runBlocking {
        /**
         * select 用于多个协程在执行的时候，选择最快的那个结果
         */
        val product = select{
            async {
                createProduct("product1",500)
            }.onAwait{
                it//当任务执行完毕，返回执行结果
            }

            async {
                createProduct("product2",1000)
            }.onAwait{
                it
            }
        }
        log("${product.name} created")//product1耗时最短，此时返回的是product1
    }
}

private suspend fun createProduct(name:String,time:Long):Product{
    delay(time)
    return Product(name)
}