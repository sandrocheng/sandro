package com.sandro.classloader;

/**
 * jvm各种加载器类的路径和设置
 */
public class Test23 {
    public static void main(String[] args) throws Exception {
        printClassPath();
        printCustomClassLoaderPath();
    }

    /**
     * 从系统根路径中发现 /usr/jdk1.8.0_291/jre/classes 这个目录是根路径要加载的类路径
     * 把SandroRootClass类文件拷贝到 根加载器的加载路径中
     * 此时自定义的类就可以被根加载器加载了
     * 为了避免环境出问题，测试完成以后把对应的类删除
     * @throws Exception
     */
    private static void printCustomClassLoaderPath() {
        try {
            System.out.println("----printCustomClassLoaderPath------");
            Test19.MyClassLoader loader1 = new Test19.MyClassLoader("loader1");
            Class<?> clazz = loader1.loadClass("sandroclasses.SandroRootClass");
            System.out.println("class : " + clazz.hashCode());
            System.out.println("class loader :" + clazz.getClassLoader());
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    /*
     * 各加载器中文件的路径
     */
    private static void printClassPath(){
        //系统类加载器 类文件路径
        System.out.println(System.getProperty("sun.boot.class.path"));
        //扩展类加载器 类文件路径
        System.out.println(System.getProperty("java.ext.dirs"));
        //应用类加载器 类文件路径
        System.out.println(System.getProperty("java.class.path"));
    }
}

