package com.sandro.bytecode;

public class Test3 {

    private Object lockObj = new Object();

    private void setData(){}

    private synchronized void setData2(){}

    private void test(){
        synchronized (lockObj){
            System.out.println(lockObj.hashCode());
        }
    }

    private synchronized static void test2(){}

}
