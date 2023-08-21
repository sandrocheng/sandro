package com.sandro.memory;

public class Test3 {

    public static void main(String[] args) {
        new Thread("thread_a"){
            public void run(){
                A.method();
            }
        }.start();

        new Thread("thread_b"){
            public void run(){
                B.method();
            }
        }.start();
    }

}

class A {
    public static synchronized void method(){
        System.out.println("method from A in " + Thread.currentThread().getName());

        try {
            Thread.sleep(5);
            B.method();
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}

class B{
    public static synchronized void method(){
        System.out.println("method from B in " + Thread.currentThread().getName());
        try {
            Thread.sleep(5);
            A.method();
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}