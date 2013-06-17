package com.antivirus.e;

import android.content.pm.Signature;
import java.security.MessageDigest;
import java.security.cert.Certificate;
import java.util.Arrays;

public class a
{
  final byte[] a = { -83, -125, 16, 127, 123, 64, -69, -102, 29, -77, 106, 79, 100, -100, -37, -23, 88, 109, -125, -32 };
  public Certificate[] b = null;

  // ERROR //
  private Certificate[] a(java.util.jar.JarFile paramJarFile, java.util.jar.JarEntry paramJarEntry, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_1
    //   4: aload_2
    //   5: invokevirtual 46	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   8: astore 13
    //   10: aload 13
    //   12: astore 8
    //   14: aload 8
    //   16: aload_3
    //   17: iconst_0
    //   18: aload_3
    //   19: arraylength
    //   20: invokevirtual 52	java/io/InputStream:read	([BII)I
    //   23: iconst_m1
    //   24: if_icmpne -10 -> 14
    //   27: aload 8
    //   29: invokevirtual 55	java/io/InputStream:close	()V
    //   32: aload_2
    //   33: ifnull +24 -> 57
    //   36: aload_2
    //   37: invokevirtual 61	java/util/jar/JarEntry:getCertificates	()[Ljava/security/cert/Certificate;
    //   40: astore 18
    //   42: aload 18
    //   44: astore 10
    //   46: iconst_0
    //   47: ifeq +7 -> 54
    //   50: aconst_null
    //   51: invokevirtual 55	java/io/InputStream:close	()V
    //   54: aload 10
    //   56: areturn
    //   57: aconst_null
    //   58: astore 10
    //   60: goto -14 -> 46
    //   63: astore 11
    //   65: aconst_null
    //   66: astore 8
    //   68: aload 8
    //   70: ifnull +8 -> 78
    //   73: aload 8
    //   75: invokevirtual 55	java/io/InputStream:close	()V
    //   78: aconst_null
    //   79: astore 10
    //   81: goto -27 -> 54
    //   84: astore 7
    //   86: aconst_null
    //   87: astore 8
    //   89: aload 8
    //   91: ifnull -13 -> 78
    //   94: aload 8
    //   96: invokevirtual 55	java/io/InputStream:close	()V
    //   99: goto -21 -> 78
    //   102: astore 9
    //   104: goto -26 -> 78
    //   107: astore 5
    //   109: aload 4
    //   111: ifnull +8 -> 119
    //   114: aload 4
    //   116: invokevirtual 55	java/io/InputStream:close	()V
    //   119: aload 5
    //   121: athrow
    //   122: astore 17
    //   124: goto -70 -> 54
    //   127: astore 12
    //   129: goto -51 -> 78
    //   132: astore 6
    //   134: goto -15 -> 119
    //   137: astore 16
    //   139: aload 8
    //   141: astore 4
    //   143: aload 16
    //   145: astore 5
    //   147: goto -38 -> 109
    //   150: astore 15
    //   152: goto -63 -> 89
    //   155: astore 14
    //   157: goto -89 -> 68
    //
    // Exception table:
    //   from	to	target	type
    //   3	10	63	java/io/IOException
    //   36	42	63	java/io/IOException
    //   3	10	84	java/lang/Exception
    //   36	42	84	java/lang/Exception
    //   94	99	102	java/lang/Exception
    //   3	10	107	finally
    //   36	42	107	finally
    //   50	54	122	java/lang/Exception
    //   73	78	127	java/lang/Exception
    //   114	119	132	java/lang/Exception
    //   14	32	137	finally
    //   14	32	150	java/lang/Exception
    //   14	32	155	java/io/IOException
  }

  public boolean a(String paramString)
  {
    boolean bool1 = b(paramString);
    boolean bool2 = false;
    if (bool1)
    {
      Certificate[] arrayOfCertificate = this.b;
      bool2 = false;
      if (arrayOfCertificate != null)
      {
        int i = this.b.length;
        bool2 = false;
        if (i == 1)
          break label42;
      }
    }
    while (true)
    {
      return bool2;
      try
      {
        label42: Signature localSignature = new Signature(this.b[0].getEncoded());
        MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
        localMessageDigest.update(localSignature.toByteArray());
        boolean bool3 = Arrays.equals(localMessageDigest.digest(), this.a);
        bool2 = false;
        if (bool3)
          bool2 = true;
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
        bool2 = false;
      }
    }
  }

