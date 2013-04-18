package com.ijinshan.cleaner;

final class p extends Thread
{
  p(o paramo, float paramFloat)
  {
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/ijinshan/cleaner/p:b	Lcom/ijinshan/cleaner/o;
    //   4: invokestatic 29	com/ijinshan/cleaner/o:a	(Lcom/ijinshan/cleaner/o;)Ljava/util/List;
    //   7: invokeinterface 35 1 0
    //   12: istore_1
    //   13: invokestatic 40	android/os/Looper:prepare	()V
    //   16: new 42	com/ijinshan/cleaner/q
    //   19: dup
    //   20: aload_0
    //   21: invokespecial 45	com/ijinshan/cleaner/q:<init>	(Lcom/ijinshan/cleaner/p;)V
    //   24: astore_2
    //   25: aload_0
    //   26: getfield 12	com/ijinshan/cleaner/p:b	Lcom/ijinshan/cleaner/o;
    //   29: invokestatic 49	com/ijinshan/cleaner/o:c	(Lcom/ijinshan/cleaner/o;)Landroid/content/pm/PackageManager;
    //   32: invokevirtual 55	java/lang/Object:getClass	()Ljava/lang/Class;
    //   35: ldc 57
    //   37: iconst_2
    //   38: anewarray 59	java/lang/Class
    //   41: dup
    //   42: iconst_0
    //   43: ldc 61
    //   45: aastore
    //   46: dup
    //   47: iconst_1
    //   48: ldc 63
    //   50: aastore
    //   51: invokevirtual 67	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   54: astore 16
    //   56: aload 16
    //   58: astore 4
    //   60: iconst_0
    //   61: istore 5
    //   63: iload 5
    //   65: iload_1
    //   66: if_icmpge +166 -> 232
    //   69: aload_0
    //   70: getfield 12	com/ijinshan/cleaner/p:b	Lcom/ijinshan/cleaner/o;
    //   73: invokestatic 29	com/ijinshan/cleaner/o:a	(Lcom/ijinshan/cleaner/o;)Ljava/util/List;
    //   76: iload 5
    //   78: invokeinterface 71 2 0
    //   83: checkcast 73	android/content/pm/PackageInfo
    //   86: getfield 77	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   89: astore 6
    //   91: new 79	com/ijinshan/cleaner/a/a
    //   94: dup
    //   95: invokespecial 80	com/ijinshan/cleaner/a/a:<init>	()V
    //   98: astore 7
    //   100: aload 7
    //   102: aload 6
    //   104: getfield 86	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   107: invokevirtual 89	com/ijinshan/cleaner/a/a:a	(Ljava/lang/String;)V
    //   110: aload_0
    //   111: getfield 12	com/ijinshan/cleaner/p:b	Lcom/ijinshan/cleaner/o;
    //   114: astore 9
    //   116: iload 5
    //   118: iload_1
    //   119: iconst_1
    //   120: isub
    //   121: if_icmpne +105 -> 226
    //   124: iconst_1
    //   125: istore 10
    //   127: new 91	com/ijinshan/cleaner/t
    //   130: dup
    //   131: aload 9
    //   133: aload 7
    //   135: iload 10
    //   137: aload_0
    //   138: getfield 14	com/ijinshan/cleaner/p:a	F
    //   141: iload 5
    //   143: iconst_1
    //   144: iadd
    //   145: i2f
    //   146: fmul
    //   147: iload_1
    //   148: i2f
    //   149: fdiv
    //   150: aload_2
    //   151: invokespecial 94	com/ijinshan/cleaner/t:<init>	(Lcom/ijinshan/cleaner/o;Lcom/ijinshan/cleaner/a/a;ZFLandroid/os/Handler;)V
    //   154: astore 11
    //   156: aload_0
    //   157: getfield 12	com/ijinshan/cleaner/p:b	Lcom/ijinshan/cleaner/o;
    //   160: invokestatic 49	com/ijinshan/cleaner/o:c	(Lcom/ijinshan/cleaner/o;)Landroid/content/pm/PackageManager;
    //   163: astore 12
    //   165: iconst_2
    //   166: anewarray 51	java/lang/Object
    //   169: astore 13
    //   171: aload 13
    //   173: iconst_0
    //   174: aload 7
    //   176: invokevirtual 97	com/ijinshan/cleaner/a/a:b	()Ljava/lang/String;
    //   179: aastore
    //   180: aload 13
    //   182: iconst_1
    //   183: aload 11
    //   185: aastore
    //   186: aload 4
    //   188: aload 12
    //   190: aload 13
    //   192: invokevirtual 103	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   195: pop
    //   196: iinc 5 1
    //   199: goto -136 -> 63
    //   202: astore 15
    //   204: aload 15
    //   206: invokevirtual 106	java/lang/SecurityException:printStackTrace	()V
    //   209: aconst_null
    //   210: astore 4
    //   212: goto -152 -> 60
    //   215: astore_3
    //   216: aload_3
    //   217: invokevirtual 107	java/lang/NoSuchMethodException:printStackTrace	()V
    //   220: aconst_null
    //   221: astore 4
    //   223: goto -163 -> 60
    //   226: iconst_0
    //   227: istore 10
    //   229: goto -102 -> 127
    //   232: invokestatic 110	android/os/Looper:loop	()V
    //   235: return
    //   236: astore 8
    //   238: goto -42 -> 196
    //
    // Exception table:
    //   from	to	target	type
    //   25	56	202	java/lang/SecurityException
    //   25	56	215	java/lang/NoSuchMethodException
    //   110	196	236	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.p
 * JD-Core Version:    0.6.2
 */