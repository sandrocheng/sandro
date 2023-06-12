package com.sandro.classloader;

/**
 * 扩展类加载器类路径设置要点
 */
public class Test25 {

    static {
        System.out.println("Test25 static block");
    }
    public static void main(String[] args) {
        /**
         * 在~project/jvm_lecture/out/production/jvm_lecture目录下运行 设置扩展类加载器命令
         * java -Djava.ext.dirs=./ com.sandro.classloader.Test25
         * -D 一般是运行时设置，java.ext.dirs=./ 将当前目录设置为扩展类加载器需要加载的类路径
         * 运行后结果
         *      Test25 static block
         *      sun.misc.Launcher$AppClassLoader@4e0e2f2a
         *      sun.misc.Launcher$AppClassLoader@4e0e2f2a
         * 发现加载Test25 Test1的类加载器还是应用类加载器，并不是预想的扩展类加载器加载
         * 原因：扩展类加载器默认是加载jar包的，而不是class文件
         *
         * 在class目录下运行jar命令给Test1打成jar包，并命名为test.jar
         * project/jvm_lecture/out/production/jvm_lecture$ jar cvf test.jar com/sandro/classloader/Test1.class
         * 输出：
         * Test25 static block
         * sun.misc.Launcher$AppClassLoader@659e0bfd
         * sun.misc.Launcher$ExtClassLoader@5c647e05
         * 此时发现Test1的classloader变成了ExtClassLoader
         */
        System.out.println(Test25.class.getClassLoader());
        System.out.println(Test1.class.getClassLoader());
    }
}
