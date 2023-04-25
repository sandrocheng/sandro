package collection

/**
 * kt中的set集合
 * set的创建和元素获取
 * 可变Set集合
 * 集合转换与快捷函数
 */
fun main(args:Array<String>){
    setCreateAndGet()
    ktMutableSet()
    revertSetAndList()
}

/**
 * 集合转换与快捷函数
 */
private fun revertSetAndList(){
    println("revertSetAndList=================")

    val list = mutableListOf(1,2,3,4,5,5,4,3,2,1)
    println("list : $list")
    //通过使用list转set去重
    val set = list.toSet()
    val newList = set.toList()
    println("newList : $newList")

    //list通过转Set去重的简化写法
    println("list.toSet().toList() : ${list.toSet().toList()}")

    //使用快捷函数去重
    println("list.distinct():${list.distinct()}")
}

/**
 * 可变Set集合
 */
private fun ktMutableSet(){
    println("ktMutableSet======================")
    val set = mutableSetOf("A","B","C")
    set += "D"
    set -= "B"
    set.add("E")
    set.remove("A")
    println(set);
}

/**
 * set的创建和元素获取
 */
private fun setCreateAndGet(){
    println("setCreateAndGet======================")

    //setOf创建Set集合并初始化，Set里不会出现重复元素，重复的元素会被覆盖掉
    val set:Set<String> = setOf("A","B","A","C")
    println("set len : ${set.size}, set : $set");

    //使用elementAt获取Set中的元素，如果索引大于Set的容量，会抛出越界异常
    println("set.elementAt(0) : ${set.elementAt(0)}")

    //Set取值时 ，使用elementAtOrElse 或者 elementAtOrNull保护，避免空指针，或者越界异常
    println(set.elementAtOrElse(5){"当前set只有${set.size}个元素"})
    println(set.elementAtOrNull(5)?:"当前set只有${set.size}个元素")


}