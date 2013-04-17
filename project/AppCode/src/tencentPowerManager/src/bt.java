import com.tencent.powermanager.PowerManagerApplication;

public final class bt
{
  private static bt a = null;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;

  // ERROR //
  private bt(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokespecial 24	java/lang/Object:<init>	()V
    //   6: aload_0
    //   7: ldc 26
    //   9: putfield 28	bt:b	Ljava/lang/String;
    //   12: aload_0
    //   13: ldc 30
    //   15: putfield 32	bt:c	Ljava/lang/String;
    //   18: aload_0
    //   19: ldc 34
    //   21: putfield 36	bt:d	Ljava/lang/String;
    //   24: aload_0
    //   25: ldc 34
    //   27: putfield 38	bt:e	Ljava/lang/String;
    //   30: aload_0
    //   31: ldc 40
    //   33: putfield 42	bt:f	Ljava/lang/String;
    //   36: aload_0
    //   37: ldc 44
    //   39: putfield 46	bt:g	Ljava/lang/String;
    //   42: aload_0
    //   43: ldc 48
    //   45: putfield 50	bt:h	Ljava/lang/String;
    //   48: aload_1
    //   49: invokevirtual 56	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   52: astore_3
    //   53: aload_3
    //   54: ldc 58
    //   56: invokevirtual 64	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   59: astore 11
    //   61: aload 11
    //   63: astore_2
    //   64: sipush 1024
    //   67: newarray byte
    //   69: astore 12
    //   71: new 66	java/io/ByteArrayOutputStream
    //   74: dup
    //   75: invokespecial 67	java/io/ByteArrayOutputStream:<init>	()V
    //   78: astore 13
    //   80: aload_2
    //   81: aload 12
    //   83: invokevirtual 73	java/io/InputStream:read	([B)I
    //   86: istore 14
    //   88: iload 14
    //   90: ifle +63 -> 153
    //   93: aload 13
    //   95: aload 12
    //   97: iconst_0
    //   98: iload 14
    //   100: invokevirtual 77	java/io/ByteArrayOutputStream:write	([BII)V
    //   103: goto -23 -> 80
    //   106: astore 8
    //   108: aload_0
    //   109: ldc 40
    //   111: putfield 42	bt:f	Ljava/lang/String;
    //   114: aload_0
    //   115: ldc 44
    //   117: putfield 46	bt:g	Ljava/lang/String;
    //   120: aload_0
    //   121: ldc 79
    //   123: putfield 28	bt:b	Ljava/lang/String;
    //   126: aload_0
    //   127: ldc 30
    //   129: putfield 32	bt:c	Ljava/lang/String;
    //   132: aload_0
    //   133: ldc 81
    //   135: putfield 36	bt:d	Ljava/lang/String;
    //   138: aload_0
    //   139: ldc 81
    //   141: putfield 38	bt:e	Ljava/lang/String;
    //   144: aload_2
    //   145: ifnull +7 -> 152
    //   148: aload_2
    //   149: invokevirtual 84	java/io/InputStream:close	()V
    //   152: return
    //   153: aload_1
    //   154: aload 13
    //   156: invokevirtual 88	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   159: aconst_null
    //   160: invokestatic 94	com/tencent/tccdb/TccCryptor:decrypt	(Landroid/content/Context;[B[B)[B
    //   163: astore 15
    //   165: aload 13
    //   167: invokevirtual 95	java/io/ByteArrayOutputStream:close	()V
    //   170: new 97	java/util/Properties
    //   173: dup
    //   174: invokespecial 98	java/util/Properties:<init>	()V
    //   177: astore 16
    //   179: aload 16
    //   181: new 100	java/io/ByteArrayInputStream
    //   184: dup
    //   185: aload 15
    //   187: invokespecial 103	java/io/ByteArrayInputStream:<init>	([B)V
    //   190: invokevirtual 107	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   193: aload_0
    //   194: aload 16
    //   196: ldc 109
    //   198: invokevirtual 113	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   201: putfield 28	bt:b	Ljava/lang/String;
    //   204: aload_0
    //   205: aload 16
    //   207: ldc 115
    //   209: invokevirtual 113	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   212: putfield 32	bt:c	Ljava/lang/String;
    //   215: aload_0
    //   216: aload 16
    //   218: ldc 117
    //   220: invokevirtual 113	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   223: putfield 36	bt:d	Ljava/lang/String;
    //   226: aload_0
    //   227: aload 16
    //   229: ldc 119
    //   231: invokevirtual 113	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   234: putfield 38	bt:e	Ljava/lang/String;
    //   237: aload_0
    //   238: aload 16
    //   240: ldc 121
    //   242: invokevirtual 113	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   245: putfield 42	bt:f	Ljava/lang/String;
    //   248: aload 16
    //   250: ldc 123
    //   252: invokevirtual 113	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   255: ifnull +25 -> 280
    //   258: new 125	java/lang/String
    //   261: dup
    //   262: aload 16
    //   264: ldc 123
    //   266: invokevirtual 113	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   269: ldc 127
    //   271: invokevirtual 131	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   274: ldc 133
    //   276: invokespecial 136	java/lang/String:<init>	([BLjava/lang/String;)V
    //   279: pop
    //   280: aload_0
    //   281: aload 16
    //   283: ldc 138
    //   285: invokevirtual 113	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   288: putfield 50	bt:h	Ljava/lang/String;
    //   291: aload_2
    //   292: ifnull -140 -> 152
    //   295: aload_2
    //   296: invokevirtual 84	java/io/InputStream:close	()V
    //   299: goto -147 -> 152
    //   302: astore 18
    //   304: goto -152 -> 152
    //   307: astore 4
    //   309: aconst_null
    //   310: astore 5
    //   312: aload 4
    //   314: astore 6
    //   316: aload 5
    //   318: ifnull +8 -> 326
    //   321: aload 5
    //   323: invokevirtual 84	java/io/InputStream:close	()V
    //   326: aload 6
    //   328: athrow
    //   329: astore 10
    //   331: goto -179 -> 152
    //   334: astore 7
    //   336: goto -10 -> 326
    //   339: astore 9
    //   341: aload_2
    //   342: astore 5
    //   344: aload 9
    //   346: astore 6
    //   348: goto -32 -> 316
    //
    // Exception table:
    //   from	to	target	type
    //   53	61	106	java/io/IOException
    //   64	103	106	java/io/IOException
    //   153	291	106	java/io/IOException
    //   295	299	302	java/io/IOException
    //   53	61	307	finally
    //   148	152	329	java/io/IOException
    //   321	326	334	java/io/IOException
    //   64	103	339	finally
    //   108	144	339	finally
    //   153	291	339	finally
  }

  public static bt a()
  {
    try
    {
      if (a == null)
        a = new bt(PowerManagerApplication.a());
      bt localbt = a;
      return localbt;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String b()
  {
    return this.c;
  }

  public final String c()
  {
    return this.e;
  }

  public final String d()
  {
    return this.d;
  }

  public final String e()
  {
    return this.b;
  }

  public final int f()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    this.g = "201";
    return (this.g + this.f).hashCode();
  }

  public final boolean g()
  {
    if ((this.h == null) || (this.h.equals("1")));
    for (Boolean localBoolean = Boolean.TRUE; ; localBoolean = Boolean.FALSE)
      return localBoolean.booleanValue();
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
    public static final int p = "202default".hashCode();

    static
    {
      "201MeiZu".hashCode();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     bt
 * JD-Core Version:    0.6.2
 */