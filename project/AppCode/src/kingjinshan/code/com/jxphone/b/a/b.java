package com.jxphone.b.a;

import java.net.URL;

public final class b
  implements c
{
  private final URL a;

  public b(String paramString)
  {
    this.a = new URL(paramString);
  }

  // ERROR //
  public final boolean a(String[][] paramArrayOfString)
  {
    // Byte code:
    //   0: new 22	java/lang/StringBuilder
    //   3: dup
    //   4: sipush 128
    //   7: invokespecial 25	java/lang/StringBuilder:<init>	(I)V
    //   10: astore_2
    //   11: aload_1
    //   12: arraylength
    //   13: istore_3
    //   14: iconst_0
    //   15: istore 4
    //   17: iload 4
    //   19: iload_3
    //   20: if_icmpge +50 -> 70
    //   23: aload_1
    //   24: iload 4
    //   26: aaload
    //   27: astore 16
    //   29: aload 16
    //   31: arraylength
    //   32: iconst_2
    //   33: if_icmpne +31 -> 64
    //   36: aload_2
    //   37: aload 16
    //   39: iconst_0
    //   40: aaload
    //   41: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: bipush 61
    //   46: invokevirtual 32	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   49: pop
    //   50: aload_2
    //   51: aload 16
    //   53: iconst_1
    //   54: aaload
    //   55: invokevirtual 29	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: bipush 38
    //   60: invokevirtual 32	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   63: pop
    //   64: iinc 4 1
    //   67: goto -50 -> 17
    //   70: aload_2
    //   71: invokevirtual 36	java/lang/StringBuilder:length	()I
    //   74: istore 5
    //   76: aload_2
    //   77: iload 5
    //   79: iconst_1
    //   80: isub
    //   81: iload 5
    //   83: invokevirtual 40	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   86: pop
    //   87: aload_0
    //   88: getfield 19	com/jxphone/b/a/b:a	Ljava/net/URL;
    //   91: invokevirtual 44	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   94: checkcast 46	javax/net/ssl/HttpsURLConnection
    //   97: astore 11
    //   99: aload 11
    //   101: iconst_1
    //   102: invokevirtual 50	javax/net/ssl/HttpsURLConnection:setDoOutput	(Z)V
    //   105: new 52	java/io/OutputStreamWriter
    //   108: dup
    //   109: aload 11
    //   111: invokevirtual 56	javax/net/ssl/HttpsURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   114: invokespecial 59	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   117: astore 8
    //   119: aload 8
    //   121: aload_2
    //   122: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   125: invokevirtual 66	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   128: aload 8
    //   130: invokevirtual 69	java/io/OutputStreamWriter:flush	()V
    //   133: new 71	java/io/InputStreamReader
    //   136: dup
    //   137: aload 11
    //   139: invokevirtual 75	javax/net/ssl/HttpsURLConnection:getInputStream	()Ljava/io/InputStream;
    //   142: invokespecial 78	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   145: astore 12
    //   147: aload 12
    //   149: invokevirtual 81	java/io/InputStreamReader:read	()I
    //   152: istore 14
    //   154: iload 14
    //   156: bipush 48
    //   158: if_icmpne +29 -> 187
    //   161: iconst_1
    //   162: istore 15
    //   164: aload 8
    //   166: invokevirtual 84	java/io/OutputStreamWriter:close	()V
    //   169: aload 12
    //   171: invokevirtual 85	java/io/InputStreamReader:close	()V
    //   174: aload 11
    //   176: ifnull +8 -> 184
    //   179: aload 11
    //   181: invokevirtual 88	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   184: iload 15
    //   186: ireturn
    //   187: iconst_0
    //   188: istore 15
    //   190: goto -26 -> 164
    //   193: astore 7
    //   195: aconst_null
    //   196: astore 8
    //   198: aconst_null
    //   199: astore 9
    //   201: aconst_null
    //   202: astore 10
    //   204: aload 8
    //   206: ifnull +8 -> 214
    //   209: aload 8
    //   211: invokevirtual 84	java/io/OutputStreamWriter:close	()V
    //   214: aload 9
    //   216: ifnull +8 -> 224
    //   219: aload 9
    //   221: invokevirtual 85	java/io/InputStreamReader:close	()V
    //   224: aload 10
    //   226: ifnull +8 -> 234
    //   229: aload 10
    //   231: invokevirtual 88	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   234: aload 7
    //   236: athrow
    //   237: astore 7
    //   239: aload 11
    //   241: astore 10
    //   243: aconst_null
    //   244: astore 8
    //   246: aconst_null
    //   247: astore 9
    //   249: goto -45 -> 204
    //   252: astore 7
    //   254: aload 11
    //   256: astore 10
    //   258: aconst_null
    //   259: astore 9
    //   261: goto -57 -> 204
    //   264: astore 13
    //   266: aload 11
    //   268: astore 10
    //   270: aload 13
    //   272: astore 7
    //   274: aload 12
    //   276: astore 9
    //   278: goto -74 -> 204
    //
    // Exception table:
    //   from	to	target	type
    //   87	99	193	finally
    //   99	119	237	finally
    //   119	147	252	finally
    //   147	154	264	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.b.a.b
 * JD-Core Version:    0.6.2
 */