package com.keniu.security.f;

import java.util.Map;

public final class g
{
  private Map a;

  // ERROR //
  public g(java.io.File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 13	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: new 15	java/util/HashMap
    //   8: dup
    //   9: invokespecial 16	java/util/HashMap:<init>	()V
    //   12: putfield 18	com/keniu/security/f/g:a	Ljava/util/Map;
    //   15: new 20	java/io/FileInputStream
    //   18: dup
    //   19: aload_1
    //   20: invokespecial 22	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   23: astore_2
    //   24: aload_2
    //   25: invokevirtual 26	java/io/FileInputStream:available	()I
    //   28: newarray byte
    //   30: astore 14
    //   32: aload_2
    //   33: aload 14
    //   35: invokevirtual 30	java/io/FileInputStream:read	([B)I
    //   38: pop
    //   39: new 32	java/io/ByteArrayInputStream
    //   42: dup
    //   43: aload 14
    //   45: iconst_0
    //   46: aload 14
    //   48: arraylength
    //   49: invokespecial 35	java/io/ByteArrayInputStream:<init>	([BII)V
    //   52: astore 12
    //   54: new 37	java/io/BufferedReader
    //   57: dup
    //   58: new 39	java/io/InputStreamReader
    //   61: dup
    //   62: aload 12
    //   64: ldc 41
    //   66: invokespecial 44	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   69: invokespecial 47	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   72: astore 11
    //   74: aload 11
    //   76: invokevirtual 51	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   79: astore 19
    //   81: aload 19
    //   83: ifnull +81 -> 164
    //   86: aload 19
    //   88: ldc 53
    //   90: invokevirtual 59	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   93: astore 21
    //   95: aload_0
    //   96: getfield 18	com/keniu/security/f/g:a	Ljava/util/Map;
    //   99: aload 21
    //   101: iconst_0
    //   102: aaload
    //   103: aload 21
    //   105: iconst_1
    //   106: aaload
    //   107: invokeinterface 65 3 0
    //   112: pop
    //   113: goto -39 -> 74
    //   116: astore 17
    //   118: aload 11
    //   120: astore 18
    //   122: aload 12
    //   124: astore 6
    //   126: aload_2
    //   127: astore 4
    //   129: aload 18
    //   131: astore 5
    //   133: aload 4
    //   135: ifnull +8 -> 143
    //   138: aload 4
    //   140: invokevirtual 68	java/io/FileInputStream:close	()V
    //   143: aload 6
    //   145: ifnull +8 -> 153
    //   148: aload 6
    //   150: invokevirtual 69	java/io/ByteArrayInputStream:close	()V
    //   153: aload 5
    //   155: ifnull +8 -> 163
    //   158: aload 5
    //   160: invokevirtual 70	java/io/BufferedReader:close	()V
    //   163: return
    //   164: aload_2
    //   165: invokevirtual 68	java/io/FileInputStream:close	()V
    //   168: aload 12
    //   170: invokevirtual 69	java/io/ByteArrayInputStream:close	()V
    //   173: aload 11
    //   175: invokevirtual 70	java/io/BufferedReader:close	()V
    //   178: goto -15 -> 163
    //   181: astore 20
    //   183: goto -20 -> 163
    //   186: astore 10
    //   188: aconst_null
    //   189: astore 11
    //   191: aconst_null
    //   192: astore 12
    //   194: aconst_null
    //   195: astore 9
    //   197: aload 9
    //   199: ifnull +8 -> 207
    //   202: aload 9
    //   204: invokevirtual 68	java/io/FileInputStream:close	()V
    //   207: aload 12
    //   209: ifnull +8 -> 217
    //   212: aload 12
    //   214: invokevirtual 69	java/io/ByteArrayInputStream:close	()V
    //   217: aload 11
    //   219: ifnull +8 -> 227
    //   222: aload 11
    //   224: invokevirtual 70	java/io/BufferedReader:close	()V
    //   227: aload 10
    //   229: athrow
    //   230: astore 13
    //   232: goto -5 -> 227
    //   235: astore 8
    //   237: aload_2
    //   238: astore 9
    //   240: aload 8
    //   242: astore 10
    //   244: aconst_null
    //   245: astore 11
    //   247: aconst_null
    //   248: astore 12
    //   250: goto -53 -> 197
    //   253: astore 24
    //   255: aload_2
    //   256: astore 9
    //   258: aload 24
    //   260: astore 10
    //   262: aconst_null
    //   263: astore 11
    //   265: goto -68 -> 197
    //   268: astore 16
    //   270: aload_2
    //   271: astore 9
    //   273: aload 16
    //   275: astore 10
    //   277: goto -80 -> 197
    //   280: astore 7
    //   282: goto -119 -> 163
    //   285: astore 25
    //   287: aconst_null
    //   288: astore 5
    //   290: aconst_null
    //   291: astore 6
    //   293: aconst_null
    //   294: astore 4
    //   296: goto -163 -> 133
    //   299: astore_3
    //   300: aload_2
    //   301: astore 4
    //   303: aconst_null
    //   304: astore 5
    //   306: aconst_null
    //   307: astore 6
    //   309: goto -176 -> 133
    //   312: astore 23
    //   314: aload 12
    //   316: astore 6
    //   318: aload_2
    //   319: astore 4
    //   321: aconst_null
    //   322: astore 5
    //   324: goto -191 -> 133
    //
    // Exception table:
    //   from	to	target	type
    //   74	113	116	java/lang/Exception
    //   164	178	181	java/lang/Exception
    //   15	24	186	finally
    //   202	227	230	java/lang/Exception
    //   24	54	235	finally
    //   54	74	253	finally
    //   74	113	268	finally
    //   138	163	280	java/lang/Exception
    //   15	24	285	java/lang/Exception
    //   24	54	299	java/lang/Exception
    //   54	74	312	java/lang/Exception
  }

  public final String a(String paramString)
  {
    return (String)this.a.get(paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.g
 * JD-Core Version:    0.6.2
 */