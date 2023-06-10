package com.sandro.classloader;

import java.io.*;

public class Test19 {
    public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException {

        //用系统加载器加载当前项目目录中的类文件
        Class<?> clazz = ClassLoader.getSystemClassLoader().loadClass("com.sandro.classloader.Data");
        Object obj = clazz.newInstance();
        System.out.println(obj);

        //使用自定义classloader 加载 res目录中的class文件
        MyClassLoader loader = new MyClassLoader("loader1");
        clazz = loader.loadClass("com.sandro.annotation.Main");
        obj = clazz.newInstance();
        System.out.println(obj);
    }

    public static class MyClassLoader extends ClassLoader{

        private String classLoaderName;

        private final String fileExtension = ".class";

        public MyClassLoader(String classLoaderName){
            super();//默认父加载器是 系统类加载器
            this.classLoaderName = classLoaderName;
        }

        @Override
        protected Class<?> findClass(String className) throws ClassNotFoundException {
            System.out.println("MyClassLoader findClass : " + className);
            byte[] data = this.loadClassData(className);
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
