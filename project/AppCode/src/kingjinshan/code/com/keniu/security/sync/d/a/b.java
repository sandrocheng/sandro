package com.keniu.security.sync.d.a;

import android.util.Log;
import com.keniu.security.sync.d.d.a.gn;
import com.keniu.security.sync.d.d.a.hm;
import com.keniu.security.sync.d.d.a.hp;
import com.keniu.security.sync.d.d.a.hq;
import com.keniu.security.sync.d.d.a.ib;
import com.keniu.security.sync.d.d.a.ic;
import com.keniu.security.sync.d.d.a.ie;
import com.keniu.security.sync.d.e.e;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public final class b
{
  private static final String a = "TpanServ.FudAction";
  private static final String b = "http://fud%d.cloud2.1tpan.com";
  private static final String c = "/query";
  private static final String d = "/read";
  private static final String e = "/write";
  private static final String f = ".tmp";
  private static final int g = 6;
  private static final long h = 512000L;
  private Map i = new HashMap();
  private Map j = new HashMap();

  private int a(int paramInt)
  {
    if ((this.i != null) && (this.i.containsKey(Integer.valueOf(paramInt))))
      this.i.put(Integer.valueOf(paramInt), Boolean.valueOf(true));
    return 0;
  }

  private static long a(long paramLong)
  {
    int k = (int)(paramLong / 512000L);
    if (k > 100);
    for (long l = paramLong / k; ; l = paramLong / 100L)
      return l;
  }

  public static hm a(gn paramgn)
  {
    try
    {
      hm localhm2 = b(paramgn);
      localhm1 = localhm2;
      return localhm1;
    }
    catch (Exception localException)
    {
      while (true)
        hm localhm1 = c(paramgn);
    }
  }

  // ERROR //
  private static ie a(gn paramgn, File paramFile)
  {
    // Byte code:
    //   0: invokestatic 83	com/keniu/security/sync/d/d/a/ib:q	()Lcom/keniu/security/sync/d/d/a/ic;
    //   3: astore_2
    //   4: aload_2
    //   5: lconst_0
    //   6: invokevirtual 88	com/keniu/security/sync/d/d/a/ic:a	(J)Lcom/keniu/security/sync/d/d/a/ic;
    //   9: pop
    //   10: aload_2
    //   11: aload_0
    //   12: invokevirtual 91	com/keniu/security/sync/d/d/a/ic:a	(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/ic;
    //   15: pop
    //   16: aload_2
    //   17: invokevirtual 94	com/keniu/security/sync/d/d/a/ic:i	()Lcom/keniu/security/sync/d/d/a/ib;
    //   20: invokevirtual 97	com/keniu/security/sync/d/d/a/ib:d	()[B
    //   23: iconst_2
    //   24: invokestatic 102	com/hoi/a/a:a	([BI)Ljava/lang/String;
    //   27: astore 5
    //   29: new 104	com/keniu/security/sync/d/e/a
    //   32: dup
    //   33: ldc 106
    //   35: invokespecial 109	com/keniu/security/sync/d/e/a:<init>	(Ljava/lang/String;)V
    //   38: astore 6
    //   40: aload 6
    //   42: ldc 110
    //   44: aload 5
    //   46: invokevirtual 113	com/keniu/security/sync/d/e/a:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   49: aload 6
    //   51: aload_1
    //   52: invokevirtual 116	com/keniu/security/sync/d/e/a:a	(Ljava/io/File;)Ljava/io/InputStream;
    //   55: pop
    //   56: aload 6
    //   58: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   61: pop
    //   62: aconst_null
    //   63: areturn
    //   64: astore 7
    //   66: aconst_null
    //   67: astore 6
    //   69: aload 6
    //   71: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   74: pop
    //   75: aload 7
    //   77: athrow
    //   78: astore 7
    //   80: goto -11 -> 69
    //
    // Exception table:
    //   from	to	target	type
    //   29	40	64	finally
    //   40	56	78	finally
  }

  private static com.keniu.security.sync.d.e.a a(com.keniu.security.sync.d.e.a parama)
  {
    if (parama != null)
      parama.d();
    return null;
  }

  private static InputStream a(InputStream paramInputStream)
  {
    if (paramInputStream != null);
    while (true)
    {
      try
      {
        paramInputStream.close();
        localInputStream = null;
        return localInputStream;
      }
      catch (IOException localIOException)
      {
        Log.e("TpanServ.FudAction", localIOException.getMessage(), localIOException);
        continue;
      }
      InputStream localInputStream = paramInputStream;
    }
  }

  private static OutputStream a(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null);
    while (true)
    {
      try
      {
        paramOutputStream.close();
        localOutputStream = null;
        return localOutputStream;
      }
      catch (IOException localIOException)
      {
        Log.e("TpanServ.FudAction", localIOException.getMessage(), localIOException);
        continue;
      }
      OutputStream localOutputStream = paramOutputStream;
    }
  }

  private static String a(gn paramgn, int paramInt)
  {
    hq localhq = hp.u();
    localhq.a(paramgn);
    localhq.a(paramInt);
    String str1 = URLEncoder.encode(com.hoi.a.a.a(localhq.i().d(), 2));
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramgn.q());
    String str2 = String.format("http://fud%d.cloud2.1tpan.com", arrayOfObject);
    return str2 + "/read" + "?c=" + str1;
  }

  private int b(int paramInt)
  {
    if ((this.j != null) && (this.j.containsKey(Integer.valueOf(paramInt))))
      this.j.put(Integer.valueOf(paramInt), Boolean.valueOf(true));
    return 0;
  }

  // ERROR //
  private static hm b(gn paramgn)
  {
    // Byte code:
    //   0: invokestatic 196	com/keniu/security/sync/d/d/a/hj:m	()Lcom/keniu/security/sync/d/d/a/hk;
    //   3: astore_1
    //   4: aload_1
    //   5: aload_0
    //   6: invokevirtual 201	com/keniu/security/sync/d/d/a/hk:a	(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hk;
    //   9: pop
    //   10: aload_1
    //   11: invokevirtual 204	com/keniu/security/sync/d/d/a/hk:i	()Lcom/keniu/security/sync/d/d/a/hj;
    //   14: invokevirtual 205	com/keniu/security/sync/d/d/a/hj:d	()[B
    //   17: iconst_2
    //   18: invokestatic 102	com/hoi/a/a:a	([BI)Ljava/lang/String;
    //   21: astore_3
    //   22: iconst_1
    //   23: anewarray 4	java/lang/Object
    //   26: astore 9
    //   28: aload 9
    //   30: iconst_0
    //   31: aload_0
    //   32: invokevirtual 172	com/keniu/security/sync/d/d/a/gn:q	()I
    //   35: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   38: aastore
    //   39: ldc 11
    //   41: aload 9
    //   43: invokestatic 178	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   46: astore 10
    //   48: new 104	com/keniu/security/sync/d/e/a
    //   51: dup
    //   52: new 180	java/lang/StringBuilder
    //   55: dup
    //   56: invokespecial 181	java/lang/StringBuilder:<init>	()V
    //   59: aload 10
    //   61: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: ldc 14
    //   66: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: invokespecial 109	com/keniu/security/sync/d/e/a:<init>	(Ljava/lang/String;)V
    //   75: astore 6
    //   77: aload 6
    //   79: ldc 110
    //   81: aload_3
    //   82: invokevirtual 113	com/keniu/security/sync/d/e/a:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   85: ldc 207
    //   87: invokevirtual 210	java/lang/String:getBytes	()[B
    //   90: astore 11
    //   92: aload 6
    //   94: ldc 212
    //   96: ldc 214
    //   98: invokevirtual 113	com/keniu/security/sync/d/e/a:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   101: aload 6
    //   103: ldc 216
    //   105: ldc 218
    //   107: invokevirtual 113	com/keniu/security/sync/d/e/a:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   110: aload 6
    //   112: ldc 220
    //   114: aload 11
    //   116: arraylength
    //   117: invokestatic 223	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   120: invokevirtual 113	com/keniu/security/sync/d/e/a:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   123: aload 6
    //   125: invokevirtual 226	com/keniu/security/sync/d/e/a:b	()Ljava/io/OutputStream;
    //   128: aload 11
    //   130: invokevirtual 230	java/io/OutputStream:write	([B)V
    //   133: aload 6
    //   135: invokevirtual 233	com/keniu/security/sync/d/e/a:c	()Ljava/io/InputStream;
    //   138: astore 12
    //   140: aload 12
    //   142: invokestatic 238	com/keniu/security/sync/d/d/a/hm:a	(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hm;
    //   145: astore 14
    //   147: aload 12
    //   149: invokestatic 240	com/keniu/security/sync/d/a/b:a	(Ljava/io/InputStream;)Ljava/io/InputStream;
    //   152: pop
    //   153: aload 6
    //   155: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   158: pop
    //   159: aload 14
    //   161: areturn
    //   162: astore 4
    //   164: aconst_null
    //   165: astore 5
    //   167: aconst_null
    //   168: astore 6
    //   170: aload 5
    //   172: invokestatic 240	com/keniu/security/sync/d/a/b:a	(Ljava/io/InputStream;)Ljava/io/InputStream;
    //   175: pop
    //   176: aload 6
    //   178: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   181: pop
    //   182: aload 4
    //   184: athrow
    //   185: astore 4
    //   187: aconst_null
    //   188: astore 5
    //   190: goto -20 -> 170
    //   193: astore 13
    //   195: aload 12
    //   197: astore 5
    //   199: aload 13
    //   201: astore 4
    //   203: goto -33 -> 170
    //
    // Exception table:
    //   from	to	target	type
    //   22	77	162	finally
    //   77	140	185	finally
    //   140	147	193	finally
  }

  // ERROR //
  private static com.keniu.security.sync.d.d.a.hs b(gn paramgn, String paramString)
  {
    // Byte code:
    //   0: invokestatic 149	com/keniu/security/sync/d/d/a/hp:u	()Lcom/keniu/security/sync/d/d/a/hq;
    //   3: astore_2
    //   4: aload_2
    //   5: aload_0
    //   6: invokevirtual 154	com/keniu/security/sync/d/d/a/hq:a	(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hq;
    //   9: pop
    //   10: aload_2
    //   11: iconst_1
    //   12: invokevirtual 157	com/keniu/security/sync/d/d/a/hq:a	(I)Lcom/keniu/security/sync/d/d/a/hq;
    //   15: pop
    //   16: aload_2
    //   17: invokevirtual 160	com/keniu/security/sync/d/d/a/hq:i	()Lcom/keniu/security/sync/d/d/a/hp;
    //   20: invokevirtual 161	com/keniu/security/sync/d/d/a/hp:d	()[B
    //   23: iconst_2
    //   24: invokestatic 102	com/hoi/a/a:a	([BI)Ljava/lang/String;
    //   27: astore 5
    //   29: iconst_1
    //   30: anewarray 4	java/lang/Object
    //   33: astore 23
    //   35: aload 23
    //   37: iconst_0
    //   38: aload_0
    //   39: invokevirtual 172	com/keniu/security/sync/d/d/a/gn:q	()I
    //   42: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   45: aastore
    //   46: ldc 11
    //   48: aload 23
    //   50: invokestatic 178	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   53: astore 24
    //   55: new 104	com/keniu/security/sync/d/e/a
    //   58: dup
    //   59: new 180	java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial 181	java/lang/StringBuilder:<init>	()V
    //   66: aload 24
    //   68: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: ldc 17
    //   73: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokespecial 109	com/keniu/security/sync/d/e/a:<init>	(Ljava/lang/String;)V
    //   82: astore 8
    //   84: aload 8
    //   86: ldc 110
    //   88: aload 5
    //   90: invokevirtual 113	com/keniu/security/sync/d/e/a:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   93: aload 8
    //   95: invokevirtual 233	com/keniu/security/sync/d/e/a:c	()Ljava/io/InputStream;
    //   98: astore 25
    //   100: aload 8
    //   102: ldc 247
    //   104: invokevirtual 249	com/keniu/security/sync/d/e/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   107: iconst_0
    //   108: invokestatic 252	com/hoi/a/a:a	(Ljava/lang/String;I)[B
    //   111: invokestatic 257	com/keniu/security/sync/d/d/a/hs:a	([B)Lcom/keniu/security/sync/d/d/a/hs;
    //   114: astore 29
    //   116: aload 29
    //   118: astore 7
    //   120: new 259	java/io/File
    //   123: dup
    //   124: aload_1
    //   125: invokespecial 260	java/io/File:<init>	(Ljava/lang/String;)V
    //   128: astore 30
    //   130: aload 30
    //   132: invokevirtual 264	java/io/File:getParentFile	()Ljava/io/File;
    //   135: invokevirtual 268	java/io/File:exists	()Z
    //   138: ifne +12 -> 150
    //   141: aload 30
    //   143: invokevirtual 264	java/io/File:getParentFile	()Ljava/io/File;
    //   146: invokevirtual 271	java/io/File:mkdirs	()Z
    //   149: pop
    //   150: new 273	java/io/FileOutputStream
    //   153: dup
    //   154: aload 30
    //   156: invokespecial 276	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   159: astore 10
    //   161: sipush 16384
    //   164: newarray byte
    //   166: astore 35
    //   168: iconst_0
    //   169: istore 36
    //   171: aload 25
    //   173: aload 35
    //   175: invokevirtual 280	java/io/InputStream:read	([B)I
    //   178: istore 40
    //   180: iload 40
    //   182: iconst_m1
    //   183: if_icmpeq +111 -> 294
    //   186: aload 10
    //   188: aload 35
    //   190: iconst_0
    //   191: iload 40
    //   193: invokevirtual 283	java/io/OutputStream:write	([BII)V
    //   196: iconst_0
    //   197: istore 36
    //   199: goto -28 -> 171
    //   202: astore 37
    //   204: iinc 36 1
    //   207: iconst_1
    //   208: anewarray 4	java/lang/Object
    //   211: astore 38
    //   213: aload 38
    //   215: iconst_0
    //   216: iload 36
    //   218: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   221: aastore
    //   222: ldc 8
    //   224: ldc_w 285
    //   227: aload 38
    //   229: invokestatic 178	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   232: invokestatic 288	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   235: pop
    //   236: iload 36
    //   238: bipush 6
    //   240: if_icmple -69 -> 171
    //   243: aload 37
    //   245: athrow
    //   246: astore 34
    //   248: aload 25
    //   250: astore 9
    //   252: aload 34
    //   254: astore 6
    //   256: ldc 8
    //   258: aload 6
    //   260: invokevirtual 289	java/io/UnsupportedEncodingException:getMessage	()Ljava/lang/String;
    //   263: aload 6
    //   265: invokestatic 138	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   268: pop
    //   269: aload 10
    //   271: invokestatic 291	com/keniu/security/sync/d/a/b:a	(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    //   274: pop
    //   275: aload 9
    //   277: invokestatic 240	com/keniu/security/sync/d/a/b:a	(Ljava/io/InputStream;)Ljava/io/InputStream;
    //   280: pop
    //   281: aload 8
    //   283: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   286: pop
    //   287: aload 7
    //   289: astore 22
    //   291: aload 22
    //   293: areturn
    //   294: aload 10
    //   296: invokestatic 291	com/keniu/security/sync/d/a/b:a	(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    //   299: pop
    //   300: aload 25
    //   302: invokestatic 240	com/keniu/security/sync/d/a/b:a	(Ljava/io/InputStream;)Ljava/io/InputStream;
    //   305: pop
    //   306: aload 8
    //   308: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   311: pop
    //   312: aload 7
    //   314: astore 22
    //   316: goto -25 -> 291
    //   319: astore 11
    //   321: aconst_null
    //   322: astore 12
    //   324: aconst_null
    //   325: astore 13
    //   327: aconst_null
    //   328: astore 14
    //   330: aload 14
    //   332: invokestatic 291	com/keniu/security/sync/d/a/b:a	(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    //   335: pop
    //   336: aload 13
    //   338: invokestatic 240	com/keniu/security/sync/d/a/b:a	(Ljava/io/InputStream;)Ljava/io/InputStream;
    //   341: pop
    //   342: aload 12
    //   344: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   347: pop
    //   348: aload 11
    //   350: athrow
    //   351: astore 11
    //   353: aload 8
    //   355: astore 12
    //   357: aconst_null
    //   358: astore 13
    //   360: aconst_null
    //   361: astore 14
    //   363: goto -33 -> 330
    //   366: astore 27
    //   368: aload 8
    //   370: astore 28
    //   372: aload 25
    //   374: astore 13
    //   376: aload 27
    //   378: astore 11
    //   380: aload 28
    //   382: astore 12
    //   384: aconst_null
    //   385: astore 14
    //   387: goto -57 -> 330
    //   390: astore 32
    //   392: aload 10
    //   394: astore 14
    //   396: aload 8
    //   398: astore 33
    //   400: aload 25
    //   402: astore 13
    //   404: aload 32
    //   406: astore 11
    //   408: aload 33
    //   410: astore 12
    //   412: goto -82 -> 330
    //   415: astore 11
    //   417: aload 8
    //   419: astore 12
    //   421: aload 9
    //   423: astore 13
    //   425: aload 10
    //   427: astore 14
    //   429: goto -99 -> 330
    //   432: astore 6
    //   434: aconst_null
    //   435: astore 7
    //   437: aconst_null
    //   438: astore 8
    //   440: aconst_null
    //   441: astore 9
    //   443: aconst_null
    //   444: astore 10
    //   446: goto -190 -> 256
    //   449: astore 6
    //   451: aconst_null
    //   452: astore 7
    //   454: aconst_null
    //   455: astore 9
    //   457: aconst_null
    //   458: astore 10
    //   460: goto -204 -> 256
    //   463: astore 26
    //   465: aload 25
    //   467: astore 9
    //   469: aload 26
    //   471: astore 6
    //   473: aconst_null
    //   474: astore 7
    //   476: aconst_null
    //   477: astore 10
    //   479: goto -223 -> 256
    //   482: astore 31
    //   484: aload 31
    //   486: astore 6
    //   488: aload 25
    //   490: astore 9
    //   492: aconst_null
    //   493: astore 10
    //   495: goto -239 -> 256
    //
    // Exception table:
    //   from	to	target	type
    //   171	180	202	java/net/SocketTimeoutException
    //   161	168	246	java/io/UnsupportedEncodingException
    //   171	180	246	java/io/UnsupportedEncodingException
    //   186	246	246	java/io/UnsupportedEncodingException
    //   29	84	319	finally
    //   84	100	351	finally
    //   100	116	366	finally
    //   120	161	366	finally
    //   161	168	390	finally
    //   171	180	390	finally
    //   186	246	390	finally
    //   256	269	415	finally
    //   29	84	432	java/io/UnsupportedEncodingException
    //   84	100	449	java/io/UnsupportedEncodingException
    //   100	116	463	java/io/UnsupportedEncodingException
    //   120	161	482	java/io/UnsupportedEncodingException
  }

  // ERROR //
  private static hm c(gn paramgn)
  {
    // Byte code:
    //   0: invokestatic 196	com/keniu/security/sync/d/d/a/hj:m	()Lcom/keniu/security/sync/d/d/a/hk;
    //   3: astore_1
    //   4: aload_1
    //   5: aload_0
    //   6: invokevirtual 201	com/keniu/security/sync/d/d/a/hk:a	(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hk;
    //   9: pop
    //   10: aload_1
    //   11: invokevirtual 204	com/keniu/security/sync/d/d/a/hk:i	()Lcom/keniu/security/sync/d/d/a/hj;
    //   14: invokevirtual 205	com/keniu/security/sync/d/d/a/hj:d	()[B
    //   17: iconst_2
    //   18: invokestatic 102	com/hoi/a/a:a	([BI)Ljava/lang/String;
    //   21: astore_3
    //   22: iconst_1
    //   23: anewarray 4	java/lang/Object
    //   26: astore 9
    //   28: aload 9
    //   30: iconst_0
    //   31: aload_0
    //   32: invokevirtual 172	com/keniu/security/sync/d/d/a/gn:q	()I
    //   35: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   38: aastore
    //   39: ldc 11
    //   41: aload 9
    //   43: invokestatic 178	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   46: astore 10
    //   48: new 104	com/keniu/security/sync/d/e/a
    //   51: dup
    //   52: new 180	java/lang/StringBuilder
    //   55: dup
    //   56: invokespecial 181	java/lang/StringBuilder:<init>	()V
    //   59: aload 10
    //   61: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: ldc 14
    //   66: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: invokespecial 109	com/keniu/security/sync/d/e/a:<init>	(Ljava/lang/String;)V
    //   75: astore 6
    //   77: aload 6
    //   79: ldc 110
    //   81: aload_3
    //   82: invokevirtual 113	com/keniu/security/sync/d/e/a:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   85: aload 6
    //   87: invokevirtual 293	com/keniu/security/sync/d/e/a:a	()V
    //   90: aload 6
    //   92: invokevirtual 233	com/keniu/security/sync/d/e/a:c	()Ljava/io/InputStream;
    //   95: astore 11
    //   97: aload 11
    //   99: invokestatic 238	com/keniu/security/sync/d/d/a/hm:a	(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hm;
    //   102: astore 13
    //   104: aload 11
    //   106: invokestatic 240	com/keniu/security/sync/d/a/b:a	(Ljava/io/InputStream;)Ljava/io/InputStream;
    //   109: pop
    //   110: aload 6
    //   112: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   115: pop
    //   116: aload 13
    //   118: areturn
    //   119: astore 4
    //   121: aconst_null
    //   122: astore 5
    //   124: aconst_null
    //   125: astore 6
    //   127: aload 5
    //   129: invokestatic 240	com/keniu/security/sync/d/a/b:a	(Ljava/io/InputStream;)Ljava/io/InputStream;
    //   132: pop
    //   133: aload 6
    //   135: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   138: pop
    //   139: aload 4
    //   141: athrow
    //   142: astore 4
    //   144: aconst_null
    //   145: astore 5
    //   147: goto -20 -> 127
    //   150: astore 12
    //   152: aload 11
    //   154: astore 5
    //   156: aload 12
    //   158: astore 4
    //   160: goto -33 -> 127
    //
    // Exception table:
    //   from	to	target	type
    //   22	77	119	finally
    //   77	97	142	finally
    //   97	104	150	finally
  }

  // ERROR //
  public final com.keniu.security.sync.d.d.a.hs a(gn paramgn, String paramString)
  {
    // Byte code:
    //   0: invokestatic 149	com/keniu/security/sync/d/d/a/hp:u	()Lcom/keniu/security/sync/d/d/a/hq;
    //   3: astore_3
    //   4: aload_3
    //   5: aload_1
    //   6: invokevirtual 154	com/keniu/security/sync/d/d/a/hq:a	(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hq;
    //   9: pop
    //   10: aload_3
    //   11: iconst_0
    //   12: invokevirtual 157	com/keniu/security/sync/d/d/a/hq:a	(I)Lcom/keniu/security/sync/d/d/a/hq;
    //   15: pop
    //   16: aload_3
    //   17: invokevirtual 160	com/keniu/security/sync/d/d/a/hq:i	()Lcom/keniu/security/sync/d/d/a/hp;
    //   20: invokevirtual 161	com/keniu/security/sync/d/d/a/hp:d	()[B
    //   23: iconst_2
    //   24: invokestatic 102	com/hoi/a/a:a	([BI)Ljava/lang/String;
    //   27: astore 6
    //   29: iconst_1
    //   30: anewarray 4	java/lang/Object
    //   33: astore 26
    //   35: aload 26
    //   37: iconst_0
    //   38: aload_1
    //   39: invokevirtual 172	com/keniu/security/sync/d/d/a/gn:q	()I
    //   42: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   45: aastore
    //   46: ldc 11
    //   48: aload 26
    //   50: invokestatic 178	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   53: astore 27
    //   55: new 104	com/keniu/security/sync/d/e/a
    //   58: dup
    //   59: new 180	java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial 181	java/lang/StringBuilder:<init>	()V
    //   66: aload 27
    //   68: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: ldc 17
    //   73: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokespecial 109	com/keniu/security/sync/d/e/a:<init>	(Ljava/lang/String;)V
    //   82: astore 28
    //   84: aload 28
    //   86: ldc 110
    //   88: aload 6
    //   90: invokevirtual 113	com/keniu/security/sync/d/e/a:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   93: aload_0
    //   94: getfield 42	com/keniu/security/sync/d/a/b:i	Ljava/util/Map;
    //   97: iconst_0
    //   98: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   101: iconst_0
    //   102: invokestatic 62	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   105: invokeinterface 66 3 0
    //   110: pop
    //   111: aload 28
    //   113: invokevirtual 233	com/keniu/security/sync/d/e/a:c	()Ljava/io/InputStream;
    //   116: astore 30
    //   118: aload 28
    //   120: ldc 247
    //   122: invokevirtual 249	com/keniu/security/sync/d/e/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   125: iconst_0
    //   126: invokestatic 252	com/hoi/a/a:a	(Ljava/lang/String;I)[B
    //   129: invokestatic 257	com/keniu/security/sync/d/d/a/hs:a	([B)Lcom/keniu/security/sync/d/d/a/hs;
    //   132: astore 33
    //   134: new 259	java/io/File
    //   137: dup
    //   138: new 180	java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial 181	java/lang/StringBuilder:<init>	()V
    //   145: aload_2
    //   146: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: ldc 23
    //   151: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   157: invokespecial 260	java/io/File:<init>	(Ljava/lang/String;)V
    //   160: astore 34
    //   162: aload 34
    //   164: invokevirtual 264	java/io/File:getParentFile	()Ljava/io/File;
    //   167: invokevirtual 268	java/io/File:exists	()Z
    //   170: ifne +12 -> 182
    //   173: aload 34
    //   175: invokevirtual 264	java/io/File:getParentFile	()Ljava/io/File;
    //   178: invokevirtual 271	java/io/File:mkdirs	()Z
    //   181: pop
    //   182: aload_1
    //   183: invokevirtual 299	com/keniu/security/sync/d/d/a/gn:o	()J
    //   186: lstore 36
    //   188: aload 34
    //   190: invokestatic 304	com/keniu/security/sync/d/e/f:a	(Ljava/io/File;)J
    //   193: lload 36
    //   195: lcmp
    //   196: ifge +84 -> 280
    //   199: new 306	com/keniu/security/sync/d/b/a
    //   202: dup
    //   203: invokespecial 307	com/keniu/security/sync/d/b/a:<init>	()V
    //   206: athrow
    //   207: astore 35
    //   209: aconst_null
    //   210: astore 11
    //   212: aload 33
    //   214: astore 8
    //   216: aload 28
    //   218: astore 9
    //   220: aload 35
    //   222: astore 7
    //   224: aload 30
    //   226: astore 10
    //   228: ldc 8
    //   230: aload 7
    //   232: invokevirtual 289	java/io/UnsupportedEncodingException:getMessage	()Ljava/lang/String;
    //   235: aload 7
    //   237: invokestatic 138	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   240: pop
    //   241: aload 11
    //   243: invokestatic 291	com/keniu/security/sync/d/a/b:a	(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    //   246: pop
    //   247: aload 10
    //   249: invokestatic 240	com/keniu/security/sync/d/a/b:a	(Ljava/io/InputStream;)Ljava/io/InputStream;
    //   252: pop
    //   253: aload 9
    //   255: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   258: pop
    //   259: aload_0
    //   260: getfield 42	com/keniu/security/sync/d/a/b:i	Ljava/util/Map;
    //   263: iconst_0
    //   264: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   267: invokeinterface 311 2 0
    //   272: pop
    //   273: aload 8
    //   275: astore 25
    //   277: aload 25
    //   279: areturn
    //   280: iconst_0
    //   281: istore 38
    //   283: new 273	java/io/FileOutputStream
    //   286: dup
    //   287: aload 34
    //   289: invokespecial 276	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   292: astore 39
    //   294: sipush 16384
    //   297: newarray byte
    //   299: astore 42
    //   301: aload 30
    //   303: aload 42
    //   305: invokevirtual 280	java/io/InputStream:read	([B)I
    //   308: istore 47
    //   310: iload 47
    //   312: iconst_m1
    //   313: if_icmpne +143 -> 456
    //   316: new 259	java/io/File
    //   319: dup
    //   320: aload_2
    //   321: invokespecial 260	java/io/File:<init>	(Ljava/lang/String;)V
    //   324: astore 48
    //   326: aload 34
    //   328: aload 48
    //   330: invokevirtual 315	java/io/File:renameTo	(Ljava/io/File;)Z
    //   333: pop
    //   334: aload 39
    //   336: invokestatic 291	com/keniu/security/sync/d/a/b:a	(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    //   339: pop
    //   340: aload 30
    //   342: invokestatic 240	com/keniu/security/sync/d/a/b:a	(Ljava/io/InputStream;)Ljava/io/InputStream;
    //   345: pop
    //   346: aload 28
    //   348: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   351: pop
    //   352: aload_0
    //   353: getfield 42	com/keniu/security/sync/d/a/b:i	Ljava/util/Map;
    //   356: iconst_0
    //   357: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   360: invokeinterface 311 2 0
    //   365: pop
    //   366: aload 33
    //   368: astore 25
    //   370: goto -93 -> 277
    //   373: astore 43
    //   375: iinc 38 1
    //   378: iconst_1
    //   379: anewarray 4	java/lang/Object
    //   382: astore 44
    //   384: aload 44
    //   386: iconst_0
    //   387: iload 38
    //   389: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   392: aastore
    //   393: ldc 8
    //   395: ldc_w 285
    //   398: aload 44
    //   400: invokestatic 178	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   403: invokestatic 288	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   406: pop
    //   407: iload 38
    //   409: bipush 6
    //   411: if_icmple +31 -> 442
    //   414: aload 43
    //   416: athrow
    //   417: astore 41
    //   419: aload 30
    //   421: astore 10
    //   423: aload 39
    //   425: astore 11
    //   427: aload 41
    //   429: astore 7
    //   431: aload 33
    //   433: astore 8
    //   435: aload 28
    //   437: astore 9
    //   439: goto -211 -> 228
    //   442: ldc2_w 316
    //   445: invokestatic 323	java/lang/Thread:sleep	(J)V
    //   448: goto -147 -> 301
    //   451: astore 46
    //   453: goto -152 -> 301
    //   456: aload_0
    //   457: getfield 42	com/keniu/security/sync/d/a/b:i	Ljava/util/Map;
    //   460: ifnull +105 -> 565
    //   463: aload_0
    //   464: getfield 42	com/keniu/security/sync/d/a/b:i	Ljava/util/Map;
    //   467: iconst_0
    //   468: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   471: invokeinterface 57 2 0
    //   476: ifeq +89 -> 565
    //   479: aload_0
    //   480: getfield 42	com/keniu/security/sync/d/a/b:i	Ljava/util/Map;
    //   483: iconst_0
    //   484: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   487: invokeinterface 326 2 0
    //   492: checkcast 59	java/lang/Boolean
    //   495: invokevirtual 329	java/lang/Boolean:booleanValue	()Z
    //   498: ifeq +67 -> 565
    //   501: new 331	com/keniu/security/sync/d/e/e
    //   504: dup
    //   505: ldc_w 333
    //   508: invokespecial 334	com/keniu/security/sync/d/e/e:<init>	(Ljava/lang/String;)V
    //   511: athrow
    //   512: astore 40
    //   514: aload 30
    //   516: astore 14
    //   518: aload 39
    //   520: astore 15
    //   522: aload 40
    //   524: astore 12
    //   526: aload 28
    //   528: astore 13
    //   530: aload 15
    //   532: invokestatic 291	com/keniu/security/sync/d/a/b:a	(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    //   535: pop
    //   536: aload 14
    //   538: invokestatic 240	com/keniu/security/sync/d/a/b:a	(Ljava/io/InputStream;)Ljava/io/InputStream;
    //   541: pop
    //   542: aload 13
    //   544: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   547: pop
    //   548: aload_0
    //   549: getfield 42	com/keniu/security/sync/d/a/b:i	Ljava/util/Map;
    //   552: iconst_0
    //   553: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   556: invokeinterface 311 2 0
    //   561: pop
    //   562: aload 12
    //   564: athrow
    //   565: aload 39
    //   567: aload 42
    //   569: iconst_0
    //   570: iload 47
    //   572: invokevirtual 283	java/io/OutputStream:write	([BII)V
    //   575: iconst_0
    //   576: istore 38
    //   578: goto -277 -> 301
    //   581: astore 12
    //   583: aconst_null
    //   584: astore 13
    //   586: aconst_null
    //   587: astore 14
    //   589: aconst_null
    //   590: astore 15
    //   592: goto -62 -> 530
    //   595: astore 12
    //   597: aload 28
    //   599: astore 13
    //   601: aconst_null
    //   602: astore 14
    //   604: aconst_null
    //   605: astore 15
    //   607: goto -77 -> 530
    //   610: astore 32
    //   612: aload 28
    //   614: astore 13
    //   616: aload 32
    //   618: astore 12
    //   620: aload 30
    //   622: astore 14
    //   624: aconst_null
    //   625: astore 15
    //   627: goto -97 -> 530
    //   630: astore 12
    //   632: aload 9
    //   634: astore 13
    //   636: aload 10
    //   638: astore 14
    //   640: aload 11
    //   642: astore 15
    //   644: goto -114 -> 530
    //   647: astore 7
    //   649: aconst_null
    //   650: astore 8
    //   652: aconst_null
    //   653: astore 9
    //   655: aconst_null
    //   656: astore 10
    //   658: aconst_null
    //   659: astore 11
    //   661: goto -433 -> 228
    //   664: astore 7
    //   666: aload 28
    //   668: astore 9
    //   670: aconst_null
    //   671: astore 8
    //   673: aconst_null
    //   674: astore 10
    //   676: aconst_null
    //   677: astore 11
    //   679: goto -451 -> 228
    //   682: astore 31
    //   684: aload 30
    //   686: astore 10
    //   688: aload 31
    //   690: astore 7
    //   692: aload 28
    //   694: astore 9
    //   696: aconst_null
    //   697: astore 8
    //   699: aconst_null
    //   700: astore 11
    //   702: goto -474 -> 228
    //
    // Exception table:
    //   from	to	target	type
    //   134	207	207	java/io/UnsupportedEncodingException
    //   283	294	207	java/io/UnsupportedEncodingException
    //   301	310	373	java/net/SocketTimeoutException
    //   294	301	417	java/io/UnsupportedEncodingException
    //   301	310	417	java/io/UnsupportedEncodingException
    //   316	334	417	java/io/UnsupportedEncodingException
    //   378	417	417	java/io/UnsupportedEncodingException
    //   442	448	417	java/io/UnsupportedEncodingException
    //   456	512	417	java/io/UnsupportedEncodingException
    //   565	575	417	java/io/UnsupportedEncodingException
    //   442	448	451	java/lang/InterruptedException
    //   294	301	512	finally
    //   301	310	512	finally
    //   316	334	512	finally
    //   378	417	512	finally
    //   442	448	512	finally
    //   456	512	512	finally
    //   565	575	512	finally
    //   29	84	581	finally
    //   84	118	595	finally
    //   118	134	610	finally
    //   134	207	610	finally
    //   283	294	610	finally
    //   228	241	630	finally
    //   29	84	647	java/io/UnsupportedEncodingException
    //   84	118	664	java/io/UnsupportedEncodingException
    //   118	134	682	java/io/UnsupportedEncodingException
  }

  // ERROR //
  public final com.keniu.security.sync.d.d.a.hs a(java.util.List paramList, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: sipush 16384
    //   5: newarray byte
    //   7: astore 20
    //   9: ldc_w 336
    //   12: aload_1
    //   13: invokeinterface 341 1 0
    //   18: imul
    //   19: i2l
    //   20: lstore 21
    //   22: new 259	java/io/File
    //   25: dup
    //   26: new 180	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 181	java/lang/StringBuilder:<init>	()V
    //   33: aload_2
    //   34: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: ldc 23
    //   39: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: invokevirtual 190	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   45: invokespecial 260	java/io/File:<init>	(Ljava/lang/String;)V
    //   48: astore 23
    //   50: aload 23
    //   52: invokevirtual 264	java/io/File:getParentFile	()Ljava/io/File;
    //   55: invokevirtual 268	java/io/File:exists	()Z
    //   58: ifne +12 -> 70
    //   61: aload 23
    //   63: invokevirtual 264	java/io/File:getParentFile	()Ljava/io/File;
    //   66: invokevirtual 271	java/io/File:mkdirs	()Z
    //   69: pop
    //   70: aload 23
    //   72: invokestatic 304	com/keniu/security/sync/d/e/f:a	(Ljava/io/File;)J
    //   75: lload 21
    //   77: lcmp
    //   78: ifge +73 -> 151
    //   81: new 306	com/keniu/security/sync/d/b/a
    //   84: dup
    //   85: invokespecial 307	com/keniu/security/sync/d/b/a:<init>	()V
    //   88: athrow
    //   89: astore 13
    //   91: aconst_null
    //   92: astore 8
    //   94: aload 13
    //   96: astore 14
    //   98: aconst_null
    //   99: astore 6
    //   101: aconst_null
    //   102: astore 7
    //   104: ldc 8
    //   106: aload 14
    //   108: invokevirtual 289	java/io/UnsupportedEncodingException:getMessage	()Ljava/lang/String;
    //   111: aload 14
    //   113: invokestatic 138	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   116: pop
    //   117: aload 8
    //   119: invokestatic 291	com/keniu/security/sync/d/a/b:a	(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    //   122: pop
    //   123: aload 7
    //   125: invokestatic 240	com/keniu/security/sync/d/a/b:a	(Ljava/io/InputStream;)Ljava/io/InputStream;
    //   128: pop
    //   129: aload 6
    //   131: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   134: pop
    //   135: aload_0
    //   136: getfield 42	com/keniu/security/sync/d/a/b:i	Ljava/util/Map;
    //   139: iconst_0
    //   140: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   143: invokeinterface 311 2 0
    //   148: pop
    //   149: aconst_null
    //   150: areturn
    //   151: new 273	java/io/FileOutputStream
    //   154: dup
    //   155: aload 23
    //   157: invokespecial 276	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   160: astore 24
    //   162: aload_1
    //   163: invokeinterface 345 1 0
    //   168: astore 25
    //   170: aconst_null
    //   171: astore 26
    //   173: iconst_0
    //   174: istore 27
    //   176: aload 25
    //   178: invokeinterface 350 1 0
    //   183: ifeq +255 -> 438
    //   186: aload 25
    //   188: invokeinterface 354 1 0
    //   193: checkcast 174	java/lang/String
    //   196: astore 34
    //   198: new 104	com/keniu/security/sync/d/e/a
    //   201: dup
    //   202: aload 34
    //   204: invokespecial 109	com/keniu/security/sync/d/e/a:<init>	(Ljava/lang/String;)V
    //   207: astore 35
    //   209: aload_0
    //   210: getfield 42	com/keniu/security/sync/d/a/b:i	Ljava/util/Map;
    //   213: iconst_0
    //   214: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   217: iconst_0
    //   218: invokestatic 62	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   221: invokeinterface 66 3 0
    //   226: pop
    //   227: aload 35
    //   229: invokevirtual 233	com/keniu/security/sync/d/e/a:c	()Ljava/io/InputStream;
    //   232: astore 37
    //   234: aload 37
    //   236: astore 7
    //   238: aload 7
    //   240: aload 20
    //   242: invokevirtual 280	java/io/InputStream:read	([B)I
    //   245: istore 42
    //   247: iload 42
    //   249: iconst_m1
    //   250: if_icmpeq +178 -> 428
    //   253: aload_0
    //   254: getfield 42	com/keniu/security/sync/d/a/b:i	Ljava/util/Map;
    //   257: ifnull +155 -> 412
    //   260: aload_0
    //   261: getfield 42	com/keniu/security/sync/d/a/b:i	Ljava/util/Map;
    //   264: iconst_0
    //   265: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   268: invokeinterface 57 2 0
    //   273: ifeq +139 -> 412
    //   276: aload_0
    //   277: getfield 42	com/keniu/security/sync/d/a/b:i	Ljava/util/Map;
    //   280: iconst_0
    //   281: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   284: invokeinterface 326 2 0
    //   289: checkcast 59	java/lang/Boolean
    //   292: invokevirtual 329	java/lang/Boolean:booleanValue	()Z
    //   295: ifeq +117 -> 412
    //   298: new 331	com/keniu/security/sync/d/e/e
    //   301: dup
    //   302: ldc_w 333
    //   305: invokespecial 334	com/keniu/security/sync/d/e/e:<init>	(Ljava/lang/String;)V
    //   308: athrow
    //   309: astore 38
    //   311: iinc 27 1
    //   314: iconst_1
    //   315: anewarray 4	java/lang/Object
    //   318: astore 39
    //   320: aload 39
    //   322: iconst_0
    //   323: iload 27
    //   325: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   328: aastore
    //   329: ldc 8
    //   331: ldc_w 285
    //   334: aload 39
    //   336: invokestatic 178	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   339: invokestatic 288	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   342: pop
    //   343: iload 27
    //   345: bipush 6
    //   347: if_icmple +51 -> 398
    //   350: aload 38
    //   352: athrow
    //   353: astore 5
    //   355: aload 35
    //   357: astore 6
    //   359: aload 24
    //   361: astore 8
    //   363: aload 8
    //   365: invokestatic 291	com/keniu/security/sync/d/a/b:a	(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    //   368: pop
    //   369: aload 7
    //   371: invokestatic 240	com/keniu/security/sync/d/a/b:a	(Ljava/io/InputStream;)Ljava/io/InputStream;
    //   374: pop
    //   375: aload 6
    //   377: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   380: pop
    //   381: aload_0
    //   382: getfield 42	com/keniu/security/sync/d/a/b:i	Ljava/util/Map;
    //   385: iconst_0
    //   386: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   389: invokeinterface 311 2 0
    //   394: pop
    //   395: aload 5
    //   397: athrow
    //   398: ldc2_w 316
    //   401: invokestatic 323	java/lang/Thread:sleep	(J)V
    //   404: goto -166 -> 238
    //   407: astore 41
    //   409: goto -171 -> 238
    //   412: aload 24
    //   414: aload 20
    //   416: iconst_0
    //   417: iload 42
    //   419: invokevirtual 283	java/io/OutputStream:write	([BII)V
    //   422: iconst_0
    //   423: istore 27
    //   425: goto -187 -> 238
    //   428: aload 7
    //   430: astore 26
    //   432: aload 35
    //   434: astore_3
    //   435: goto -259 -> 176
    //   438: new 259	java/io/File
    //   441: dup
    //   442: aload_2
    //   443: invokespecial 260	java/io/File:<init>	(Ljava/lang/String;)V
    //   446: astore 28
    //   448: aload 23
    //   450: aload 28
    //   452: invokevirtual 315	java/io/File:renameTo	(Ljava/io/File;)Z
    //   455: pop
    //   456: aload 24
    //   458: invokestatic 291	com/keniu/security/sync/d/a/b:a	(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    //   461: pop
    //   462: aload 26
    //   464: invokestatic 240	com/keniu/security/sync/d/a/b:a	(Ljava/io/InputStream;)Ljava/io/InputStream;
    //   467: pop
    //   468: aload_3
    //   469: invokestatic 119	com/keniu/security/sync/d/a/b:a	(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    //   472: pop
    //   473: aload_0
    //   474: getfield 42	com/keniu/security/sync/d/a/b:i	Ljava/util/Map;
    //   477: iconst_0
    //   478: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   481: invokeinterface 311 2 0
    //   486: pop
    //   487: goto -338 -> 149
    //   490: astore 4
    //   492: aload 4
    //   494: astore 5
    //   496: aconst_null
    //   497: astore 6
    //   499: aconst_null
    //   500: astore 7
    //   502: aconst_null
    //   503: astore 8
    //   505: goto -142 -> 363
    //   508: astore 5
    //   510: aload 24
    //   512: astore 8
    //   514: aconst_null
    //   515: astore 6
    //   517: aconst_null
    //   518: astore 7
    //   520: goto -157 -> 363
    //   523: astore 5
    //   525: aload_3
    //   526: astore 6
    //   528: aload 26
    //   530: astore 7
    //   532: aload 24
    //   534: astore 8
    //   536: goto -173 -> 363
    //   539: astore 5
    //   541: aload 35
    //   543: astore 6
    //   545: aload 26
    //   547: astore 7
    //   549: aload 24
    //   551: astore 8
    //   553: goto -190 -> 363
    //   556: astore 5
    //   558: goto -195 -> 363
    //   561: astore 14
    //   563: aload 24
    //   565: astore 8
    //   567: aconst_null
    //   568: astore 6
    //   570: aconst_null
    //   571: astore 7
    //   573: goto -469 -> 104
    //   576: astore 14
    //   578: aload_3
    //   579: astore 6
    //   581: aload 26
    //   583: astore 7
    //   585: aload 24
    //   587: astore 8
    //   589: goto -485 -> 104
    //   592: astore 14
    //   594: aload 35
    //   596: astore 6
    //   598: aload 26
    //   600: astore 7
    //   602: aload 24
    //   604: astore 8
    //   606: goto -502 -> 104
    //   609: astore 14
    //   611: aload 35
    //   613: astore 6
    //   615: aload 24
    //   617: astore 8
    //   619: goto -515 -> 104
    //
    // Exception table:
    //   from	to	target	type
    //   2	89	89	java/io/UnsupportedEncodingException
    //   151	162	89	java/io/UnsupportedEncodingException
    //   238	247	309	java/net/SocketTimeoutException
    //   238	247	353	finally
    //   253	353	353	finally
    //   398	404	353	finally
    //   412	422	353	finally
    //   398	404	407	java/lang/InterruptedException
    //   2	89	490	finally
    //   151	162	490	finally
    //   162	170	508	finally
    //   176	209	523	finally
    //   438	456	523	finally
    //   209	234	539	finally
    //   104	117	556	finally
    //   162	170	561	java/io/UnsupportedEncodingException
    //   176	209	576	java/io/UnsupportedEncodingException
    //   438	456	576	java/io/UnsupportedEncodingException
    //   209	234	592	java/io/UnsupportedEncodingException
    //   238	247	609	java/io/UnsupportedEncodingException
    //   253	353	609	java/io/UnsupportedEncodingException
    //   398	404	609	java/io/UnsupportedEncodingException
    //   412	422	609	java/io/UnsupportedEncodingException
  }

  public final ie a(int paramInt, gn paramgn, File paramFile, String paramString, c paramc)
  {
    ic localic = ib.q();
    localic.a(0L);
    localic.a(paramgn);
    String str1 = com.hoi.a.a.a(localic.i().d(), 2);
    try
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(paramInt);
      String str2 = String.format("http://fud%d.cloud2.1tpan.com", arrayOfObject1);
      locala2 = new com.keniu.security.sync.d.e.a(str2 + "/write");
    }
    finally
    {
      try
      {
        locala2.a("c", str1);
        this.j.put(Integer.valueOf(0), Boolean.valueOf(false));
        String str3 = UUID.randomUUID().toString();
        StringBuffer localStringBuffer = new StringBuffer();
        localStringBuffer.append("--");
        localStringBuffer.append(str3);
        localStringBuffer.append("\r\n");
        localStringBuffer.append("Content-Disposition: form-data; name=\"myfile\"; filename=\"" + paramString + "\"");
        localStringBuffer.append("\r\n");
        localStringBuffer.append("Content-Type: application/octet-stream");
        localStringBuffer.append("\r\n");
        localStringBuffer.append("\r\n");
        byte[] arrayOfByte1 = localStringBuffer.toString().getBytes();
        byte[] arrayOfByte2 = ("\r\n" + "--" + str3 + "--" + "\r\n").getBytes();
        int k = arrayOfByte1.length + (int)paramFile.length() + arrayOfByte2.length;
        locala2.a("Charset", "UTF-8");
        locala2.a("Content-Type", "multipart/form-data" + ";boundary=" + str3);
        locala2.a("Content-Length", String.valueOf(k));
        locala2.a(k);
        OutputStream localOutputStream = locala2.b();
        localOutputStream.write(arrayOfByte1);
        FileInputStream localFileInputStream2 = new FileInputStream(paramFile);
        while (true)
        {
          byte[] arrayOfByte3;
          long l1;
          int i1;
          try
          {
            arrayOfByte3 = new byte[16384];
            l1 = paramFile.length();
            int m = (int)(l1 / 512000L);
            if (m > 100)
            {
              l2 = l1 / m;
              break;
              i1 = localFileInputStream2.read(arrayOfByte3);
              if (i1 == -1)
                break label634;
              if ((this.j == null) || (!this.j.containsKey(Integer.valueOf(0))) || (!((Boolean)this.j.get(Integer.valueOf(0))).booleanValue()))
                break label540;
              throw new e("Cancel by user");
            }
          }
          finally
          {
            locala1 = locala2;
            localFileInputStream1 = localFileInputStream2;
            a(localFileInputStream1);
            a(locala1);
            this.j.remove(Integer.valueOf(0));
          }
          long l2 = l1 / 100L;
          break;
          try
          {
            label540: localOutputStream.write(arrayOfByte3, 0, i1);
            Object localObject4;
            localObject4 += i1;
            n = 0;
            if (paramc == null)
              continue;
            boolean bool = l3 < l2;
            n = 0;
            if (bool)
              continue;
            l3 = 0L;
            n = 0;
          }
          catch (IOException localIOException)
          {
            n++;
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = Integer.valueOf(n);
            Log.i("TpanServ.FudAction", String.format("Retry(%d) write ...", arrayOfObject2));
          }
          if (n > 6)
          {
            throw localIOException;
            label634: localFileInputStream2.close();
            localOutputStream.write(arrayOfByte2);
            locala2.c();
            ie localie = ie.a(com.hoi.a.a.a(locala2.a("Tpan-Ret"), 0));
            a(null);
            a(locala2);
            this.j.remove(Integer.valueOf(0));
            return localie;
            localObject2 = finally;
            locala1 = null;
            localFileInputStream1 = null;
          }
        }
      }
      finally
      {
        while (true)
        {
          com.keniu.security.sync.d.e.a locala2;
          com.keniu.security.sync.d.e.a locala1 = locala2;
          FileInputStream localFileInputStream1 = null;
          continue;
          long l3 = 0L;
          int n = 0;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.a.b
 * JD-Core Version:    0.6.2
 */