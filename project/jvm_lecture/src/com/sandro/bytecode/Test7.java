package com.sandro.bytecode;

public class Test7 {
    public void test(Grandpa  g){
        System.out.println("grandpa");
    }

    public void test(Father f){
        System.out.println("father");
    }

    public void test(Son s){
        System.out.println("son");
    }

    public static void main(String[] args) {
        Grandpa g1 = new Father();
        Grandpa g2 = new Son();
        Test7 test7 = new Test7();

        //尽管g1和g2都是子类实例，但是在调用的时候，还是调用的父类参数的接口 test(Grandpa  g)
        //原因分析:

        test7.test(g1);
        test7.test(g2);
    }
}

class Grandpa{

}

class Father extends Grandpa{

}

class Son extends Father{

}