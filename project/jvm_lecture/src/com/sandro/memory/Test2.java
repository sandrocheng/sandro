package com.sandro.memory;

public class Test2 {

    private int length;

    public int getLength(){
        return length;
    }

    public void test() throws InterruptedException {
        this.length++;
        Thread.sleep(300);
        this.test();
    }

    public static void main(String[] args) {
        Test2 test2 = new Test2();
        try{
            test2.test();
        }catch (Error | InterruptedException ex){//java.lang.StackOverflowError
            System.out.println("test length : " + test2.getLength());
            ex.printStackTrace();
        }
    }
}