  // ERROR //
  public boolean b(String paramString)
  {
    // Byte code:
    //   0: sipush 8192
    //   3: newarray byte
    //   5: astore_2
    //   6: aconst_null
    //   7: astore_3
    //   8: new 42	java/util/jar/JarFile
    //   11: dup
    //   12: aload_1
    //   13: invokespecial 108	java/util/jar/JarFile:<init>	(Ljava/lang/String;)V
    //   16: astore 4
    //   18: aload 4
    //   20: invokevirtual 112	java/util/jar/JarFile:entries	()Ljava/util/Enumeration;
    //   23: astore 12
    //   25: iconst_0
    //   26: istore 13
    //   28: aload 12
    //   30: invokeinterface 118 1 0
    //   35: ifeq +292 -> 327
    //   38: iload 13
    //   40: iconst_1
    //   41: iadd
    //   42: istore 15
    //   44: aload 12
    //   46: invokeinterface 122 1 0
    //   51: checkcast 57	java/util/jar/JarEntry
    //   54: astore 16
    //   56: aload 16
    //   58: invokevirtual 125	java/util/jar/JarEntry:isDirectory	()Z
    //   61: ifeq +10 -> 71
    //   64: iload 15
    //   66: istore 13
    //   68: goto -40 -> 28
    //   71: aload 16
    //   73: invokevirtual 129	java/util/jar/JarEntry:getName	()Ljava/lang/String;
    //   76: ldc 131
    //   78: invokevirtual 136	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   81: ifeq +10 -> 91
    //   84: iload 15
    //   86: istore 13
    //   88: goto -60 -> 28
    //   91: aload_0
    //   92: aload 4
    //   94: aload 16
    //   96: aload_2
    //   97: invokespecial 138	com/antivirus/e/a:a	(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    //   100: astore 17
    //   102: aload 17
    //   104: ifnonnull +65 -> 169
    //   107: new 140	java/lang/StringBuilder
    //   110: dup
    //   111: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   114: ldc 143
    //   116: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: aload 16
    //   121: invokevirtual 129	java/util/jar/JarEntry:getName	()Ljava/lang/String;
    //   124: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: ldc 149
    //   129: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: invokevirtual 152	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   135: invokestatic 154	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   138: aload 4
    //   140: invokevirtual 155	java/util/jar/JarFile:close	()V
    //   143: aload 4
    //   145: ifnull +8 -> 153
    //   148: aload 4
    //   150: invokevirtual 155	java/util/jar/JarFile:close	()V
    //   153: iconst_0
    //   154: istore 6
    //   156: iload 6
    //   158: ireturn
    //   159: astore 22
    //   161: aload 22
    //   163: invokestatic 103	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   166: goto -13 -> 153
    //   169: aload_0
    //   170: getfield 35	com/antivirus/e/a:b	[Ljava/security/cert/Certificate;
    //   173: ifnonnull +305 -> 478
    //   176: aload_0
    //   177: aload 17
    //   179: putfield 35	com/antivirus/e/a:b	[Ljava/security/cert/Certificate;
    //   182: goto +289 -> 471
    //   185: iload 18
    //   187: aload_0
    //   188: getfield 35	com/antivirus/e/a:b	[Ljava/security/cert/Certificate;
    //   191: arraylength
    //   192: if_icmpge +279 -> 471
    //   195: iconst_0
    //   196: istore 19
    //   198: iload 19
    //   200: aload 17
    //   202: arraylength
    //   203: if_icmpge +262 -> 465
    //   206: aload_0
    //   207: getfield 35	com/antivirus/e/a:b	[Ljava/security/cert/Certificate;
    //   210: iload 18
    //   212: aaload
    //   213: ifnull +92 -> 305
    //   216: aload_0
    //   217: getfield 35	com/antivirus/e/a:b	[Ljava/security/cert/Certificate;
    //   220: iload 18
    //   222: aaload
    //   223: aload 17
    //   225: iload 19
    //   227: aaload
    //   228: invokevirtual 158	java/security/cert/Certificate:equals	(Ljava/lang/Object;)Z
    //   231: ifeq +74 -> 305
    //   234: iconst_1
    //   235: istore 20
    //   237: iload 20
    //   239: ifeq +14 -> 253
    //   242: aload_0
    //   243: getfield 35	com/antivirus/e/a:b	[Ljava/security/cert/Certificate;
    //   246: arraylength
    //   247: aload 17
    //   249: arraylength
    //   250: if_icmpeq +71 -> 321
    //   253: new 140	java/lang/StringBuilder
    //   256: dup
    //   257: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   260: ldc 160
    //   262: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: aload 16
    //   267: invokevirtual 129	java/util/jar/JarEntry:getName	()Ljava/lang/String;
    //   270: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: ldc 149
    //   275: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   278: invokevirtual 152	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   281: invokestatic 154	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   284: aload 4
    //   286: invokevirtual 155	java/util/jar/JarFile:close	()V
    //   289: aload 4
    //   291: ifnull +8 -> 299
    //   294: aload 4
    //   296: invokevirtual 155	java/util/jar/JarFile:close	()V
    //   299: iconst_0
    //   300: istore 6
    //   302: goto -146 -> 156
    //   305: iinc 19 1
    //   308: goto -110 -> 198
    //   311: astore 21
    //   313: aload 21
    //   315: invokestatic 103	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   318: goto -19 -> 299
    //   321: iinc 18 1
    //   324: goto -139 -> 185
    //   327: aload 4
    //   329: invokevirtual 155	java/util/jar/JarFile:close	()V
    //   332: aload 4
    //   334: ifnull +8 -> 342
    //   337: aload 4
    //   339: invokevirtual 155	java/util/jar/JarFile:close	()V
    //   342: iconst_1
    //   343: istore 6
    //   345: goto -189 -> 156
    //   348: astore 14
    //   350: aload 14
    //   352: invokestatic 103	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   355: goto -13 -> 342
    //   358: astore 25
    //   360: aload_3
    //   361: ifnull +7 -> 368
    //   364: aload_3
    //   365: invokevirtual 155	java/util/jar/JarFile:close	()V
    //   368: iconst_0
    //   369: istore 6
    //   371: goto -215 -> 156
    //   374: astore 7
    //   376: aload 7
    //   378: invokestatic 103	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   381: goto -13 -> 368
    //   384: astore 24
    //   386: aconst_null
    //   387: astore 4
    //   389: aload 4
    //   391: ifnull +8 -> 399
    //   394: aload 4
    //   396: invokevirtual 155	java/util/jar/JarFile:close	()V
    //   399: iconst_0
    //   400: istore 6
    //   402: goto -246 -> 156
    //   405: astore 9
    //   407: aload 9
    //   409: invokestatic 103	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   412: goto -13 -> 399
    //   415: astore 23
    //   417: aconst_null
    //   418: astore 4
    //   420: aload 23
    //   422: astore 10
    //   424: aload 4
    //   426: ifnull +8 -> 434
    //   429: aload 4
    //   431: invokevirtual 155	java/util/jar/JarFile:close	()V
    //   434: aload 10
    //   436: athrow
    //   437: astore 11
    //   439: aload 11
    //   441: invokestatic 103	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   444: goto -10 -> 434
    //   447: astore 10
    //   449: goto -25 -> 424
    //   452: astore 8
    //   454: goto -65 -> 389
    //   457: astore 5
    //   459: aload 4
    //   461: astore_3
    //   462: goto -102 -> 360
    //   465: iconst_0
    //   466: istore 20
    //   468: goto -231 -> 237
    //   471: iload 15
    //   473: istore 13
    //   475: goto -447 -> 28
    //   478: iconst_0
    //   479: istore 18
    //   481: goto -296 -> 185
    //
    // Exception table:
    //   from	to	target	type
    //   148	153	159	java/io/IOException
    //   294	299	311	java/io/IOException
    //   337	342	348	java/io/IOException
    //   8	18	358	java/io/IOException
    //   364	368	374	java/io/IOException
    //   8	18	384	java/lang/RuntimeException
    //   394	399	405	java/io/IOException
    //   8	18	415	finally
    //   429	434	437	java/io/IOException
    //   18	143	447	finally
    //   169	289	447	finally
    //   327	332	447	finally
    //   18	143	452	java/lang/RuntimeException
    //   169	289	452	java/lang/RuntimeException
    //   327	332	452	java/lang/RuntimeException
    //   18	143	457	java/io/IOException
    //   169	289	457	java/io/IOException
    //   327	332	457	java/io/IOException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.e.a
 * JD-Core Version:    0.6.2
 */