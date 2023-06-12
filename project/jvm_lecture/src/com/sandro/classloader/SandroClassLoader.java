package com.sandro.classloader;

import java.io.*;

public class SandroClassLoader extends ClassLoader{

    /**
     * 类加载器的名字，标识用
     */
    private String classLoaderName;

    private final String fileExtension = ".class";

    public SandroClassLoader(String classLoaderName){
        super();//默认父加载器是 系统类加载器
        this.classLoaderName = classLoaderName;
    }

    public SandroClassLoader(ClassLoader parent){
        super(parent);
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
        System.out.println("MyClassLoader【 " + this.classLoaderName  + " 】 findClass : " + className);
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
            return null;
        } catch (IOException e) {
            return null;
        }finally {
            if(is != null){
                try {
                    is.close();
                    baos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return data;
    }

    @Override
    public String toString() {
        return classLoaderName==null?"SandroClassLoader":classLoaderName;
    }
}
