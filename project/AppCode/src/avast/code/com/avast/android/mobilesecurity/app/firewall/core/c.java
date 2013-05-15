package com.avast.android.mobilesecurity.app.firewall.core;

import java.io.File;

final class c extends Thread
{
  public int a = -1;
  private final File b;
  private final String c;
  private final StringBuilder d;
  private final boolean e;
  private Process f;

  public c(File paramFile, String paramString, StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    this.b = paramFile;
    this.c = paramString;
    this.d = paramStringBuilder;
    this.e = paramBoolean;
  }

  // ERROR //
  public void destroy()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 36	com/avast/android/mobilesecurity/app/firewall/core/c:f	Ljava/lang/Process;
    //   6: ifnull +10 -> 16
    //   9: aload_0
    //   10: getfield 36	com/avast/android/mobilesecurity/app/firewall/core/c:f	Ljava/lang/Process;
    //   13: invokevirtual 40	java/lang/Process:destroy	()V
    //   16: aload_0
    //   17: aconst_null
    //   18: putfield 36	com/avast/android/mobilesecurity/app/firewall/core/c:f	Ljava/lang/Process;
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    //   24: astore_2
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_2
    //   28: athrow
    //   29: astore_1
    //   30: goto -14 -> 16
    //
    // Exception table:
    //   from	to	target	type
    //   2	16	24	finally
    //   16	21	24	finally
    //   2	16	29	java/lang/Exception
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: ldc 47
    //   4: invokestatic 52	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   7: pop
    //   8: aload_0
    //   9: getfield 25	com/avast/android/mobilesecurity/app/firewall/core/c:b	Ljava/io/File;
    //   12: invokevirtual 58	java/io/File:createNewFile	()Z
    //   15: pop
    //   16: aload_0
    //   17: getfield 25	com/avast/android/mobilesecurity/app/firewall/core/c:b	Ljava/io/File;
    //   20: invokevirtual 62	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   23: astore 11
    //   25: new 64	java/io/OutputStreamWriter
    //   28: dup
    //   29: new 66	java/io/FileOutputStream
    //   32: dup
    //   33: aload_0
    //   34: getfield 25	com/avast/android/mobilesecurity/app/firewall/core/c:b	Ljava/io/File;
    //   37: invokespecial 69	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   40: invokespecial 72	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   43: astore 12
    //   45: new 54	java/io/File
    //   48: dup
    //   49: ldc 74
    //   51: invokespecial 77	java/io/File:<init>	(Ljava/lang/String;)V
    //   54: invokevirtual 80	java/io/File:exists	()Z
    //   57: ifeq +10 -> 67
    //   60: aload 12
    //   62: ldc 82
    //   64: invokevirtual 85	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   67: aload 12
    //   69: aload_0
    //   70: getfield 27	com/avast/android/mobilesecurity/app/firewall/core/c:c	Ljava/lang/String;
    //   73: invokevirtual 85	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   76: aload_0
    //   77: getfield 27	com/avast/android/mobilesecurity/app/firewall/core/c:c	Ljava/lang/String;
    //   80: ldc 87
    //   82: invokevirtual 93	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   85: ifne +10 -> 95
    //   88: aload 12
    //   90: ldc 87
    //   92: invokevirtual 85	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   95: aload 12
    //   97: ldc 95
    //   99: invokevirtual 85	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   102: aload 12
    //   104: invokevirtual 98	java/io/OutputStreamWriter:flush	()V
    //   107: iconst_1
    //   108: anewarray 100	java/io/Closeable
    //   111: dup
    //   112: iconst_0
    //   113: aload 12
    //   115: aastore
    //   116: invokestatic 105	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   119: invokestatic 111	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   122: new 113	java/lang/StringBuilder
    //   125: dup
    //   126: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   129: ldc 116
    //   131: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: aload 11
    //   136: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   142: invokevirtual 127	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   145: invokevirtual 131	java/lang/Process:waitFor	()I
    //   148: pop
    //   149: aload_0
    //   150: getfield 31	com/avast/android/mobilesecurity/app/firewall/core/c:e	Z
    //   153: ifeq +147 -> 300
    //   156: aload_0
    //   157: invokestatic 111	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   160: new 113	java/lang/StringBuilder
    //   163: dup
    //   164: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   167: ldc 133
    //   169: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: aload 11
    //   174: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   180: invokevirtual 127	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   183: putfield 36	com/avast/android/mobilesecurity/app/firewall/core/c:f	Ljava/lang/Process;
    //   186: aload_0
    //   187: getfield 36	com/avast/android/mobilesecurity/app/firewall/core/c:f	Ljava/lang/Process;
    //   190: invokevirtual 137	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   193: astore 17
    //   195: aload 17
    //   197: astore 16
    //   199: aload_0
    //   200: getfield 36	com/avast/android/mobilesecurity/app/firewall/core/c:f	Ljava/lang/Process;
    //   203: invokevirtual 140	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   206: astore_1
    //   207: sipush 8192
    //   210: newarray byte
    //   212: astore 18
    //   214: aload_0
    //   215: getfield 36	com/avast/android/mobilesecurity/app/firewall/core/c:f	Ljava/lang/Process;
    //   218: astore 19
    //   220: aload 19
    //   222: ifnonnull +160 -> 382
    //   225: iconst_2
    //   226: anewarray 100	java/io/Closeable
    //   229: dup
    //   230: iconst_0
    //   231: aload 16
    //   233: aastore
    //   234: dup
    //   235: iconst_1
    //   236: aload_1
    //   237: aastore
    //   238: invokestatic 105	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   241: aload_0
    //   242: invokevirtual 141	com/avast/android/mobilesecurity/app/firewall/core/c:destroy	()V
    //   245: return
    //   246: astore 13
    //   248: aconst_null
    //   249: astore 12
    //   251: iconst_1
    //   252: anewarray 100	java/io/Closeable
    //   255: dup
    //   256: iconst_0
    //   257: aload 12
    //   259: aastore
    //   260: invokestatic 105	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   263: aload 13
    //   265: athrow
    //   266: astore 6
    //   268: ldc 143
    //   270: aload 6
    //   272: invokestatic 146	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   275: pop
    //   276: aload_0
    //   277: getfield 29	com/avast/android/mobilesecurity/app/firewall/core/c:d	Ljava/lang/StringBuilder;
    //   280: ifnull +13 -> 293
    //   283: aload_0
    //   284: getfield 29	com/avast/android/mobilesecurity/app/firewall/core/c:d	Ljava/lang/StringBuilder;
    //   287: ldc 148
    //   289: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: pop
    //   293: aload_0
    //   294: invokevirtual 141	com/avast/android/mobilesecurity/app/firewall/core/c:destroy	()V
    //   297: goto -52 -> 245
    //   300: aload_0
    //   301: invokestatic 111	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   304: new 113	java/lang/StringBuilder
    //   307: dup
    //   308: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   311: ldc 150
    //   313: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: aload 11
    //   318: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   321: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   324: invokevirtual 127	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   327: putfield 36	com/avast/android/mobilesecurity/app/firewall/core/c:f	Ljava/lang/Process;
    //   330: goto -144 -> 186
    //   333: astore_3
    //   334: ldc 152
    //   336: aload_3
    //   337: invokestatic 146	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   340: pop
    //   341: aload_0
    //   342: getfield 29	com/avast/android/mobilesecurity/app/firewall/core/c:d	Ljava/lang/StringBuilder;
    //   345: ifnull +30 -> 375
    //   348: aload_0
    //   349: getfield 29	com/avast/android/mobilesecurity/app/firewall/core/c:d	Ljava/lang/StringBuilder;
    //   352: new 113	java/lang/StringBuilder
    //   355: dup
    //   356: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   359: ldc 87
    //   361: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   364: aload_3
    //   365: invokevirtual 155	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   368: invokevirtual 123	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   371: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   374: pop
    //   375: aload_0
    //   376: invokevirtual 141	com/avast/android/mobilesecurity/app/firewall/core/c:destroy	()V
    //   379: goto -134 -> 245
    //   382: aload_0
    //   383: aload 19
    //   385: invokevirtual 158	java/lang/Process:exitValue	()I
    //   388: putfield 23	com/avast/android/mobilesecurity/app/firewall/core/c:a	I
    //   391: aload 16
    //   393: invokevirtual 163	java/io/InputStream:available	()I
    //   396: ifle +42 -> 438
    //   399: aload 16
    //   401: aload 18
    //   403: invokevirtual 167	java/io/InputStream:read	([B)I
    //   406: istore 23
    //   408: aload_0
    //   409: getfield 29	com/avast/android/mobilesecurity/app/firewall/core/c:d	Ljava/lang/StringBuilder;
    //   412: ifnull +136 -> 548
    //   415: aload_0
    //   416: getfield 29	com/avast/android/mobilesecurity/app/firewall/core/c:d	Ljava/lang/StringBuilder;
    //   419: new 89	java/lang/String
    //   422: dup
    //   423: aload 18
    //   425: iconst_0
    //   426: iload 23
    //   428: invokespecial 170	java/lang/String:<init>	([BII)V
    //   431: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   434: pop
    //   435: goto +113 -> 548
    //   438: aload_1
    //   439: invokevirtual 163	java/io/InputStream:available	()I
    //   442: ifle +41 -> 483
    //   445: aload_1
    //   446: aload 18
    //   448: invokevirtual 167	java/io/InputStream:read	([B)I
    //   451: istore 21
    //   453: aload_0
    //   454: getfield 29	com/avast/android/mobilesecurity/app/firewall/core/c:d	Ljava/lang/StringBuilder;
    //   457: ifnull +99 -> 556
    //   460: aload_0
    //   461: getfield 29	com/avast/android/mobilesecurity/app/firewall/core/c:d	Ljava/lang/StringBuilder;
    //   464: new 89	java/lang/String
    //   467: dup
    //   468: aload 18
    //   470: iconst_0
    //   471: iload 21
    //   473: invokespecial 170	java/lang/String:<init>	([BII)V
    //   476: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   479: pop
    //   480: goto +76 -> 556
    //   483: aload_0
    //   484: getfield 23	com/avast/android/mobilesecurity/app/firewall/core/c:a	I
    //   487: iconst_m1
    //   488: if_icmpne -263 -> 225
    //   491: ldc2_w 171
    //   494: invokestatic 176	java/lang/Thread:sleep	(J)V
    //   497: goto -283 -> 214
    //   500: astore 15
    //   502: iconst_2
    //   503: anewarray 100	java/io/Closeable
    //   506: dup
    //   507: iconst_0
    //   508: aload 16
    //   510: aastore
    //   511: dup
    //   512: iconst_1
    //   513: aload_1
    //   514: aastore
    //   515: invokestatic 105	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   518: aload 15
    //   520: athrow
    //   521: astore_2
    //   522: aload_0
    //   523: invokevirtual 141	com/avast/android/mobilesecurity/app/firewall/core/c:destroy	()V
    //   526: aload_2
    //   527: athrow
    //   528: astore 15
    //   530: aconst_null
    //   531: astore 16
    //   533: aconst_null
    //   534: astore_1
    //   535: goto -33 -> 502
    //   538: astore 20
    //   540: goto -149 -> 391
    //   543: astore 13
    //   545: goto -294 -> 251
    //   548: iload 23
    //   550: ifgt -336 -> 214
    //   553: goto -115 -> 438
    //   556: iload 21
    //   558: ifgt -344 -> 214
    //   561: goto -78 -> 483
    //
    // Exception table:
    //   from	to	target	type
    //   25	45	246	finally
    //   2	25	266	java/lang/InterruptedException
    //   107	186	266	java/lang/InterruptedException
    //   225	241	266	java/lang/InterruptedException
    //   251	266	266	java/lang/InterruptedException
    //   300	330	266	java/lang/InterruptedException
    //   502	521	266	java/lang/InterruptedException
    //   2	25	333	java/lang/Exception
    //   107	186	333	java/lang/Exception
    //   225	241	333	java/lang/Exception
    //   251	266	333	java/lang/Exception
    //   300	330	333	java/lang/Exception
    //   502	521	333	java/lang/Exception
    //   199	220	500	finally
    //   382	391	500	finally
    //   391	497	500	finally
    //   2	25	521	finally
    //   107	186	521	finally
    //   225	241	521	finally
    //   251	266	521	finally
    //   268	293	521	finally
    //   300	330	521	finally
    //   334	375	521	finally
    //   502	521	521	finally
    //   186	195	528	finally
    //   382	391	538	java/lang/IllegalThreadStateException
    //   45	107	543	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.core.c
 * JD-Core Version:    0.6.2
 */