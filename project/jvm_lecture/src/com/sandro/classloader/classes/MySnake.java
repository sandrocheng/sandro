package com.sandro.classloader.classes;

public class MySnake {

    public MySnake() throws ClassNotFoundException {
        System.out.println("MySnake is loaded by : " + this.getClass().getClassLoader());
        this.getClass().getClassLoader().loadClass("com.sandro.classloader.classes.Sample2");
    }
}

