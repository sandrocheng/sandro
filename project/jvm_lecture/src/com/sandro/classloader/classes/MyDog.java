package com.sandro.classloader.classes;

public class MyDog {
    public MyDog() {
        System.out.println("MyDog is loaded by : " + this.getClass().getClassLoader());
    }
}
