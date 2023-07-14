package com.sandro.bytecode;

/**
 * 在~javap com.sandro.bytecode.Test1 ,项目class根目录下使用javap 命令查看class源码文件
 *  javap com.sandro.bytecode.Test1
 * 输出如下：
 *  public class com.sandro.bytecode.Test1 {
 *   public com.sandro.bytecode.Test1();
 *   public void setA(int);
 *   public int getA();
 *   public static void main(java.lang.String[]);
 * }
 * 此时输出的是一个类的框架，但是没有私有变量，类的很多相关信息是没有的
 *
 * 使用 javap -c com.sandro.bytecode.Test1 查看更详细的类助记符信息
 * 信息如下：
 * public class com.sandro.bytecode.Test1 {
 *   public com.sandro.bytecode.Test1();//这个是默认的空构造函数
 *     Code:
 *        0: aload_0
 *        1: invokespecial #1                  // Method java/lang/Object."<init>":()V
 *        4: aload_0
 *        5: iconst_1
 *        6: putfield      #2                  // Field a:I
 *        9: return
 *
 *   public void setA(int);
 *     Code:
 *        0: aload_0
 *        1: iload_1
 *        2: putfield      #2                  // Field a:I
 *        5: return
 *
 *   public int getA();
 *     Code:
 *        0: aload_0
 *        1: getfield      #2                  // Field a:I
 *        4: ireturn
 *
 *   public static void main(java.lang.String[]);
 *     Code:
 *        0: getstatic     #3                  // Field java/lang/System.out:Ljava/io/PrintStream;
 *        3: new           #4                  // class java/lang/StringBuilder
 *        6: dup
 *        7: invokespecial #5                  // Method java/lang/StringBuilder."<init>":()V
 *       10: ldc           #6                  // class com/sandro/bytecode/Test1
 *       12: invokevirtual #7                  // Method java/lang/Class.getName:()Ljava/lang/String;
 *       15: invokevirtual #8                  // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
 *       18: ldc           #9                  // String  test
 *       20: invokevirtual #8                  // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
 *       23: invokevirtual #10                 // Method java/lang/StringBuilder.toString:()Ljava/lang/String;
 *       26: invokevirtual #11                 // Method java/io/PrintStream.println:(Ljava/lang/String;)V
 *       29: return
 * }
 *  使用javap -c依然无法看到全部的信息，使用javap -verbose com.sandro.bytecode.Test1
 *  可以看到全部的类助记符信息：
 *  Classfile /home/sandro/mywork/gitwork/sandro/project/jvm_lecture/out/production/jvm_lecture/com/sandro/bytecode/Test1.class
 *   Last modified 2023-7-14; size 958 bytes
 *   MD5 checksum 85a1b6305af6a901a78166f929daabbe
 *   Compiled from "Test1.java"
 * public class com.sandro.bytecode.Test1
 *   minor version: 0
 *   major version: 52
 *   flags: ACC_PUBLIC, ACC_SUPER
 * Constant pool://常量池，常量池在字节码中一般都占用大量的内容
 *    #1 = Methodref          #12.#32        // java/lang/Object."<init>":()V
 *    #2 = Fieldref           #6.#33         // com/sandro/bytecode/Test1.a:I
 *    #3 = Fieldref           #34.#35        // java/lang/System.out:Ljava/io/PrintStream;
 *    #4 = Class              #36            // java/lang/StringBuilder
 *    #5 = Methodref          #4.#32         // java/lang/StringBuilder."<init>":()V
 *    #6 = Class              #37            // com/sandro/bytecode/Test1
 *    #7 = Methodref          #38.#39        // java/lang/Class.getName:()Ljava/lang/String;
 *    #8 = Methodref          #4.#40         // java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
 *    #9 = String             #41            //  test
 *   #10 = Methodref          #4.#42         // java/lang/StringBuilder.toString:()Ljava/lang/String;
 *   #11 = Methodref          #43.#44        // java/io/PrintStream.println:(Ljava/lang/String;)V
 *   #12 = Class              #45            // java/lang/Object
 *   #13 = Utf8               a
 *   #14 = Utf8               I
 *   #15 = Utf8               <init>
 *   #16 = Utf8               ()V
 *   #17 = Utf8               Code
 *   #18 = Utf8               LineNumberTable
 *   #19 = Utf8               LocalVariableTable
 *   #20 = Utf8               this
 *   #21 = Utf8               Lcom/sandro/bytecode/Test1;
 *   #22 = Utf8               setA
 *   #23 = Utf8               (I)V
 *   #24 = Utf8               getA
 *   #25 = Utf8               ()I
 *   #26 = Utf8               main
 *   #27 = Utf8               ([Ljava/lang/String;)V
 *   #28 = Utf8               args
 *   #29 = Utf8               [Ljava/lang/String;
 *   #30 = Utf8               SourceFile
 *   #31 = Utf8               Test1.java
 *   #32 = NameAndType        #15:#16        // "<init>":()V
 *   #33 = NameAndType        #13:#14        // a:I
 *   #34 = Class              #46            // java/lang/System
 *   #35 = NameAndType        #47:#48        // out:Ljava/io/PrintStream;
 *   #36 = Utf8               java/lang/StringBuilder
 *   #37 = Utf8               com/sandro/bytecode/Test1
 *   #38 = Class              #49            // java/lang/Class
 *   #39 = NameAndType        #50:#51        // getName:()Ljava/lang/String;
 *   #40 = NameAndType        #52:#53        // append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
 *   #41 = Utf8                test
 *   #42 = NameAndType        #54:#51        // toString:()Ljava/lang/String;
 *   #43 = Class              #55            // java/io/PrintStream
 *   #44 = NameAndType        #56:#57        // println:(Ljava/lang/String;)V
 *   #45 = Utf8               java/lang/Object
 *   #46 = Utf8               java/lang/System
 *   #47 = Utf8               out
 *   #48 = Utf8               Ljava/io/PrintStream;
 *   #49 = Utf8               java/lang/Class
 *   #50 = Utf8               getName
 *   #51 = Utf8               ()Ljava/lang/String;
 *   #52 = Utf8               append
 *   #53 = Utf8               (Ljava/lang/String;)Ljava/lang/StringBuilder;
 *   #54 = Utf8               toString
 *   #55 = Utf8               java/io/PrintStream
 *   #56 = Utf8               println
 *   #57 = Utf8               (Ljava/lang/String;)V
 * {
 *   public com.sandro.bytecode.Test1();
 *     descriptor: ()V  //描述符
 *     flags: ACC_PUBLIC  //标记
 *     Code:  //助记符
 *       stack=2, locals=1, args_size=1
 *          0: aload_0
 *          1: invokespecial #1                  // Method java/lang/Object."<init>":()V
 *          4: aload_0
 *          5: iconst_1
 *          6: putfield      #2                  // Field a:I
 *          9: return
 *       LineNumberTable:
 *         line 3: 0
 *         line 4: 4
 *       LocalVariableTable:
 *         Start  Length  Slot  Name   Signature
 *             0      10     0  this   Lcom/sandro/bytecode/Test1;
 *
 *   public void setA(int);
 *     descriptor: (I)V
 *     flags: ACC_PUBLIC
 *     Code:
 *       stack=2, locals=2, args_size=2
 *          0: aload_0
 *          1: iload_1
 *          2: putfield      #2                  // Field a:I
 *          5: return
 *       LineNumberTable:
 *         line 7: 0
 *         line 8: 5
 *       LocalVariableTable:
 *         Start  Length  Slot  Name   Signature
 *             0       6     0  this   Lcom/sandro/bytecode/Test1;
 *             0       6     1     a   I
 *
 *   public int getA();
 *     descriptor: ()I
 *     flags: ACC_PUBLIC
 *     Code:
 *       stack=1, locals=1, args_size=1
 *          0: aload_0
 *          1: getfield      #2                  // Field a:I
 *          4: ireturn
 *       LineNumberTable://行号表
 *         line 11: 0
 *       LocalVariableTable://局部变量表
 *         Start  Length  Slot  Name   Signature
 *             0       5     0  this   Lcom/sandro/bytecode/Test1;
 *
 *   public static void main(java.lang.String[]);
 *     descriptor: ([Ljava/lang/String;)V
 *     flags: ACC_PUBLIC, ACC_STATIC
 *     Code:
 *       stack=3, locals=1, args_size=1
 *          0: getstatic     #3                  // Field java/lang/System.out:Ljava/io/PrintStream;
 *          3: new           #4                  // class java/lang/StringBuilder
 *          6: dup
 *          7: invokespecial #5                  // Method java/lang/StringBuilder."<init>":()V
 *         10: ldc           #6                  // class com/sandro/bytecode/Test1
 *         12: invokevirtual #7                  // Method java/lang/Class.getName:()Ljava/lang/String;
 *         15: invokevirtual #8                  // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
 *         18: ldc           #9                  // String  test
 *         20: invokevirtual #8                  // Method java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
 *         23: invokevirtual #10                 // Method java/lang/StringBuilder.toString:()Ljava/lang/String;
 *         26: invokevirtual #11                 // Method java/io/PrintStream.println:(Ljava/lang/String;)V
 *         29: return
 *       LineNumberTable:
 *         line 15: 0
 *         line 16: 29
 *       LocalVariableTable:
 *         Start  Length  Slot  Name   Signature
 *             0      30     0  args   [Ljava/lang/String;
 * }
 * SourceFile: "Test1.java"
 *
 * linux下使用 hexdump -C Test1.class 命令可以查看16进制的信息
 * [-C] 规范化"十六进制+ASCII"显示,显示结果如下：
 *                 00000000  ca fe ba be 00 00 00 34  00 3a 0a 00 0c 00 20 09  |.......4.:.... .|
 *                 00000010  00 06 00 21 09 00 22 00  23 07 00 24 0a 00 04 00  |...!..".#..$....|
 *                 00000020  20 07 00 25 0a 00 26 00  27 0a 00 04 00 28 08 00  | ..%..&.'....(..|
 *                 00000030  29 0a 00 04 00 2a 0a 00  2b 00 2c 07 00 2d 01 00  |)....*..+.,..-..|
 *                 00000040  01 61 01 00 01 49 01 00  06 3c 69 6e 69 74 3e 01  |.a...I...<init>.|
 *                 .....
 */
public class Test1 {
    private int a = 1;

    public void setA(int a) {
        this.a = a;
    }

    public int getA() {
        return a;
    }

    public static void main(String[] args) {
        System.out.println(Test1.class.getName() + " test");
    }
}
