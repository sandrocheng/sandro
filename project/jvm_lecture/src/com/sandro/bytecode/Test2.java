package com.sandro.bytecode;

public class Test2 {
    String str = "Welcome";

    private int xNum = 5;

    public static Integer inNum = 10;

    public static void main(String[] args) {
        Test2 test2 = new Test2();
        test2.setxNum(8);
        inNum=20;
    }

    public void setxNum(int x){
        this.xNum = x;
    }
}
