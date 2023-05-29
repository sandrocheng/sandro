/**
 * 使用JvmName注解后，可以修改类的名字，简化java端的调用
 * 如果不使用注解，java端调用该类的方法:KTAnnoJvmNamekt.annoJvmNameTest("xxx")
 * 使用后注解后：AnTest.annoJvmNameTest("test");
 * 注意必须写在 package annotation 外面
 */
@file:JvmName("AnTest")
package annotation

fun annoJvmNameTest(str:String){
    println(str)
}