package com.sandro.classloader;

public class Test18 {
    public static void main(String[] args) {
        String[] strArr = new String[]{"1","2"};
        //strArr是数组类型：[Ljava.lang.String;
        System.out.println(strArr.getClass());
        //由于数组类型的类加载器用的是数组元素的类加载器，String是根加载器加载的，所以此时是null
        System.out.println(strArr.getClass().getClassLoader());

        int[] intArr = new int[]{1,2};
        //intArr是数组类型：[I
        System.out.println(intArr.getClass());
        //虽然返回是null,但是实际上不是根加载器加载的，因为原始类型数组没有类加载器
        System.out.println(intArr.getClass().getClassLoader());

        Test1[] array = new Test1[]{new Test1()};
        //array的类型是 [Lcom.sandro.classloader.Test1;
        System.out.println(array.getClass());
        //Test1这个类是应用中的类，所以当前数组的类加载器也是应用类加载器
        System.out.print(array.getClass().getClassLoader());
    }
}
