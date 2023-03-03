package com.sandro.reflection;

import java.lang.reflect.*;

public class Main {
    public static void main(String[] args) {
        Class clz = getClassInstance();
        Object clzObj = getClassConstructor(clz);
        classField(clzObj);
        execMethod(clzObj);
    }

    private static void execMethod(Object clzObj){
        System.out.println("\n------[execMethod]-----");
        Class clz = clzObj.getClass();

        Method[] methods = clz.getMethods();//返回当前类和父类的所有公共方法
        System.out.println("getMethods : ");
        for(Method m:methods){
            System.out.println("    " + m);
        }

        methods = clz.getDeclaredMethods();//返回当前类的所有方法,不能获取父类的方法，但是能获取当前类的私有方法
        System.out.println("getDeclaredMethods : ");
        for(Method m:methods){
            System.out.println("    " + m);
        }

        try {
            Method m = clz.getMethod("run",int.class);
            System.out.println("getMethod for run : " + m
                    + " , modifier: " + m.getModifiers()
                    + " , name : " + m.getName());

            m = clz.getDeclaredMethod("setScore",double.class);
            System.out.println("getDeclaredMethod for setScore : " + m
                    + " , modifier: " + m.getModifiers()
                    + " , name : " + m.getName());
            Parameter[] parameters = m.getParameters();
            System.out.println("getDeclaredMethod for setScore parameters : ");
            for(Parameter p:parameters){
                System.out.println("   " + p);
            }
            System.out.println("getDeclaredMethod for setScore exceptions : ");
            Class[] exceptions = m.getExceptionTypes();
            for (Class exception : exceptions) {
                System.out.println("    " + exception);
            }

            m.setAccessible(true);
            Object o = m.invoke(clzObj,9.9d);
            System.out.println("method invoke success ,return : " + o);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch(Exception e){
            e.printStackTrace();
        }

    }

    private static void classField(Object clzObj){
        System.out.println("\n------[classField]-----");
        Class clz = clzObj.getClass();
        Field[] fields = clz.getFields();
        System.out.println(clz + " all public fields : ");
        for(Field f : fields){
            System.out.println("    " + f);
        }

        fields = clz.getDeclaredFields();
        System.out.println(clz + " all declared fields : ");
        for(Field f : fields){
            System.out.println("    " + f);
        }

        try {
            Field field = clz.getField("age");
            System.out.println("age(pubic) field : " + field
                    +  " ,modifiers : " + field.getModifiers() //获取成员变量的权限 public/private/protected
                    + " ,name " + field.getName() //成员变量的名字
                    + " ,type:" + field.getType() //成员变量的类型
                    + " ,value : " + field.get(clzObj)//获取成员变量的值
                    );

            field = clz.getDeclaredField("isMale");
            field.setAccessible(true);//因为是私有变量，取值前需要设置一下不检查权限
            System.out.println("isMale(private) field : " + field
                    +  " ,modifiers : " + field.getModifiers() //获取成员变量的权限 public/private/protected
                    + " ,name " + field.getName() //成员变量的名字
                    + " ,type:" + field.getType() //成员变量的类型
                    + " ,value : " + field.get(clzObj)//获取成员变量的值
            );
            field.set(clzObj,false);
            Student s = (Student) clzObj;
            System.out.println("clzObj`s isMale modify to : " + s.isMale());
        } catch (NoSuchFieldException e) {
            throw new RuntimeException(e);
        }
        catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }

    private static Object getClassConstructor(Class clz){
        System.out.println("\n------[getClassConstructor]-----");
        Constructor[] cons = clz.getConstructors();
        System.out.println("getConstructors[" + cons.length +  "] result : ");
        for(Constructor con : cons){
            System.out.println("     " + con);
        }

        cons = clz.getDeclaredConstructors();
        System.out.println("getDeclaredConstructors[" + cons.length +  "] result : ");
        for(Constructor con : cons){
            System.out.println("     " + con);
        }

        try {
            Constructor con = clz.getDeclaredConstructor(String.class);//获取非公共构造
            System.out.println("clz.getDeclaredConstructor(String.class) : " + con + " , modifier is " + con.getModifiers());

            con = clz.getConstructor();//获取公共空参构造
            System.out.println("clz.getConstructor() : " + con+ " , modifier is " + con.getModifiers());

            con = clz.getConstructor(boolean.class,String.class);//获取booean,String参数的公共构造
            System.out.println("clz.getConstructor(Boolean.class,String.class) : " + con
                    + " , modifier is " + con.getModifiers());

            con = clz.getDeclaredConstructor(boolean.class);//获取非公共构造
            System.out.println("clz.getDeclaredConstructor(boolean.class) : " + con
                    + " , modifier is " + con.getModifiers());

            //暴力反射
            //因为使用的是private构造函数，所以要通过setAccessible来临时取消权限校验，否则会抛出modifier错误异常
            con.setAccessible(true);
            Object o = con.newInstance(true);
            return o;

        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
        return null;
    }

    private static Class getClassInstance() {
        System.out.println("------[getClassInstance]-----");
        Class clz;
        try {
            clz = Class.forName("com.sandro.reflection.Student");
            System.out.println("Class.forName is : " + clz);

        } catch (ClassNotFoundException e) {
        }

        clz = Student.class;
        System.out.println("Student.class is " + clz);

        Student stu = new Student(true,"bob");
        clz = stu.getClass();
        System.out.println("stu.getClass is " + clz);
        return clz;
    }

}