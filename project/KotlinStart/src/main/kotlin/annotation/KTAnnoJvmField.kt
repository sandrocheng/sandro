package annotation

class KTAnnoJvmField {

    /**
     * 在java中如果想要读取ages，必须使用getAges()方法
     */
    val ages = listOf(21,22,23)

    /**
     * 使用JvmField后
     * 在java中可以直接调用该变量
     */
    @JvmField
    var names = listOf("name1","name2","name3")
}