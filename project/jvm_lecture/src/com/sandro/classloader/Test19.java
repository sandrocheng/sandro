package com.sandro.classloader;

import java.io.*;

/**
 * 自定义类加载器
 */
public class Test19 {
    public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        MyClassLoader loader = new MyClassLoader("loader1");

        //com.sandro.classloader.Data 是项目中的类，因此此时实际上是系统类加载器加载的
        //所以 对于com.sandro.classloader.Data，系统类加载器，是它的定义类加载器
        //而最终Class对象是通过MyClassLoader返回的，因此MyClassLoader是com.sandro.classloader.Data的初始类加载器
        Class<?> clazz = loader.loadClass("com.sandro.classloader.Data");
        Object obj = clazz.newInstance();
        System.out.println(obj);

        //使用自定义classloader 加载 res目录中的class文件

        //因为class文件在res目录中，此时MyClassLoader的父加载器（应用加载器）是无法找到对应的文件的
        //此时会通过findClass方法通知MyClassLoader自行加载类文件
        Class<?> clazz1 = loader.loadClass("com.sandro.annotation.Main");
        Object obj1 = clazz1.newInstance();
        System.out.println(obj1);
        System.out.println("com.sandro.annotation.Main class loader is " + clazz1.getClassLoader());
        System.out.println("----------------");

        /**
         * loader1 和 loader2 的父亲加载器都是启动加载器
         * 当分别通过这两个加载器加载同一个类com.sandro.annotation.Main，返回的类对象不是同一个类对象
         * 因为 每个类加载器都有自己的命名空间，并且com.sandro.annotation.Main他们的父加载器无法加载
         *     如果被加载的类(比如 String)，他们的父加载器可以加载，那么返回的类对象就是同一个
         *
         * 另外一种情况，如果load1是load2的父加载器（通过overrite ClassLoader构造函数实现）
         *             那么加载同一个类com.sandro.annotation.Main ，返回的类对象就是同一个类对象
         */
        System.out.println("clazz1.hashcode is " + clazz1.hashCode());
        MyClassLoader loader2 = new MyClassLoader("loader2");
        Class clazz2 = loader2.loadClass("com.sandro.annotation.Main");
        System.out.println("clazz2.hashcode is " + clazz2.hashCode());

    }

    public static class MyClassLoader extends ClassLoader{

        /**
         * 类加载器的名字，标识用
         */
        private String classLoaderName;

        private final String fileExtension = ".class";

        public MyClassLoader(String classLoaderName){
            super();//默认父加载器是 系统类加载器
            this.classLoaderName = classLoaderName;
        }

        /**
         * 父类在loadClass中，检查完父类加载器后 如果没有查找到对应的类，会调用该方法
         * @param className ：类名的二进制名
         *
         * @return
         * @throws ClassNotFoundException
         */
        @Override
        protected Class<?> findClass(String className) throws ClassNotFoundException {
            System.out.println("MyClassLoader findClass : " + className);
            byte[] data = this.loadClassData(className);
            if(data == null){
                throw new ClassNotFoundException("MyClassLoader findClass failed [" + className + "]");
            }
            //difineClass,通过类文件的二进制数组返回class对象
            return this.defineClass(className,data,0,data.length);
        }

        /**
         * 从指定资源文件中读取class文件
         * @param fileName
         * @return
         */
        private byte[] loadClassData(String fileName){
            InputStream is = null;
            byte[] data = null;
            ByteArrayOutputStream baos = null;
            fileName = fileName.replace(".","/");

            try {
                is = new FileInputStream(new File("res/" + fileName + fileExtension));
                baos = new ByteArrayOutputStream();
                int ch = 0;
                while(-1 != (ch = is.read())){
                    baos.write(ch);
                }
                data = baos.toByteArray();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }finally {
                try {
                    is.close();
                    baos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return data;
        }

        @Override
        public String toString() {
            return classLoaderName;
        }
    }
}
