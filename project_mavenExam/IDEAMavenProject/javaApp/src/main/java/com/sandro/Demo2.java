package com.sandro;

public class Demo2 {
    public String say(String name){
        System.out.println("hello " + name);
        return "hello " + name;
    }

    public static void main(String[] args) {
        Demo2 demo = new Demo2();
        demo.say("maven");
    }
}
