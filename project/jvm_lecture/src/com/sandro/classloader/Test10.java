package com.sandro.classloader;

/**
 * 证明在初始化一个接口时，并不会先初始化它的父接口
 * 通过 TraceClassLoading可以看到 父接口会被加载
 */
public class Test10 {
    public static void main(String[] args){
        /**
         * 此时Parent中的thread实例化代码块并没有被执行，所以初始化一个接口时，并不会先初始化它的父接口
         */
        Child.cthread.start();

        System.out.println("--------------------");
        /**
         * 当直接调用父接口的thread时，父接口才会初始化
         */
        Child.pthread.start();
    }

    interface Parent{
        Thread pthread = new Thread(){
            {
                System.out.println("Parent interface init");
            }
        };
    }

    interface Child extends Parent{
        Thread cthread = new Thread(){
            {
                System.out.println("Child interface init");
            }
        };

    }
}
