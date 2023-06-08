package com.sandro.classloader;

/**
 * 证明在初始化一个类时，并不会先初始化它所实现的接口
 * 通过 TraceClassLoading可以看到接口会被加载
 */
public class Test9 {

    public static void main(String[] args){
        /**
         * 此时Parent接口中的thread实例代码块没有执行
         * 说明Parent接口没有初始化，从而证明在 初始化一个类时，并不会先初始化它所实现的接口
         */
        System.out.println(Child.b);

    }

    interface Parent{
        public static Thread thread = new Thread(){
            {
                //实例代码块
                //类中的空代码块是每个实例创建的时候都会执行的,并且是比构造函数还要早的执行
                System.out.println("parent invoked");
            }

            public void run(){

            }
        };
    }

    static class Child implements Parent{
        public static int b = 5;
    }
}
