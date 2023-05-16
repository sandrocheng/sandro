package funextend.extfiles.file1

/**
 * 扩展文件
 * 工作中可以统一将扩展函数通过扩展文件的方式组织起来，需要使用的时候引用就可以了
 *
 * 1 一般都是public,否则外界无法使用
 * 2 Iterable<E> 子类，set list都可以用
 */
fun <E> Iterable<E>.randomItemValue() = this.shuffled().first()

fun <E> Iterable<E>.printlnRandomItemValue() = println(this.shuffled().first())

