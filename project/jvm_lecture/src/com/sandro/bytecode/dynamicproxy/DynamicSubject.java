package com.sandro.bytecode.dynamicproxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class DynamicSubject implements InvocationHandler {
    private Object sub;

    public DynamicSubject(Object obj){
        this.sub = obj;
    }

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        System.out.println("before calling : " + method);
        method.invoke(this.sub,args);
        System.out.println("after calling : " + method);
        return null;
    }
}
