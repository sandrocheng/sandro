public final class bi
{
  public String a;
  public boolean b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;

  // ERROR //
  public bi(android.content.Context paramContext)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: invokespecial 22	java/lang/Object:<init>	()V
    //   6: aload_0
    //   7: ldc 24
    //   9: putfield 26	bi:c	Ljava/lang/String;
    //   12: aload_0
    //   13: ldc 28
    //   15: putfield 30	bi:d	Ljava/lang/String;
    //   18: aload_0
    //   19: ldc 32
    //   21: putfield 34	bi:a	Ljava/lang/String;
    //   24: aload_0
    //   25: ldc 36
    //   27: putfield 38	bi:e	Ljava/lang/String;
    //   30: aload_0
    //   31: ldc 40
    //   33: putfield 42	bi:f	Ljava/lang/String;
    //   36: aload_0
    //   37: ldc 40
    //   39: putfield 44	bi:g	Ljava/lang/String;
    //   42: aload_0
    //   43: iconst_0
    //   44: putfield 46	bi:b	Z
    //   47: aload_1
    //   48: ifnonnull +11 -> 59
    //   51: ldc 48
    //   53: ldc 50
    //   55: invokestatic 55	dk:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   58: return
    //   59: aload_1
    //   60: invokevirtual 61	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   63: astore_3
    //   64: aconst_null
    //   65: astore 4
    //   67: aload_3
    //   68: ldc 63
    //   70: invokevirtual 69	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   73: astore 12
    //   75: aload 12
    //   77: astore 4
    //   79: sipush 1024
    //   82: newarray byte
    //   84: astore 13
    //   86: aload 4
    //   88: aload 13
    //   90: invokevirtual 75	java/io/InputStream:read	([B)I
    //   93: istore 14
    //   95: iload 14
    //   97: newarray byte
    //   99: astore 15
    //   101: iload_2
    //   102: iload 14
    //   104: if_icmplt +148 -> 252
    //   107: aload 15
    //   109: ldc 77
    //   111: ldc 79
    //   113: invokevirtual 85	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   116: invokestatic 89	a:c	([B[B)[B
    //   119: astore 16
    //   121: new 91	java/util/Properties
    //   124: dup
    //   125: invokespecial 92	java/util/Properties:<init>	()V
    //   128: astore 17
    //   130: aload 17
    //   132: new 94	java/io/ByteArrayInputStream
    //   135: dup
    //   136: aload 16
    //   138: invokespecial 97	java/io/ByteArrayInputStream:<init>	([B)V
    //   141: invokevirtual 101	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   144: aload_0
    //   145: aload 17
    //   147: ldc 103
    //   149: invokevirtual 107	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   152: putfield 26	bi:c	Ljava/lang/String;
    //   155: aload_0
    //   156: aload 17
    //   158: ldc 109
    //   160: invokevirtual 107	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   163: putfield 30	bi:d	Ljava/lang/String;
    //   166: aload_0
    //   167: aload 17
    //   169: ldc 111
    //   171: invokevirtual 107	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   174: putfield 34	bi:a	Ljava/lang/String;
    //   177: aload_0
    //   178: aload 17
    //   180: ldc 113
    //   182: invokevirtual 107	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   185: putfield 38	bi:e	Ljava/lang/String;
    //   188: aload_0
    //   189: aload 17
    //   191: ldc 115
    //   193: invokevirtual 107	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   196: putfield 42	bi:f	Ljava/lang/String;
    //   199: aload_0
    //   200: aload 17
    //   202: ldc 117
    //   204: invokevirtual 107	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   207: putfield 44	bi:g	Ljava/lang/String;
    //   210: aload_0
    //   211: getfield 44	bi:g	Ljava/lang/String;
    //   214: ifnull +20 -> 234
    //   217: aload_0
    //   218: getfield 44	bi:g	Ljava/lang/String;
    //   221: ldc 119
    //   223: invokevirtual 123	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   226: ifeq +8 -> 234
    //   229: aload_0
    //   230: iconst_1
    //   231: putfield 46	bi:b	Z
    //   234: aload 4
    //   236: ifnull -178 -> 58
    //   239: aload 4
    //   241: invokevirtual 126	java/io/InputStream:close	()V
    //   244: goto -186 -> 58
    //   247: astore 18
    //   249: goto -191 -> 58
    //   252: aload 15
    //   254: iload_2
    //   255: aload 13
    //   257: iload_2
    //   258: baload
    //   259: bastore
    //   260: iinc 2 1
    //   263: goto -162 -> 101
    //   266: astore 9
    //   268: aload_0
    //   269: ldc 24
    //   271: putfield 26	bi:c	Ljava/lang/String;
    //   274: aload_0
    //   275: ldc 28
    //   277: putfield 30	bi:d	Ljava/lang/String;
    //   280: aload_0
    //   281: ldc 32
    //   283: putfield 34	bi:a	Ljava/lang/String;
    //   286: aload_0
    //   287: ldc 36
    //   289: putfield 38	bi:e	Ljava/lang/String;
    //   292: aload 4
    //   294: ifnull -236 -> 58
    //   297: aload 4
    //   299: invokevirtual 126	java/io/InputStream:close	()V
    //   302: goto -244 -> 58
    //   305: astore 11
    //   307: goto -249 -> 58
    //   310: astore 5
    //   312: aconst_null
    //   313: astore 6
    //   315: aload 5
    //   317: astore 7
    //   319: aload 6
    //   321: ifnull +8 -> 329
    //   324: aload 6
    //   326: invokevirtual 126	java/io/InputStream:close	()V
    //   329: aload 7
    //   331: athrow
    //   332: astore 8
    //   334: goto -5 -> 329
    //   337: astore 10
    //   339: aload 4
    //   341: astore 6
    //   343: aload 10
    //   345: astore 7
    //   347: goto -28 -> 319
    //
    // Exception table:
    //   from	to	target	type
    //   239	244	247	java/io/IOException
    //   67	75	266	java/lang/Throwable
    //   79	234	266	java/lang/Throwable
    //   252	260	266	java/lang/Throwable
    //   297	302	305	java/io/IOException
    //   67	75	310	finally
    //   324	329	332	java/io/IOException
    //   79	234	337	finally
    //   252	260	337	finally
    //   268	292	337	finally
  }

  public final String toString()
  {
    return "platform:" + this.f + "channel:" + this.e + "\nlc:" + this.a + "\nbuild:" + this.d + "\nversion:" + this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bi
 * JD-Core Version:    0.6.2
 */