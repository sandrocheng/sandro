package com.sandro.bytecode;


import java.util.Date;

class Animal{
    public void test(String str){
        System.out.println("Animal str");
    }

    public void test(Date date){
        System.out.println("Animal date");
    }
}

class Dog extends Animal{
    public void test(String str){
        System.out.println("Dog str");
    }

    public void test(Date date){
        System.out.println("Dog date");
    }
}

public class Test9 {
    public static void main(String[] args) {
        Animal animal = new Animal();
        Animal dog = new Dog();

        animal.test("hello");
        dog.test(new Date());
    }
}
