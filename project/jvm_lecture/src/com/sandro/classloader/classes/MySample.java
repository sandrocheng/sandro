package com.sandro.classloader.classes;

public class MySample {
    public MySample(){
        System.out.println("MySample is loaded by : " + this.getClass().getClassLoader());
        new MyCat();
    }
}
