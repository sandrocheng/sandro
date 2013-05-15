package com.avast.android.generic.f.a;

class c
  implements Runnable
{
  c(b paramb)
  {
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: getfield 12	com/avast/android/generic/f/a/c:a	Lcom/avast/android/generic/f/a/b;
    //   6: invokestatic 26	com/avast/android/generic/f/a/b:c	(Lcom/avast/android/generic/f/a/b;)Z
    //   9: ifne +251 -> 260
    //   12: iload_1
    //   13: ifeq +247 -> 260
    //   16: ldc 28
    //   18: aload_0
    //   19: getfield 12	com/avast/android/generic/f/a/c:a	Lcom/avast/android/generic/f/a/b;
    //   22: invokestatic 31	com/avast/android/generic/f/a/b:a	(Lcom/avast/android/generic/f/a/b;)Lcom/avast/android/generic/service/AvastService;
    //   25: ldc 33
    //   27: invokestatic 38	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   30: aload_0
    //   31: getfield 12	com/avast/android/generic/f/a/c:a	Lcom/avast/android/generic/f/a/b;
    //   34: invokestatic 42	com/avast/android/generic/f/a/b:d	(Lcom/avast/android/generic/f/a/b;)Ljava/util/LinkedList;
    //   37: astore 7
    //   39: aload 7
    //   41: monitorenter
    //   42: new 44	java/util/Date
    //   45: dup
    //   46: invokespecial 45	java/util/Date:<init>	()V
    //   49: invokevirtual 49	java/util/Date:getTime	()J
    //   52: lstore 9
    //   54: aload_0
    //   55: getfield 12	com/avast/android/generic/f/a/c:a	Lcom/avast/android/generic/f/a/b;
    //   58: invokestatic 42	com/avast/android/generic/f/a/b:d	(Lcom/avast/android/generic/f/a/b;)Ljava/util/LinkedList;
    //   61: invokevirtual 55	java/util/LinkedList:size	()I
    //   64: ifle +255 -> 319
    //   67: aload_0
    //   68: getfield 12	com/avast/android/generic/f/a/c:a	Lcom/avast/android/generic/f/a/b;
    //   71: invokestatic 42	com/avast/android/generic/f/a/b:d	(Lcom/avast/android/generic/f/a/b;)Ljava/util/LinkedList;
    //   74: invokevirtual 59	java/util/LinkedList:peek	()Ljava/lang/Object;
    //   77: checkcast 61	com/avast/android/generic/f/a/e
    //   80: getfield 65	com/avast/android/generic/f/a/e:f	J
    //   83: lstore 19
    //   85: lload 19
    //   87: lconst_0
    //   88: lcmp
    //   89: ifle +230 -> 319
    //   92: lload 19
    //   94: lload 9
    //   96: lcmp
    //   97: ifle +222 -> 319
    //   100: lload 19
    //   102: lload 9
    //   104: lsub
    //   105: lstore 11
    //   107: aload 7
    //   109: monitorexit
    //   110: lload 11
    //   112: lconst_0
    //   113: lcmp
    //   114: ifle +45 -> 159
    //   117: ldc 28
    //   119: aload_0
    //   120: getfield 12	com/avast/android/generic/f/a/c:a	Lcom/avast/android/generic/f/a/b;
    //   123: invokestatic 31	com/avast/android/generic/f/a/b:a	(Lcom/avast/android/generic/f/a/b;)Lcom/avast/android/generic/service/AvastService;
    //   126: new 67	java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial 68	java/lang/StringBuilder:<init>	()V
    //   133: ldc 70
    //   135: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: lload 11
    //   140: invokevirtual 77	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   143: ldc 79
    //   145: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   151: invokestatic 38	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   154: lload 11
    //   156: invokestatic 89	java/lang/Thread:sleep	(J)V
    //   159: aload_0
    //   160: getfield 12	com/avast/android/generic/f/a/c:a	Lcom/avast/android/generic/f/a/b;
    //   163: invokestatic 92	com/avast/android/generic/f/a/b:e	(Lcom/avast/android/generic/f/a/b;)V
    //   166: aload_0
    //   167: getfield 12	com/avast/android/generic/f/a/c:a	Lcom/avast/android/generic/f/a/b;
    //   170: invokestatic 42	com/avast/android/generic/f/a/b:d	(Lcom/avast/android/generic/f/a/b;)Ljava/util/LinkedList;
    //   173: astore 14
    //   175: aload 14
    //   177: monitorenter
    //   178: aload_0
    //   179: getfield 12	com/avast/android/generic/f/a/c:a	Lcom/avast/android/generic/f/a/b;
    //   182: invokestatic 42	com/avast/android/generic/f/a/b:d	(Lcom/avast/android/generic/f/a/b;)Ljava/util/LinkedList;
    //   185: invokevirtual 55	java/util/LinkedList:size	()I
    //   188: istore 16
    //   190: iload 16
    //   192: ifle +121 -> 313
    //   195: iconst_1
    //   196: istore 5
    //   198: aload 14
    //   200: monitorexit
    //   201: ldc 28
    //   203: aload_0
    //   204: getfield 12	com/avast/android/generic/f/a/c:a	Lcom/avast/android/generic/f/a/b;
    //   207: invokestatic 31	com/avast/android/generic/f/a/b:a	(Lcom/avast/android/generic/f/a/b;)Lcom/avast/android/generic/service/AvastService;
    //   210: ldc 94
    //   212: invokestatic 38	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   215: iload 5
    //   217: istore_1
    //   218: goto -216 -> 2
    //   221: astore 8
    //   223: aload 7
    //   225: monitorexit
    //   226: aload 8
    //   228: athrow
    //   229: astore 4
    //   231: iload_1
    //   232: istore 5
    //   234: aload 4
    //   236: astore 6
    //   238: ldc 28
    //   240: ldc 96
    //   242: aload 6
    //   244: invokestatic 99	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   247: goto -46 -> 201
    //   250: astore 15
    //   252: iconst_0
    //   253: istore_1
    //   254: aload 14
    //   256: monitorexit
    //   257: aload 15
    //   259: athrow
    //   260: aload_0
    //   261: getfield 12	com/avast/android/generic/f/a/c:a	Lcom/avast/android/generic/f/a/b;
    //   264: iconst_0
    //   265: invokestatic 102	com/avast/android/generic/f/a/b:a	(Lcom/avast/android/generic/f/a/b;Z)Z
    //   268: pop
    //   269: aload_0
    //   270: getfield 12	com/avast/android/generic/f/a/c:a	Lcom/avast/android/generic/f/a/b;
    //   273: aconst_null
    //   274: invokestatic 105	com/avast/android/generic/f/a/b:a	(Lcom/avast/android/generic/f/a/b;Ljava/lang/Thread;)Ljava/lang/Thread;
    //   277: pop
    //   278: return
    //   279: astore 13
    //   281: aload 13
    //   283: astore 6
    //   285: iconst_0
    //   286: istore 5
    //   288: goto -50 -> 238
    //   291: astore 17
    //   293: iload 5
    //   295: istore_1
    //   296: aload 17
    //   298: astore 15
    //   300: goto -46 -> 254
    //   303: astore 15
    //   305: goto -51 -> 254
    //   308: astore 18
    //   310: goto -151 -> 159
    //   313: iconst_0
    //   314: istore 5
    //   316: goto -118 -> 198
    //   319: lconst_0
    //   320: lstore 11
    //   322: goto -215 -> 107
    //
    // Exception table:
    //   from	to	target	type
    //   42	110	221	finally
    //   223	226	221	finally
    //   30	42	229	java/lang/Exception
    //   117	159	229	java/lang/Exception
    //   159	166	229	java/lang/Exception
    //   226	229	229	java/lang/Exception
    //   257	260	229	java/lang/Exception
    //   178	190	250	finally
    //   166	178	279	java/lang/Exception
    //   198	201	291	finally
    //   254	257	303	finally
    //   117	159	308	java/lang/InterruptedException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.f.a.c
 * JD-Core Version:    0.6.2
 */