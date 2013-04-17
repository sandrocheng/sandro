import com.tencent.qqpimsecure.service.QQPimApplication;

public final class qx
{
  private static qx a = null;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private boolean j;

  // ERROR //
  private qx(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokespecial 27	java/lang/Object:<init>	()V
    //   6: aload_0
    //   7: ldc 29
    //   9: putfield 31	qx:b	Ljava/lang/String;
    //   12: aload_0
    //   13: ldc 29
    //   15: putfield 33	qx:c	Ljava/lang/String;
    //   18: aload_0
    //   19: ldc 35
    //   21: putfield 37	qx:d	Ljava/lang/String;
    //   24: aload_0
    //   25: ldc 39
    //   27: putfield 41	qx:e	Ljava/lang/String;
    //   30: aload_0
    //   31: ldc 39
    //   33: putfield 43	qx:f	Ljava/lang/String;
    //   36: aload_0
    //   37: ldc 45
    //   39: putfield 47	qx:g	Ljava/lang/String;
    //   42: aload_0
    //   43: ldc 49
    //   45: putfield 51	qx:h	Ljava/lang/String;
    //   48: aload_0
    //   49: ldc 53
    //   51: putfield 55	qx:i	Ljava/lang/String;
    //   54: aload_0
    //   55: iconst_1
    //   56: putfield 57	qx:j	Z
    //   59: aload_1
    //   60: invokevirtual 63	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   63: astore_3
    //   64: aload_3
    //   65: ldc 65
    //   67: invokevirtual 71	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   70: astore 11
    //   72: aload 11
    //   74: astore_2
    //   75: sipush 1024
    //   78: newarray byte
    //   80: astore 12
    //   82: new 73	java/io/ByteArrayOutputStream
    //   85: dup
    //   86: invokespecial 74	java/io/ByteArrayOutputStream:<init>	()V
    //   89: astore 13
    //   91: aload_2
    //   92: aload 12
    //   94: invokevirtual 80	java/io/InputStream:read	([B)I
    //   97: istore 14
    //   99: iload 14
    //   101: ifle +69 -> 170
    //   104: aload 13
    //   106: aload 12
    //   108: iconst_0
    //   109: iload 14
    //   111: invokevirtual 84	java/io/ByteArrayOutputStream:write	([BII)V
    //   114: goto -23 -> 91
    //   117: astore 8
    //   119: aload_0
    //   120: ldc 45
    //   122: putfield 47	qx:g	Ljava/lang/String;
    //   125: aload_0
    //   126: ldc 49
    //   128: putfield 51	qx:h	Ljava/lang/String;
    //   131: aload_0
    //   132: ldc 86
    //   134: putfield 31	qx:b	Ljava/lang/String;
    //   137: aload_0
    //   138: ldc 86
    //   140: putfield 33	qx:c	Ljava/lang/String;
    //   143: aload_0
    //   144: ldc 35
    //   146: putfield 37	qx:d	Ljava/lang/String;
    //   149: aload_0
    //   150: ldc 88
    //   152: putfield 41	qx:e	Ljava/lang/String;
    //   155: aload_0
    //   156: ldc 88
    //   158: putfield 43	qx:f	Ljava/lang/String;
    //   161: aload_2
    //   162: ifnull +7 -> 169
    //   165: aload_2
    //   166: invokevirtual 91	java/io/InputStream:close	()V
    //   169: return
    //   170: aload_1
    //   171: aload 13
    //   173: invokevirtual 95	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   176: aconst_null
    //   177: invokestatic 101	com/tencent/tccdb/TccCryptor:decrypt	(Landroid/content/Context;[B[B)[B
    //   180: astore 15
    //   182: aload 13
    //   184: invokevirtual 102	java/io/ByteArrayOutputStream:close	()V
    //   187: new 104	java/util/Properties
    //   190: dup
    //   191: invokespecial 105	java/util/Properties:<init>	()V
    //   194: astore 16
    //   196: aload 16
    //   198: new 107	java/io/ByteArrayInputStream
    //   201: dup
    //   202: aload 15
    //   204: invokespecial 110	java/io/ByteArrayInputStream:<init>	([B)V
    //   207: invokevirtual 114	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   210: aload_0
    //   211: aload 16
    //   213: ldc 116
    //   215: invokevirtual 120	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   218: putfield 31	qx:b	Ljava/lang/String;
    //   221: aload_0
    //   222: aload 16
    //   224: ldc 122
    //   226: invokevirtual 120	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   229: putfield 37	qx:d	Ljava/lang/String;
    //   232: aload_0
    //   233: aload 16
    //   235: ldc 124
    //   237: invokevirtual 120	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   240: putfield 41	qx:e	Ljava/lang/String;
    //   243: aload_0
    //   244: aload 16
    //   246: ldc 126
    //   248: invokevirtual 120	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   251: putfield 43	qx:f	Ljava/lang/String;
    //   254: aload_0
    //   255: aload 16
    //   257: ldc 128
    //   259: invokevirtual 120	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   262: putfield 47	qx:g	Ljava/lang/String;
    //   265: aload_0
    //   266: aload 16
    //   268: ldc 130
    //   270: invokevirtual 120	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   273: putfield 51	qx:h	Ljava/lang/String;
    //   276: aload 16
    //   278: ldc 132
    //   280: invokevirtual 120	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   283: astore 17
    //   285: aload 17
    //   287: ifnull +36 -> 323
    //   290: aload 17
    //   292: ldc 134
    //   294: invokevirtual 140	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   297: ifne +26 -> 323
    //   300: aload 17
    //   302: ldc 35
    //   304: invokevirtual 140	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   307: istore 20
    //   309: iconst_0
    //   310: istore 21
    //   312: iload 20
    //   314: ifeq +82 -> 396
    //   317: aload_0
    //   318: iload 21
    //   320: putfield 57	qx:j	Z
    //   323: aload 16
    //   325: ldc 142
    //   327: invokevirtual 120	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   330: invokestatic 148	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   333: pop
    //   334: aload 16
    //   336: ldc 150
    //   338: invokevirtual 120	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   341: ifnull +28 -> 369
    //   344: aload_0
    //   345: new 136	java/lang/String
    //   348: dup
    //   349: aload 16
    //   351: ldc 150
    //   353: invokevirtual 120	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   356: ldc 152
    //   358: invokevirtual 156	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   361: ldc 158
    //   363: invokespecial 161	java/lang/String:<init>	([BLjava/lang/String;)V
    //   366: putfield 33	qx:c	Ljava/lang/String;
    //   369: aload_0
    //   370: aload 16
    //   372: ldc 163
    //   374: invokevirtual 120	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   377: putfield 55	qx:i	Ljava/lang/String;
    //   380: aload_2
    //   381: ifnull -212 -> 169
    //   384: aload_2
    //   385: invokevirtual 91	java/io/InputStream:close	()V
    //   388: goto -219 -> 169
    //   391: astore 19
    //   393: goto -224 -> 169
    //   396: iconst_1
    //   397: istore 21
    //   399: goto -82 -> 317
    //   402: astore 4
    //   404: aconst_null
    //   405: astore 5
    //   407: aload 4
    //   409: astore 6
    //   411: aload 5
    //   413: ifnull +8 -> 421
    //   416: aload 5
    //   418: invokevirtual 91	java/io/InputStream:close	()V
    //   421: aload 6
    //   423: athrow
    //   424: astore 10
    //   426: goto -257 -> 169
    //   429: astore 7
    //   431: goto -10 -> 421
    //   434: astore 9
    //   436: aload_2
    //   437: astore 5
    //   439: aload 9
    //   441: astore 6
    //   443: goto -32 -> 411
    //
    // Exception table:
    //   from	to	target	type
    //   64	72	117	java/io/IOException
    //   75	114	117	java/io/IOException
    //   170	380	117	java/io/IOException
    //   384	388	391	java/io/IOException
    //   64	72	402	finally
    //   165	169	424	java/io/IOException
    //   416	421	429	java/io/IOException
    //   75	114	434	finally
    //   119	161	434	finally
    //   170	380	434	finally
  }

