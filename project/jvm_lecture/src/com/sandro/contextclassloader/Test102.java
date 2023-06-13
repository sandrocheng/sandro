package com.sandro.contextclassloader;

/**
 * 线程上下文类加载器的一般使用模式（获取->使用->还原）
 * 当高层提供了统一的接口让底层区实现，同时又要在高层加载(实例化)底层的类时，就必须要通过上下文类加载器来帮助高层的ClassLoader找到并加载该类
 */
public class Test102 {
    public static void main(String[] args) throws InterruptedException {

        Thread thread  = new Thread(new Test102Obj());
        thread.join();
        thread.start();
    }

    private static class Test102Obj implements Runnable{

        @Override
        public void run() {
            ClassLoader loader = Thread.currentThread().getContextClassLoader();
            /**
             * 子线程的上下文类加载器就是应用类加载器，它是从父线程继承过来的
             * 源码位值在Launcher中维护了一个系统类加载器成员变量loader
             *      在Launcher构造中 设置了线程上下文类加载器
             *          Thread.currentThread().setContextClassLoader(loader);
             */
            System.out.println("class : " + loader.getClass());
            System.out.println("parent : " + loader.getParent().getClass());


        }
    }

}

