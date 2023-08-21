package com.sandro.memory;

import net.sf.cglib.proxy.Enhancer;
import net.sf.cglib.proxy.MethodInterceptor;

/**
 * 方法区产生内存的错误
 */
public class Test4 {
    public static void main(String[] args) throws InterruptedException {
        //通过使用cglib无限动态创建Test4的子类
        for(;;){
            Enhancer enhancer = new Enhancer();
            enhancer.setSuperclass(Test4.class);
            enhancer.setUseCache(false);
            enhancer.setCallback((MethodInterceptor)(obj,method,args1,proxy)->proxy.invokeSuper(obj,args1));
            enhancer.create();
            Thread.sleep(100);
        }
    }
}
