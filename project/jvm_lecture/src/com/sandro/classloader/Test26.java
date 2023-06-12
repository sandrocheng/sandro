package com.sandro.classloader;

import sun.misc.Launcher;

/**
 * 平台特定的启动类加载器深入分析
 * 通过命令行运行程序
 *  java com.sandro.classloader.Test26
 *  发现应用类加载器加载的路径 比 在IDEA中运行程序要少很多
 *  原因：
 *      控制台运行的classpath只是当前目录
 *      而IDEA中修改了java.class.path,增加了很多idea必要的jar包路径
 */
public class Test26 {
    public static void main(String[] args) {

        /**
         * 根类加载器 类文件路径
         * 通过-D 运行时命令 修改根类加载器路径
         *  java -Dsun.boot.class.path=./ com.sandro.classloader.Test26
         *         Error occurred during initialization of VM
         *         java/lang/NoClassDefFoundError: java/lang/Object
         * 发现虚拟机已经无法启动了原因是 java的核心类库已经加载不到了
         */
        System.out.println("boot : " + System.getProperty("sun.boot.class.path"));
        //扩展类加载器 类文件路径
        System.out.println("ext : " + System.getProperty("java.ext.dirs"));
        //应用类加载器 类文件路径
        System.out.println("app : " + System.getProperty("java.class.path"));

        /**
         * ClassLoader是被启动类加载器加载的，所以它的classloader是null
         */
        System.out.println(ClassLoader.class.getClassLoader());

        /**
         * 扩展类加载器和应用类加载器是Launcher的保护内部静态类
         * 由于Launcher的加载器是null,也就是启动类加载器，所以可以说明扩展类加载器和应用类加载器是启动类加载器加载的
         *  Launcher.ExtClassLoader.getExtDirs();中可以看到扩展类加载器加载jar包路径的方法
         *      String var0 = System.getProperty("java.ext.dirs");
         *  Launcher.AppClassLoader.getAppClassLoader()中可以看到应用类加载器加载的类路径
         *      final String var1 = System.getProperty("java.class.path");
         */
        System.out.println(Launcher.class.getClassLoader());

        System.out.println("----------------------");

        /**
         * 默认的系统类加载器:ClassLoader.getSystemClassLoader() 返回的是sun.misc.Launcher$AppClassLoader
         * 可以通过 定义 java.system.class.loader 自定义系统类加载器
         * java.system.class.loader,默认情况下这个值是null,说明系统类加载器默认指向appclassloader
         *
         * 设置Test1设置为默认的系统类加载器
         * 命令行运行 java -Djava.system.class.loader=com.sandro.classloader.Test1 com.sandro.classloader.Test26
         * 此时报错
         * Error occurred during initialization of VM
         * java.lang.Error: java.lang.NoSuchMethodException: com.sandro.classloader.Test1.<init>(java.lang.ClassLoader)
         * 原因:
         *      系统类加载必须满足以下条件
         *      1）继承 ClassLoader
         *      2）构造函数参数 是ClassLoader ,并且调用super(classloader)
         *
         *  重新运行命令
         *      java -Djava.system.class.loader=com.sandro.classloader.SandroClassLoader com.sandro.classloader.Test26
         *   运行后，发现 java.system.class.loader 已经变为 com.sandro.classloader.SandroClassLoader
         *   而ClassLoader.getSystemClassLoader() 已经是SandroClassLoader了
         *
         */
        System.out.println(System.getProperty("java.system.class.loader"));
        System.out.println(ClassLoader.getSystemClassLoader());
        /**
         * 不管是用默认的应用加载器，还是更换SandroClassLoader为应用类加载器
         * 内部类的加载器还是AppClassLoader，因为AppClassLoader会作为SandroClassLoader父加载器去加载classpath下的类文件
         */
        System.out.println(Test26.class.getClassLoader());
    }
}
