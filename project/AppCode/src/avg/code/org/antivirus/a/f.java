package org.antivirus.a;

import java.security.cert.Certificate;

public final class f
{
  public Certificate[] a = null;

  // ERROR //
  private static Certificate[] a(java.util.jar.JarFile paramJarFile, java.util.jar.JarEntry paramJarEntry, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 23	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   5: astore 12
    //   7: aload 12
    //   9: astore 4
    //   11: aload 4
    //   13: aload_2
    //   14: iconst_0
    //   15: aload_2
    //   16: arraylength
    //   17: invokevirtual 29	java/io/InputStream:read	([BII)I
    //   20: iconst_m1
    //   21: if_icmpne -10 -> 11
    //   24: aload 4
    //   26: invokevirtual 32	java/io/InputStream:close	()V
    //   29: aconst_null
    //   30: astore 8
    //   32: aload_1
    //   33: ifnull +13 -> 46
    //   36: aload_1
    //   37: invokevirtual 38	java/util/jar/JarEntry:getCertificates	()[Ljava/security/cert/Certificate;
    //   40: astore 15
    //   42: aload 15
    //   44: astore 8
    //   46: aload 8
    //   48: areturn
    //   49: astore 10
    //   51: aconst_null
    //   52: astore 4
    //   54: aconst_null
    //   55: astore 8
    //   57: aload 4
    //   59: ifnull -13 -> 46
    //   62: aload 4
    //   64: invokevirtual 32	java/io/InputStream:close	()V
    //   67: aconst_null
    //   68: astore 8
    //   70: goto -24 -> 46
    //   73: astore 11
    //   75: aconst_null
    //   76: astore 8
    //   78: goto -32 -> 46
    //   81: astore 7
    //   83: aconst_null
    //   84: astore 4
    //   86: aconst_null
    //   87: astore 8
    //   89: aload 4
    //   91: ifnull -45 -> 46
    //   94: aload 4
    //   96: invokevirtual 32	java/io/InputStream:close	()V
    //   99: aconst_null
    //   100: astore 8
    //   102: goto -56 -> 46
    //   105: astore 9
    //   107: aconst_null
    //   108: astore 8
    //   110: goto -64 -> 46
    //   113: astore_3
    //   114: aconst_null
    //   115: astore 4
    //   117: aload_3
    //   118: astore 5
    //   120: aload 4
    //   122: ifnull +8 -> 130
    //   125: aload 4
    //   127: invokevirtual 32	java/io/InputStream:close	()V
    //   130: aload 5
    //   132: athrow
    //   133: astore 6
    //   135: goto -5 -> 130
    //   138: astore 5
    //   140: goto -20 -> 120
    //   143: astore 14
    //   145: goto -59 -> 86
    //   148: astore 13
    //   150: goto -96 -> 54
    //
    // Exception table:
    //   from	to	target	type
    //   0	7	49	java/io/IOException
    //   36	42	49	java/io/IOException
    //   62	67	73	java/lang/Exception
    //   0	7	81	java/lang/Exception
    //   36	42	81	java/lang/Exception
    //   94	99	105	java/lang/Exception
    //   0	7	113	finally
    //   36	42	113	finally
    //   125	130	133	java/lang/Exception
    //   11	29	138	finally
    //   11	29	143	java/lang/Exception
    //   11	29	148	java/io/IOException
  }

