package com.sandro.annotation;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/**
 * @author sandro
 * @version 1.0
 * @since 1.5
 *  注解练习
 */
@WorkerAnno(name="bob",age=26,Level=Level.L1,ability={"electrical","computer"},
        contact_info = @ContactInfo({"136xxxxxxxx","041112341234"}))
public class Main {
    /**
     * java 入口函数
     * @param args ，参数，暂时没用
     */
    @WorkerAnno(name="tom",age=22,Level=Level.L2,ability={"electrical"},
            contact_info = @ContactInfo({"132xxxxxxxx","041133332222"}))
    private static Object worker = new Object();

    private static String name = "123";

    @WorkerAnno(name="tony",age=21,Level=Level.L2,ability={"electrical"},
            contact_info = @ContactInfo({"133xxxxxxxx","041133337777"}))
    private static Object worker2 = new Object();
    public static void main(String[] args) {
        getClassAnnoInfo();
        getWorkerInfo();
        getAllWorkAnnoObj();
    }

    private static void getAllWorkAnnoObj(){
        System.out.println("-----------getAllWorkAnnoObj-------------");
        Class clz = Main.class;
        Field[] fields = clz.getDeclaredFields();
        if(fields!=null){
            System.out.println("get " + fields.length + " fields");
            for(Field f : fields){
                System.out.println("---objname : " + f.getName());
                Annotation as[] = f.getAnnotations();
                if(as == null || as.length == 0) continue;
                for(Annotation a : as){
                    System.out.println("annotation name : " + a.annotationType());
                    if( a instanceof WorkerAnno){
                        System.out.println("get a WorkerAnno on obj " + f.getName());
                        //....后面就可以根据注释和对象建立二者的业务关系了
                    }
                }
            }
        }
    }

    /**
     * 获取属性上的注解信息
     */
    private static void getWorkerInfo(){
        System.out.println("-----------getWorkerInfo-------------");
        Class<Main> clz = Main.class;
        try {
            Field wrokerField = clz.getDeclaredField("worker");
            WorkerAnno worker = wrokerField.getAnnotation(WorkerAnno.class);
            System.out.println("worker name : " + worker.name());
            System.out.println("worker age : " + worker.age());
            System.out.println("worker lever : " + worker.Level());
            for(String ability : worker.ability()){
                System.out.println("worker ability : " + ability);
            }
            for(String info : worker.contact_info().value()){
                System.out.println("worker contack info : " + info);
            }
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    /**
     * 获取当前类上注解的内容
     */
    private static void getClassAnnoInfo() {
        System.out.println("-----------getClassAnnoInfo-------------");
        //1）获取该类(被注解修饰的类)的字节码对象
        Class<Main> clz = Main.class;
        //2) 获取上边的注解对象
        WorkerAnno leader = clz.getAnnotation(WorkerAnno.class);
        System.out.println("leader name : " + leader.name());
        System.out.println("leader age : " + leader.age());
        System.out.println("leader lever : " + leader.Level());
        for(String ability : leader.ability()){
            System.out.println("leader ability : " + ability);
        }
        for(String info : leader.contact_info().value()){
            System.out.println("leader contack info : " + info);
        }
    }


}