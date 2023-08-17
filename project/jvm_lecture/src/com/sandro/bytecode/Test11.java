package com.sandro.bytecode;

import com.sandro.bytecode.dynamicproxy.DynamicSubject;
import com.sandro.bytecode.dynamicproxy.RealSubject;
import com.sandro.bytecode.dynamicproxy.Subject;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

public class Test11 {
    public static void main(String[] args) {
        //设置这个属性在运行期间返回的动态类文件保存到本地
        System.getProperties().put("sun.misc.ProxyGenerator.saveGeneratedFiles","true");

        RealSubject rs = new RealSubject();
        InvocationHandler ds = new DynamicSubject(rs);
        Class<?> cls = rs.getClass();

        Subject subject = (Subject) Proxy.newProxyInstance(cls.getClassLoader(),cls.getInterfaces(),ds);
        subject.request();
        System.out.println(subject.getClass());//实际上生成的类是 class com.sun.proxy.$Proxy0 ，这个类是运行期间动态生成出来的
        System.out.println(subject.getClass().getSuperclass());//他的父类是 class java.lang.reflect.Proxy
    }
}
