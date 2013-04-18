package com.keniu.security.f;

import com.keniu.security.monitor.a;

public abstract class ae
  implements Runnable
{
  public static final int a = 0;
  public static final int b = 1;
  public static final int c = 2;
  public static final int d = 3;
  public static final int e = 4;
  public static final int f = 5;
  public static final int g = 6;
  public static final int h = 7;
  public static final int i = 8;
  public static final int j = 0;
  public static final int k = 1;
  public static final int l = 2;
  public static final int m = 3;
  public static final int n = 4;
  public static final int o = 5;
  public static final int p = 6;
  public static final int q = 7;
  public static final int r = 8;
  public static final int s = 9;
  public static final int t = 10;
  public static final int u = 0;
  public static final int v = 1;
  public static final int w = 2;
  public static final int x = 3;
  protected static final String y = "UTF-8";
  protected static final int z = 30000;
  private int A = 0;
  private int B = 0;
  private volatile boolean C = false;
  private Integer D = new Integer(0);

  protected ae(int paramInt)
  {
    this.D = Integer.valueOf(paramInt);
  }

  // ERROR //
  protected static int a(String paramString, aa paramaa, af paramaf)
  {
    // Byte code:
    //   0: new 82	java/net/URL
    //   3: dup
    //   4: new 84	java/lang/StringBuilder
    //   7: dup
    //   8: invokespecial 85	java/lang/StringBuilder:<init>	()V
    //   11: aload_0
    //   12: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: aload_1
    //   16: getfield 93	com/keniu/security/f/aa:a	Ljava/lang/String;
    //   19: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   25: invokespecial 100	java/net/URL:<init>	(Ljava/lang/String;)V
    //   28: invokevirtual 104	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   31: astore 10
    //   33: aload 10
    //   35: sipush 30000
    //   38: invokevirtual 109	java/net/URLConnection:setConnectTimeout	(I)V
    //   41: aload 10
    //   43: sipush 30000
    //   46: invokevirtual 112	java/net/URLConnection:setReadTimeout	(I)V
    //   49: aload 10
    //   51: iconst_0
    //   52: invokevirtual 116	java/net/URLConnection:setUseCaches	(Z)V
    //   55: aload 10
    //   57: invokevirtual 119	java/net/URLConnection:connect	()V
    //   60: aload 10
    //   62: instanceof 121
    //   65: ifeq +24 -> 89
    //   68: aload 10
    //   70: checkcast 121	java/net/HttpURLConnection
    //   73: invokevirtual 125	java/net/HttpURLConnection:getResponseCode	()I
    //   76: sipush 400
    //   79: if_icmplt +10 -> 89
    //   82: bipush 10
    //   84: istore 8
    //   86: goto +313 -> 399
    //   89: aload 10
    //   91: invokevirtual 129	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   94: astore 11
    //   96: aload 11
    //   98: astore 7
    //   100: aload_1
    //   101: getfield 131	com/keniu/security/f/aa:c	Ljava/lang/String;
    //   104: ifnull +289 -> 393
    //   107: ldc 133
    //   109: invokestatic 139	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   112: astore 14
    //   114: new 141	java/security/DigestInputStream
    //   117: dup
    //   118: aload 7
    //   120: aload 14
    //   122: invokespecial 144	java/security/DigestInputStream:<init>	(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    //   125: astore 26
    //   127: aload 26
    //   129: astore 7
    //   131: sipush 8192
    //   134: newarray byte
    //   136: astore 16
    //   138: iconst_0
    //   139: istore 17
    //   141: aload 7
    //   143: aload 16
    //   145: invokevirtual 150	java/io/InputStream:read	([B)I
    //   148: istore 18
    //   150: iload 18
    //   152: ifle +47 -> 199
    //   155: aload_2
    //   156: aload 16
    //   158: iload 18
    //   160: invokeinterface 155 3 0
    //   165: istore 24
    //   167: iload 24
    //   169: ifeq +20 -> 189
    //   172: aload 7
    //   174: ifnull +8 -> 182
    //   177: aload 7
    //   179: invokevirtual 158	java/io/InputStream:close	()V
    //   182: iload 24
    //   184: istore 8
    //   186: goto +213 -> 399
    //   189: iload 17
    //   191: iload 18
    //   193: iadd
    //   194: istore 17
    //   196: goto -55 -> 141
    //   199: aload_1
    //   200: getfield 160	com/keniu/security/f/aa:b	I
    //   203: ifeq +33 -> 236
    //   206: aload_1
    //   207: getfield 160	com/keniu/security/f/aa:b	I
    //   210: istore 22
    //   212: iload 22
    //   214: iload 17
    //   216: if_icmpeq +20 -> 236
    //   219: aload 7
    //   221: ifnull +8 -> 229
    //   224: aload 7
    //   226: invokevirtual 158	java/io/InputStream:close	()V
    //   229: bipush 10
    //   231: istore 8
    //   233: goto +166 -> 399
    //   236: aload 14
    //   238: ifnull +42 -> 280
    //   241: aload 14
    //   243: invokevirtual 164	java/security/MessageDigest:digest	()[B
    //   246: invokestatic 169	com/keniu/security/f/k:a	([B)Ljava/lang/String;
    //   249: aload_1
    //   250: getfield 131	com/keniu/security/f/aa:c	Ljava/lang/String;
    //   253: invokevirtual 175	java/lang/String:compareToIgnoreCase	(Ljava/lang/String;)I
    //   256: istore 20
    //   258: iload 20
    //   260: ifeq +20 -> 280
    //   263: aload 7
    //   265: ifnull +8 -> 273
    //   268: aload 7
    //   270: invokevirtual 158	java/io/InputStream:close	()V
    //   273: bipush 9
    //   275: istore 8
    //   277: goto +122 -> 399
    //   280: aload 7
    //   282: ifnull +8 -> 290
    //   285: aload 7
    //   287: invokevirtual 158	java/io/InputStream:close	()V
    //   290: iconst_0
    //   291: istore 8
    //   293: goto +106 -> 399
    //   296: astore 6
    //   298: aconst_null
    //   299: astore 7
    //   301: aload 7
    //   303: ifnull +8 -> 311
    //   306: aload 7
    //   308: invokevirtual 158	java/io/InputStream:close	()V
    //   311: bipush 10
    //   313: istore 8
    //   315: goto +84 -> 399
    //   318: astore_3
    //   319: aconst_null
    //   320: astore 4
    //   322: aload 4
    //   324: ifnull +8 -> 332
    //   327: aload 4
    //   329: invokevirtual 158	java/io/InputStream:close	()V
    //   332: aload_3
    //   333: athrow
    //   334: astore 25
    //   336: goto -154 -> 182
    //   339: astore 23
    //   341: goto -112 -> 229
    //   344: astore 21
    //   346: goto -73 -> 273
    //   349: astore 19
    //   351: goto -61 -> 290
    //   354: astore 9
    //   356: goto -45 -> 311
    //   359: astore 5
    //   361: goto -29 -> 332
    //   364: astore 13
    //   366: aload 7
    //   368: astore 4
    //   370: aload 13
    //   372: astore_3
    //   373: goto -51 -> 322
    //   376: astore 15
    //   378: aload 7
    //   380: astore 4
    //   382: aload 15
    //   384: astore_3
    //   385: goto -63 -> 322
    //   388: astore 12
    //   390: goto -89 -> 301
    //   393: aconst_null
    //   394: astore 14
    //   396: goto -265 -> 131
    //   399: iload 8
    //   401: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	96	296	java/lang/Exception
    //   0	96	318	finally
    //   177	182	334	java/io/IOException
    //   224	229	339	java/io/IOException
    //   268	273	344	java/io/IOException
    //   285	290	349	java/io/IOException
    //   306	311	354	java/io/IOException
    //   327	332	359	java/io/IOException
    //   100	127	364	finally
    //   131	167	376	finally
    //   199	212	376	finally
    //   241	258	376	finally
    //   100	127	388	java/lang/Exception
    //   131	167	388	java/lang/Exception
    //   199	212	388	java/lang/Exception
    //   241	258	388	java/lang/Exception
  }

  public static boolean a(int paramInt)
  {
    if ((paramInt == 2) || (paramInt == 3) || (paramInt == 7) || (paramInt == 1));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected static boolean a(h paramh, String paramString1, String paramString2)
  {
    if (ag.a(paramh.a("version", paramString1), paramString2) > 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean b(int paramInt)
  {
    if ((paramInt == 2) || (paramInt == 4) || (paramInt == 6));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void e(int paramInt)
  {
    this.A = paramInt;
  }

  protected final void c(int paramInt)
  {
    this.B = paramInt;
  }

  protected final void d(int paramInt)
  {
    this.A = paramInt;
    k();
  }

  public final void f()
  {
    this.C = true;
  }

  public final boolean g()
  {
    return this.C;
  }

  protected final void h()
  {
    this.C = false;
  }

  public final int i()
  {
    return this.A;
  }

  public final int j()
  {
    return this.B;
  }

  protected final void k()
  {
    a.a().a(a.q, this.D, this);
  }

  protected final boolean l()
  {
    if (this.C)
      this.B = 2;
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.ae
 * JD-Core Version:    0.6.2
 */