  public static qx a()
  {
    try
    {
      if (a == null)
        a = new qx(QQPimApplication.a());
      qx localqx = a;
      return localqx;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String b()
  {
    return this.d;
  }

  public final String c()
  {
    return this.f;
  }

  public final String d()
  {
    return this.e;
  }

  public final String e()
  {
    return this.c;
  }

  public final String f()
  {
    return this.b;
  }

  public final int g()
  {
    this.h = "201";
    return this.h.hashCode();
  }

  public final int h()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    this.h = "201";
    return (this.h + this.g).hashCode();
  }

  public final boolean i()
  {
    if ((this.i == null) || (this.i.equals("1")));
    for (Boolean localBoolean = Boolean.TRUE; ; localBoolean = Boolean.FALSE)
      return localBoolean.booleanValue();
  }

  public final boolean j()
  {
    return this.j;
  }

  public static final class a
  {
    public static final int a = "201default".hashCode();
    public static final int b = "201htc".hashCode();
    public static final int c = "201samsung".hashCode();
    public static final int d = "201lephone".hashCode();
    public static final int e = "201jinli".hashCode();
    public static final int f = "201huawei".hashCode();
    public static final int g = "201ZTE".hashCode();
    public static final int h = "201market".hashCode();
    public static final int i = "201philips".hashCode();
    public static final int j = "201tianyu".hashCode();
    public static final int k = "201moto".hashCode();
    public static final int l = "201konka".hashCode();
    public static final int m = "201app_china".hashCode();
    public static final int n = "201dualsimmtk".hashCode();
    public static final int o = "201chinaTelecom".hashCode();
    public static final int p = "201jinshan".hashCode();
    public static final int q = "202default".hashCode();

    static
    {
      "201MeiZu".hashCode();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     qx
 * JD-Core Version:    0.6.2
 */