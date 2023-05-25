package singleton

/**
 * 饿汉单例
 * object对应java static 对象实例,所以直接生成的对象就是饿汉式单例的
 * 编译成java的代码
 * public final class HungrySingleton {
 *    @NotNull
 *    public static final HungrySingleton INSTANCE;
 *
 *    public final void run() {
 *       String var1 = "run";
 *       System.out.println(var1);
 *    }
 *
 *    private HungrySingleton() {}
 *
 *    static {
 *       HungrySingleton var0 = new HungrySingleton();
 *       INSTANCE = var0;
 *    }
 * }
 */
object HungrySingleton {
    fun run(){
        println("run")
    }
}

fun main(){
    HungrySingleton.run();
}