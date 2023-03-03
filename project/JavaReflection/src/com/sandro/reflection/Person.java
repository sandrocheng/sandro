package com.sandro.reflection;

public abstract class Person {
    private String name;

    public abstract boolean isMale();

    public void eat(){
        if(isMale()){
            System.out.println(name + " is a boy, eat more");
        }else{
            System.out.println(name + " is a girl, eat less");
        }
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