  // ERROR //
  public final boolean a(java.lang.String paramString)
  {
    // Byte code:
    //   0: sipush 8192
    //   3: newarray byte
    //   5: astore_2
    //   6: new 19	java/util/jar/JarFile
    //   9: dup
    //   10: aload_1
    //   11: invokespecial 44	java/util/jar/JarFile:<init>	(Ljava/lang/String;)V
    //   14: astore_3
    //   15: aload_3
    //   16: invokevirtual 48	java/util/jar/JarFile:entries	()Ljava/util/Enumeration;
    //   19: astore 12
    //   21: aload 12
    //   23: invokeinterface 54 1 0
    //   28: ifeq +274 -> 302
    //   31: aload 12
    //   33: invokeinterface 58 1 0
    //   38: checkcast 34	java/util/jar/JarEntry
    //   41: astore 14
    //   43: aload 14
    //   45: invokevirtual 61	java/util/jar/JarEntry:isDirectory	()Z
    //   48: ifne -27 -> 21
    //   51: aload 14
    //   53: invokevirtual 65	java/util/jar/JarEntry:getName	()Ljava/lang/String;
    //   56: ldc 67
    //   58: invokevirtual 72	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   61: ifne -40 -> 21
    //   64: aload_3
    //   65: aload 14
    //   67: aload_2
    //   68: invokestatic 74	org/antivirus/a/f:a	(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    //   71: astore 15
    //   73: aload 15
    //   75: ifnonnull +55 -> 130
    //   78: new 76	java/lang/StringBuilder
    //   81: dup
    //   82: ldc 78
    //   84: invokespecial 79	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   87: aload 14
    //   89: invokevirtual 65	java/util/jar/JarEntry:getName	()Ljava/lang/String;
    //   92: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: ldc 85
    //   97: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: invokestatic 93	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   106: aload_3
    //   107: invokevirtual 94	java/util/jar/JarFile:close	()V
    //   110: aload_3
    //   111: invokevirtual 94	java/util/jar/JarFile:close	()V
    //   114: iconst_0
    //   115: istore 5
    //   117: iload 5
    //   119: ireturn
    //   120: astore 20
    //   122: aload 20
    //   124: invokestatic 98	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   127: goto -13 -> 114
    //   130: aload_0
    //   131: getfield 12	org/antivirus/a/f:a	[Ljava/security/cert/Certificate;
    //   134: ifnonnull +33 -> 167
    //   137: aload_0
    //   138: aload 15
    //   140: putfield 12	org/antivirus/a/f:a	[Ljava/security/cert/Certificate;
    //   143: goto -122 -> 21
    //   146: astore 9
    //   148: aload_3
    //   149: astore 10
    //   151: aload 10
    //   153: ifnull +8 -> 161
    //   156: aload 10
    //   158: invokevirtual 94	java/util/jar/JarFile:close	()V
    //   161: iconst_0
    //   162: istore 5
    //   164: goto -47 -> 117
    //   167: iconst_0
    //   168: istore 16
    //   170: iload 16
    //   172: aload_0
    //   173: getfield 12	org/antivirus/a/f:a	[Ljava/security/cert/Certificate;
    //   176: arraylength
    //   177: if_icmpge -156 -> 21
    //   180: iconst_0
    //   181: istore 17
    //   183: iload 17
    //   185: aload 15
    //   187: arraylength
    //   188: if_icmpge +223 -> 411
    //   191: aload_0
    //   192: getfield 12	org/antivirus/a/f:a	[Ljava/security/cert/Certificate;
    //   195: iload 16
    //   197: aaload
    //   198: ifnull +82 -> 280
    //   201: aload_0
    //   202: getfield 12	org/antivirus/a/f:a	[Ljava/security/cert/Certificate;
    //   205: iload 16
    //   207: aaload
    //   208: aload 15
    //   210: iload 17
    //   212: aaload
    //   213: invokevirtual 104	java/security/cert/Certificate:equals	(Ljava/lang/Object;)Z
    //   216: ifeq +64 -> 280
    //   219: iconst_1
    //   220: istore 18
    //   222: iload 18
    //   224: ifeq +14 -> 238
    //   227: aload_0
    //   228: getfield 12	org/antivirus/a/f:a	[Ljava/security/cert/Certificate;
    //   231: arraylength
    //   232: aload 15
    //   234: arraylength
    //   235: if_icmpeq +61 -> 296
    //   238: new 76	java/lang/StringBuilder
    //   241: dup
    //   242: ldc 106
    //   244: invokespecial 79	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   247: aload 14
    //   249: invokevirtual 65	java/util/jar/JarEntry:getName	()Ljava/lang/String;
    //   252: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: ldc 85
    //   257: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   263: invokestatic 93	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   266: aload_3
    //   267: invokevirtual 94	java/util/jar/JarFile:close	()V
    //   270: aload_3
    //   271: invokevirtual 94	java/util/jar/JarFile:close	()V
    //   274: iconst_0
    //   275: istore 5
    //   277: goto -160 -> 117
    //   280: iinc 17 1
    //   283: goto -100 -> 183
    //   286: astore 19
    //   288: aload 19
    //   290: invokestatic 98	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   293: goto -19 -> 274
    //   296: iinc 16 1
    //   299: goto -129 -> 170
    //   302: aload_3
    //   303: invokevirtual 94	java/util/jar/JarFile:close	()V
    //   306: aload_3
    //   307: invokevirtual 94	java/util/jar/JarFile:close	()V
    //   310: iconst_1
    //   311: istore 5
    //   313: goto -196 -> 117
    //   316: astore 13
    //   318: aload 13
    //   320: invokestatic 98	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   323: goto -13 -> 310
    //   326: astore 11
    //   328: aload 11
    //   330: invokestatic 98	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   333: goto -172 -> 161
    //   336: astore 23
    //   338: aconst_null
    //   339: astore_3
    //   340: aload_3
    //   341: ifnull +7 -> 348
    //   344: aload_3
    //   345: invokevirtual 94	java/util/jar/JarFile:close	()V
    //   348: iconst_0
    //   349: istore 5
    //   351: goto -234 -> 117
    //   354: astore 6
    //   356: aload 6
    //   358: invokestatic 98	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   361: goto -13 -> 348
    //   364: astore 22
    //   366: aconst_null
    //   367: astore_3
    //   368: aload 22
    //   370: astore 7
    //   372: aload_3
    //   373: ifnull +7 -> 380
    //   376: aload_3
    //   377: invokevirtual 94	java/util/jar/JarFile:close	()V
    //   380: aload 7
    //   382: athrow
    //   383: astore 8
    //   385: aload 8
    //   387: invokestatic 98	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   390: goto -10 -> 380
    //   393: astore 7
    //   395: goto -23 -> 372
    //   398: astore 4
    //   400: goto -60 -> 340
    //   403: astore 21
    //   405: aconst_null
    //   406: astore 10
    //   408: goto -257 -> 151
    //   411: iconst_0
    //   412: istore 18
    //   414: goto -192 -> 222
    //
    // Exception table:
    //   from	to	target	type
    //   110	114	120	java/io/IOException
    //   15	110	146	java/io/IOException
    //   130	143	146	java/io/IOException
    //   170	270	146	java/io/IOException
    //   302	306	146	java/io/IOException
    //   270	274	286	java/io/IOException
    //   306	310	316	java/io/IOException
    //   156	161	326	java/io/IOException
    //   6	15	336	java/lang/RuntimeException
    //   344	348	354	java/io/IOException
    //   6	15	364	finally
    //   376	380	383	java/io/IOException
    //   15	110	393	finally
    //   130	143	393	finally
    //   170	270	393	finally
    //   302	306	393	finally
    //   15	110	398	java/lang/RuntimeException
    //   130	143	398	java/lang/RuntimeException
    //   170	270	398	java/lang/RuntimeException
    //   302	306	398	java/lang/RuntimeException
    //   6	15	403	java/io/IOException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.a.f
 * JD-Core Version:    0.6.2
 */