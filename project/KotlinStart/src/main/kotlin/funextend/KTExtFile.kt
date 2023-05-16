/**
 * 扩展文件
 * 重命名扩展
 */
package funextend
//导入扩展文件
import funextend.extfiles.file1.randomItemValue

import funextend.extfiles.file1.printlnRandomItemValue as prv

fun main(args:Array<String>){
    extfileFun()
    KTRename()
}

/**
 * 重命名扩展
 * 在引用的时候通过 import xxx.xxx.xxx as name 来重命名，可以简化代码
 */

private fun KTRename(){
    println("KTRename==================")
    val list = listOf("abc","def","ghi")
    val set = setOf(1.0,2.0,3.3)
    set.prv()
    list.prv()
}

//扩展文件
private fun  extfileFun(){
    val list = listOf("abc","def","ghi")
    val set = setOf(1.0,2.0,3.3)
    //不使用扩展文件
    println(list.shuffled().first())
    println(set.shuffled().first())
    //使用扩展文件
    println(list.randomItemValue())
    println(set.randomItemValue())
}