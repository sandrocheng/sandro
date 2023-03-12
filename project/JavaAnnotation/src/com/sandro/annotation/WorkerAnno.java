package com.sandro.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(value={ElementType.TYPE,ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface WorkerAnno {
    String name();

    int age();

    Level Level();

    String[] ability();

    ContactInfo contact_info();

    //如果没有赋值，则使用默认数据
    double salary() default 100d;

}
