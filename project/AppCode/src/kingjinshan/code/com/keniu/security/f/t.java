package com.keniu.security.f;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public final class t extends ae
{
  private static h D;
  private static h E;
  private static h F;
  private static h G;
  private boolean A = true;
  private v B;
  private boolean C = false;

  public t(boolean paramBoolean)
  {
    super(1);
    this.C = paramBoolean;
  }

  // ERROR //
  private h a(String paramString, aa paramaa, boolean paramBoolean)
  {
    // Byte code:
    //   0: invokestatic 32	com/keniu/security/f/s:a	()Lcom/keniu/security/f/s;
    //   3: astore 6
    //   5: new 34	java/lang/StringBuilder
    //   8: dup
    //   9: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   12: aload_1
    //   13: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: aload_2
    //   17: getfield 46	com/keniu/security/f/aa:a	Ljava/lang/String;
    //   20: invokevirtual 41	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: invokevirtual 50	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   26: invokestatic 54	com/keniu/security/f/s:b	(Ljava/lang/String;)Ljava/lang/String;
    //   29: astore 7
    //   31: aload 6
    //   33: aload 7
    //   35: invokevirtual 57	com/keniu/security/f/s:c	(Ljava/lang/String;)Ljava/lang/String;
    //   38: astore 8
    //   40: iload_3
    //   41: ifeq +25 -> 66
    //   44: aload 6
    //   46: aload 7
    //   48: aload_2
    //   49: getfield 60	com/keniu/security/f/aa:b	I
    //   52: aload_2
    //   53: getfield 62	com/keniu/security/f/aa:c	Ljava/lang/String;
    //   56: invokevirtual 65	com/keniu/security/f/s:a	(Ljava/lang/String;ILjava/lang/String;)Z
    //   59: istore 27
    //   61: iload 27
    //   63: ifne +58 -> 121
    //   66: new 67	java/io/FileOutputStream
    //   69: dup
    //   70: aload 8
    //   72: invokespecial 70	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   75: astore 9
    //   77: aload_1
    //   78: aload_2
    //   79: new 72	com/keniu/security/f/u
    //   82: dup
    //   83: aload_0
    //   84: aload 9
    //   86: invokespecial 75	com/keniu/security/f/u:<init>	(Lcom/keniu/security/f/t;Ljava/io/FileOutputStream;)V
    //   89: invokestatic 78	com/keniu/security/f/t:a	(Ljava/lang/String;Lcom/keniu/security/f/aa;Lcom/keniu/security/f/af;)I
    //   92: istore 13
    //   94: iload 13
    //   96: ifeq +20 -> 116
    //   99: aload_0
    //   100: iload 13
    //   102: invokevirtual 80	com/keniu/security/f/t:c	(I)V
    //   105: aload 9
    //   107: invokevirtual 83	java/io/FileOutputStream:close	()V
    //   110: aconst_null
    //   111: astore 5
    //   113: goto +423 -> 536
    //   116: aload 9
    //   118: invokevirtual 83	java/io/FileOutputStream:close	()V
    //   121: aload_2
    //   122: getfield 86	com/keniu/security/f/aa:f	Z
    //   125: istore 14
    //   127: iload 14
    //   129: ifeq +328 -> 457
    //   132: new 88	java/util/zip/ZipFile
    //   135: dup
    //   136: aload 8
    //   138: invokespecial 89	java/util/zip/ZipFile:<init>	(Ljava/lang/String;)V
    //   141: astore 15
    //   143: aload 15
    //   145: invokevirtual 93	java/util/zip/ZipFile:entries	()Ljava/util/Enumeration;
    //   148: astore 19
    //   150: aload 19
    //   152: invokeinterface 99 1 0
    //   157: ifne +45 -> 202
    //   160: aload_0
    //   161: iconst_4
    //   162: invokevirtual 80	com/keniu/security/f/t:c	(I)V
    //   165: aload 15
    //   167: invokevirtual 100	java/util/zip/ZipFile:close	()V
    //   170: aconst_null
    //   171: astore 5
    //   173: goto +363 -> 536
    //   176: aload 11
    //   178: ifnull +8 -> 186
    //   181: aload 11
    //   183: invokevirtual 83	java/io/FileOutputStream:close	()V
    //   186: aload 12
    //   188: athrow
    //   189: astore 4
    //   191: aload_0
    //   192: iconst_1
    //   193: invokevirtual 80	com/keniu/security/f/t:c	(I)V
    //   196: aconst_null
    //   197: astore 5
    //   199: goto +337 -> 536
    //   202: aload 15
    //   204: aload 19
    //   206: invokeinterface 104 1 0
    //   211: checkcast 106	java/util/zip/ZipEntry
    //   214: invokevirtual 110	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   217: astore 20
    //   219: aload_2
    //   220: getfield 113	com/keniu/security/f/aa:d	Ljava/lang/String;
    //   223: invokestatic 118	com/keniu/security/f/k:a	(Ljava/lang/String;)Z
    //   226: ifne +304 -> 530
    //   229: ldc 120
    //   231: invokestatic 126	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   234: astore 22
    //   236: sipush 4096
    //   239: newarray byte
    //   241: astore 23
    //   243: new 128	java/io/ByteArrayOutputStream
    //   246: dup
    //   247: invokespecial 129	java/io/ByteArrayOutputStream:<init>	()V
    //   250: astore 24
    //   252: aload 20
    //   254: aload 23
    //   256: iconst_0
    //   257: sipush 4096
    //   260: invokevirtual 135	java/io/InputStream:read	([BII)I
    //   263: istore 25
    //   265: iload 25
    //   267: ifle +68 -> 335
    //   270: aload 24
    //   272: aload 23
    //   274: iconst_0
    //   275: iload 25
    //   277: invokevirtual 139	java/io/ByteArrayOutputStream:write	([BII)V
    //   280: aload 22
    //   282: ifnull -30 -> 252
    //   285: aload 22
    //   287: aload 23
    //   289: iconst_0
    //   290: iload 25
    //   292: invokevirtual 142	java/security/MessageDigest:update	([BII)V
    //   295: goto -43 -> 252
    //   298: astore 21
    //   300: aload 15
    //   302: astore 17
    //   304: aload 20
    //   306: astore 18
    //   308: aload 21
    //   310: astore 16
    //   312: aload 18
    //   314: ifnull +8 -> 322
    //   317: aload 18
    //   319: invokevirtual 143	java/io/InputStream:close	()V
    //   322: aload 17
    //   324: ifnull +8 -> 332
    //   327: aload 17
    //   329: invokevirtual 100	java/util/zip/ZipFile:close	()V
    //   332: aload 16
    //   334: athrow
    //   335: aload 22
    //   337: ifnull +50 -> 387
    //   340: aload 22
    //   342: aload 23
    //   344: invokevirtual 147	java/security/MessageDigest:digest	([B)[B
    //   347: invokestatic 150	com/keniu/security/f/k:a	([B)Ljava/lang/String;
    //   350: aload_2
    //   351: getfield 113	com/keniu/security/f/aa:d	Ljava/lang/String;
    //   354: invokevirtual 156	java/lang/String:compareToIgnoreCase	(Ljava/lang/String;)I
    //   357: ifeq +30 -> 387
    //   360: aload_0
    //   361: bipush 9
    //   363: invokevirtual 80	com/keniu/security/f/t:c	(I)V
    //   366: aload 20
    //   368: ifnull +8 -> 376
    //   371: aload 20
    //   373: invokevirtual 143	java/io/InputStream:close	()V
    //   376: aload 15
    //   378: invokevirtual 100	java/util/zip/ZipFile:close	()V
    //   381: aconst_null
    //   382: astore 5
    //   384: goto +152 -> 536
    //   387: new 158	com/keniu/security/f/h
    //   390: dup
    //   391: invokespecial 159	com/keniu/security/f/h:<init>	()V
    //   394: astore 26
    //   396: aload 26
    //   398: aload 24
    //   400: invokevirtual 163	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   403: invokevirtual 166	com/keniu/security/f/h:a	([B)Z
    //   406: ifne +29 -> 435
    //   409: aload_0
    //   410: iconst_3
    //   411: invokevirtual 80	com/keniu/security/f/t:c	(I)V
    //   414: aload 20
    //   416: ifnull +8 -> 424
    //   419: aload 20
    //   421: invokevirtual 143	java/io/InputStream:close	()V
    //   424: aload 15
    //   426: invokevirtual 100	java/util/zip/ZipFile:close	()V
    //   429: aconst_null
    //   430: astore 5
    //   432: goto +104 -> 536
    //   435: aload 20
    //   437: ifnull +8 -> 445
    //   440: aload 20
    //   442: invokevirtual 143	java/io/InputStream:close	()V
    //   445: aload 15
    //   447: invokevirtual 100	java/util/zip/ZipFile:close	()V
    //   450: aload 26
    //   452: astore 5
    //   454: goto +82 -> 536
    //   457: new 158	com/keniu/security/f/h
    //   460: dup
    //   461: invokespecial 159	com/keniu/security/f/h:<init>	()V
    //   464: astore 5
    //   466: aload 5
    //   468: new 168	java/io/File
    //   471: dup
    //   472: aload 8
    //   474: invokespecial 169	java/io/File:<init>	(Ljava/lang/String;)V
    //   477: invokevirtual 172	com/keniu/security/f/h:a	(Ljava/io/File;)Z
    //   480: ifne +56 -> 536
    //   483: aload_0
    //   484: iconst_3
    //   485: invokevirtual 80	com/keniu/security/f/t:c	(I)V
    //   488: aconst_null
    //   489: astore 5
    //   491: goto +45 -> 536
    //   494: astore 16
    //   496: aconst_null
    //   497: astore 18
    //   499: aconst_null
    //   500: astore 17
    //   502: goto -190 -> 312
    //   505: astore 16
    //   507: aload 15
    //   509: astore 17
    //   511: aconst_null
    //   512: astore 18
    //   514: goto -202 -> 312
    //   517: astore 10
    //   519: aload 9
    //   521: astore 11
    //   523: aload 10
    //   525: astore 12
    //   527: goto -351 -> 176
    //   530: aconst_null
    //   531: astore 22
    //   533: goto -297 -> 236
    //   536: aload 5
    //   538: areturn
    //   539: astore 12
    //   541: aconst_null
    //   542: astore 11
    //   544: goto -368 -> 176
    //
    // Exception table:
    //   from	to	target	type
    //   0	61	189	java/lang/Exception
    //   105	127	189	java/lang/Exception
    //   165	189	189	java/lang/Exception
    //   317	335	189	java/lang/Exception
    //   371	381	189	java/lang/Exception
    //   419	488	189	java/lang/Exception
    //   219	295	298	finally
    //   340	366	298	finally
    //   387	414	298	finally
    //   132	143	494	finally
    //   143	165	505	finally
    //   202	219	505	finally
    //   77	105	517	finally
    //   66	77	539	finally
  }

  private static boolean a(String paramString)
  {
    if ((D != null) && (z.a(D, paramString) == 5));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static h b()
  {
    return D;
  }

  public static h c()
  {
    return E;
  }

  public static h d()
  {
    return F;
  }

  public static h e()
  {
    return G;
  }

  private void e(int paramInt)
  {
    v localv;
    ab localab;
    try
    {
      localv = new v();
      localab = ab.a();
      if (a(paramInt))
      {
        String str7 = localab.m();
        if (a(D, "mosecurity.apk", str7))
        {
          String str8 = z.a(E, "mosecurity.apk", str7);
          localv.c = D.a("version", "mosecurity.apk");
          localv.b = Integer.parseInt(E.a(str8, "size"));
          localv.d = E.a("global", "description");
        }
      }
      if (b(paramInt))
      {
        String str1 = localab.n();
        if ((this.A) && (a(F, "data", str1)))
        {
          localv.h = new ArrayList();
          localv.i = new ArrayList();
          localv.j = new ArrayList();
          Iterator localIterator = F.a("version").iterator();
          while (localIterator.hasNext())
          {
            String str3 = (String)localIterator.next();
            if (localab.a(str3))
            {
              String str4 = localab.c(str3);
              if (ag.a(F.a("version", str3), str4) > 0)
              {
                String str5 = z.a(G, str3, localab.c(str3));
                String str6 = G.a(str5, "size");
                if (!TextUtils.isEmpty(str6))
                {
                  int i = Integer.parseInt(str6);
                  localv.e = (i + localv.e);
                  localv.h.add(localab.d(str3));
                  localv.i.add(str3);
                  localv.j.add(Integer.valueOf(i));
                }
              }
            }
          }
        }
      }
    }
    catch (Exception localException)
    {
      c(3);
    }
    while (true)
    {
      return;
      String str2 = F.a("version", "data");
      if (localv.e == 0)
        localab.g(str2);
      localv.f = str2;
      localv.g = G.a("global", "description");
      localv.a = paramInt;
      this.B = localv;
    }
  }

  // ERROR //
  private void m()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: aconst_null
    //   4: putfield 301	com/keniu/security/f/t:B	Lcom/keniu/security/f/v;
    //   7: invokestatic 195	com/keniu/security/f/ab:a	()Lcom/keniu/security/f/ab;
    //   10: astore 7
    //   12: aload 7
    //   14: invokevirtual 201	com/keniu/security/f/ab:m	()Ljava/lang/String;
    //   17: astore 8
    //   19: getstatic 174	com/keniu/security/f/t:D	Lcom/keniu/security/f/h;
    //   22: astore 9
    //   24: iconst_0
    //   25: istore_1
    //   26: aload 9
    //   28: ifnull +40 -> 68
    //   31: getstatic 174	com/keniu/security/f/t:D	Lcom/keniu/security/f/h;
    //   34: aload 8
    //   36: invokestatic 179	com/keniu/security/f/z:a	(Lcom/keniu/security/f/h;Ljava/lang/String;)I
    //   39: istore 21
    //   41: iload 21
    //   43: iconst_5
    //   44: if_icmpne +24 -> 68
    //   47: iconst_1
    //   48: istore 10
    //   50: iload 10
    //   52: ifeq +22 -> 74
    //   55: aload_0
    //   56: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   59: ifne +8 -> 67
    //   62: aload_0
    //   63: iconst_5
    //   64: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   67: return
    //   68: iconst_0
    //   69: istore 10
    //   71: goto -21 -> 50
    //   74: aload 7
    //   76: invokevirtual 308	com/keniu/security/f/ab:b	()Ljava/lang/String;
    //   79: astore 11
    //   81: new 43	com/keniu/security/f/aa
    //   84: dup
    //   85: invokespecial 309	com/keniu/security/f/aa:<init>	()V
    //   88: astore 12
    //   90: aload_0
    //   91: getfield 23	com/keniu/security/f/t:C	Z
    //   94: istore 13
    //   96: iconst_0
    //   97: istore_1
    //   98: iload 13
    //   100: ifeq +44 -> 144
    //   103: aload 12
    //   105: aload 7
    //   107: invokevirtual 311	com/keniu/security/f/ab:d	()Ljava/lang/String;
    //   110: putfield 46	com/keniu/security/f/aa:a	Ljava/lang/String;
    //   113: aload_0
    //   114: aload 11
    //   116: aload 12
    //   118: iconst_0
    //   119: invokespecial 313	com/keniu/security/f/t:a	(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    //   122: astore 14
    //   124: aload 14
    //   126: ifnonnull +57 -> 183
    //   129: aload_0
    //   130: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   133: ifne -66 -> 67
    //   136: aload_0
    //   137: iconst_0
    //   138: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   141: goto -74 -> 67
    //   144: aload 12
    //   146: aload 7
    //   148: invokevirtual 315	com/keniu/security/f/ab:c	()Ljava/lang/String;
    //   151: putfield 46	com/keniu/security/f/aa:a	Ljava/lang/String;
    //   154: goto -41 -> 113
    //   157: astore 4
    //   159: iload_1
    //   160: istore 5
    //   162: aload_0
    //   163: iconst_1
    //   164: invokevirtual 80	com/keniu/security/f/t:c	(I)V
    //   167: aload_0
    //   168: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   171: ifne -104 -> 67
    //   174: aload_0
    //   175: iload 5
    //   177: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   180: goto -113 -> 67
    //   183: aload 14
    //   185: aload 8
    //   187: invokestatic 179	com/keniu/security/f/z:a	(Lcom/keniu/security/f/h;Ljava/lang/String;)I
    //   190: istore 15
    //   192: iload 15
    //   194: istore_1
    //   195: iload_1
    //   196: iconst_5
    //   197: if_icmpne +18 -> 215
    //   200: aload_0
    //   201: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   204: ifne -137 -> 67
    //   207: aload_0
    //   208: iload_1
    //   209: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   212: goto -145 -> 67
    //   215: iload_1
    //   216: iconst_1
    //   217: if_icmpne +8 -> 225
    //   220: aload 7
    //   222: invokevirtual 317	com/keniu/security/f/ab:g	()V
    //   225: iload_1
    //   226: invokestatic 198	com/keniu/security/f/t:a	(I)Z
    //   229: ifeq +20 -> 249
    //   232: aload 14
    //   234: ldc 203
    //   236: aload 8
    //   238: invokestatic 206	com/keniu/security/f/t:a	(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z
    //   241: ifne +61 -> 302
    //   244: aload 14
    //   246: putstatic 174	com/keniu/security/f/t:D	Lcom/keniu/security/f/h;
    //   249: iload_1
    //   250: invokestatic 230	com/keniu/security/f/t:b	(I)Z
    //   253: ifeq +222 -> 475
    //   256: aload 12
    //   258: invokevirtual 319	com/keniu/security/f/aa:a	()V
    //   261: aload 12
    //   263: aload 7
    //   265: invokevirtual 321	com/keniu/security/f/ab:e	()Ljava/lang/String;
    //   268: putfield 46	com/keniu/security/f/aa:a	Ljava/lang/String;
    //   271: aload_0
    //   272: aload 11
    //   274: aload 12
    //   276: iconst_0
    //   277: invokespecial 313	com/keniu/security/f/t:a	(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    //   280: astore 16
    //   282: aload 16
    //   284: ifnonnull +106 -> 390
    //   287: aload_0
    //   288: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   291: ifne -224 -> 67
    //   294: aload_0
    //   295: iload_1
    //   296: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   299: goto -232 -> 67
    //   302: getstatic 174	com/keniu/security/f/t:D	Lcom/keniu/security/f/h;
    //   305: ifnull +14 -> 319
    //   308: getstatic 174	com/keniu/security/f/t:D	Lcom/keniu/security/f/h;
    //   311: aload 14
    //   313: invokevirtual 324	com/keniu/security/f/h:a	(Lcom/keniu/security/f/h;)Z
    //   316: ifne -67 -> 249
    //   319: aload 12
    //   321: aload 14
    //   323: ldc_w 326
    //   326: invokevirtual 329	com/keniu/security/f/aa:a	(Lcom/keniu/security/f/h;Ljava/lang/String;)V
    //   329: aload_0
    //   330: aload 11
    //   332: aload 12
    //   334: iconst_1
    //   335: invokespecial 313	com/keniu/security/f/t:a	(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    //   338: astore 20
    //   340: aload 20
    //   342: ifnonnull +18 -> 360
    //   345: aload_0
    //   346: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   349: ifne -282 -> 67
    //   352: aload_0
    //   353: iload_1
    //   354: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   357: goto -290 -> 67
    //   360: aload 14
    //   362: putstatic 174	com/keniu/security/f/t:D	Lcom/keniu/security/f/h;
    //   365: aload 20
    //   367: putstatic 182	com/keniu/security/f/t:E	Lcom/keniu/security/f/h;
    //   370: goto -121 -> 249
    //   373: astore_2
    //   374: iload_1
    //   375: istore_3
    //   376: aload_0
    //   377: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   380: ifne +8 -> 388
    //   383: aload_0
    //   384: iload_3
    //   385: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   388: aload_2
    //   389: athrow
    //   390: aload 7
    //   392: invokevirtual 233	com/keniu/security/f/ab:n	()Ljava/lang/String;
    //   395: astore 17
    //   397: aload 16
    //   399: ldc 211
    //   401: ldc_w 331
    //   404: invokevirtual 214	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   407: astore 18
    //   409: aload 18
    //   411: ifnull +79 -> 490
    //   414: aload 18
    //   416: ldc_w 333
    //   419: invokevirtual 336	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   422: ifne +68 -> 490
    //   425: invokestatic 195	com/keniu/security/f/ab:a	()Lcom/keniu/security/f/ab;
    //   428: invokevirtual 339	com/keniu/security/f/ab:h	()J
    //   431: lconst_0
    //   432: lcmp
    //   433: ifeq +25 -> 458
    //   436: invokestatic 344	java/lang/System:currentTimeMillis	()J
    //   439: invokestatic 195	com/keniu/security/f/ab:a	()Lcom/keniu/security/f/ab;
    //   442: invokevirtual 339	com/keniu/security/f/ab:h	()J
    //   445: lsub
    //   446: ldc2_w 345
    //   449: lcmp
    //   450: ifge +8 -> 458
    //   453: aload_0
    //   454: iconst_0
    //   455: putfield 21	com/keniu/security/f/t:A	Z
    //   458: aload 16
    //   460: ldc 235
    //   462: aload 17
    //   464: invokestatic 206	com/keniu/security/f/t:a	(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z
    //   467: ifne +31 -> 498
    //   470: aload 16
    //   472: putstatic 184	com/keniu/security/f/t:F	Lcom/keniu/security/f/h;
    //   475: aload_0
    //   476: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   479: ifne -412 -> 67
    //   482: aload_0
    //   483: iload_1
    //   484: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   487: goto -420 -> 67
    //   490: aload_0
    //   491: iconst_1
    //   492: putfield 21	com/keniu/security/f/t:A	Z
    //   495: goto -37 -> 458
    //   498: getstatic 184	com/keniu/security/f/t:F	Lcom/keniu/security/f/h;
    //   501: ifnull +14 -> 515
    //   504: getstatic 184	com/keniu/security/f/t:F	Lcom/keniu/security/f/h;
    //   507: aload 16
    //   509: invokevirtual 324	com/keniu/security/f/h:a	(Lcom/keniu/security/f/h;)Z
    //   512: ifne -37 -> 475
    //   515: aload 12
    //   517: aload 16
    //   519: ldc_w 326
    //   522: invokevirtual 329	com/keniu/security/f/aa:a	(Lcom/keniu/security/f/h;Ljava/lang/String;)V
    //   525: aload_0
    //   526: aload 11
    //   528: aload 12
    //   530: iconst_1
    //   531: invokespecial 313	com/keniu/security/f/t:a	(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    //   534: astore 19
    //   536: aload 19
    //   538: ifnonnull +18 -> 556
    //   541: aload_0
    //   542: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   545: ifne -478 -> 67
    //   548: aload_0
    //   549: iload_1
    //   550: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   553: goto -486 -> 67
    //   556: aload 16
    //   558: putstatic 184	com/keniu/security/f/t:F	Lcom/keniu/security/f/h;
    //   561: aload 19
    //   563: putstatic 187	com/keniu/security/f/t:G	Lcom/keniu/security/f/h;
    //   566: goto -91 -> 475
    //   569: astore 6
    //   571: iload 5
    //   573: istore_3
    //   574: aload 6
    //   576: astore_2
    //   577: goto -201 -> 376
    //
    // Exception table:
    //   from	to	target	type
    //   7	41	157	java/lang/Exception
    //   74	124	157	java/lang/Exception
    //   144	154	157	java/lang/Exception
    //   183	192	157	java/lang/Exception
    //   220	282	157	java/lang/Exception
    //   302	340	157	java/lang/Exception
    //   360	370	157	java/lang/Exception
    //   390	475	157	java/lang/Exception
    //   490	536	157	java/lang/Exception
    //   556	566	157	java/lang/Exception
    //   7	41	373	finally
    //   74	124	373	finally
    //   144	154	373	finally
    //   183	192	373	finally
    //   220	282	373	finally
    //   302	340	373	finally
    //   360	370	373	finally
    //   390	475	373	finally
    //   490	536	373	finally
    //   556	566	373	finally
    //   162	167	569	finally
  }

  public final v a()
  {
    return this.B;
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: iconst_0
    //   4: invokevirtual 80	com/keniu/security/f/t:c	(I)V
    //   7: aload_0
    //   8: iconst_1
    //   9: invokevirtual 350	com/keniu/security/f/t:d	(I)V
    //   12: aload_0
    //   13: aconst_null
    //   14: putfield 301	com/keniu/security/f/t:B	Lcom/keniu/security/f/v;
    //   17: invokestatic 195	com/keniu/security/f/ab:a	()Lcom/keniu/security/f/ab;
    //   20: astore 7
    //   22: aload 7
    //   24: invokevirtual 201	com/keniu/security/f/ab:m	()Ljava/lang/String;
    //   27: astore 8
    //   29: getstatic 174	com/keniu/security/f/t:D	Lcom/keniu/security/f/h;
    //   32: astore 9
    //   34: iconst_0
    //   35: istore_1
    //   36: aload 9
    //   38: ifnull +45 -> 83
    //   41: getstatic 174	com/keniu/security/f/t:D	Lcom/keniu/security/f/h;
    //   44: aload 8
    //   46: invokestatic 179	com/keniu/security/f/z:a	(Lcom/keniu/security/f/h;Ljava/lang/String;)I
    //   49: istore 21
    //   51: iload 21
    //   53: iconst_5
    //   54: if_icmpne +29 -> 83
    //   57: iconst_1
    //   58: istore 10
    //   60: iload 10
    //   62: ifeq +27 -> 89
    //   65: aload_0
    //   66: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   69: ifne +8 -> 77
    //   72: aload_0
    //   73: iconst_5
    //   74: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   77: aload_0
    //   78: iconst_2
    //   79: invokevirtual 350	com/keniu/security/f/t:d	(I)V
    //   82: return
    //   83: iconst_0
    //   84: istore 10
    //   86: goto -26 -> 60
    //   89: aload 7
    //   91: invokevirtual 308	com/keniu/security/f/ab:b	()Ljava/lang/String;
    //   94: astore 11
    //   96: new 43	com/keniu/security/f/aa
    //   99: dup
    //   100: invokespecial 309	com/keniu/security/f/aa:<init>	()V
    //   103: astore 12
    //   105: aload_0
    //   106: getfield 23	com/keniu/security/f/t:C	Z
    //   109: istore 13
    //   111: iconst_0
    //   112: istore_1
    //   113: iload 13
    //   115: ifeq +44 -> 159
    //   118: aload 12
    //   120: aload 7
    //   122: invokevirtual 311	com/keniu/security/f/ab:d	()Ljava/lang/String;
    //   125: putfield 46	com/keniu/security/f/aa:a	Ljava/lang/String;
    //   128: aload_0
    //   129: aload 11
    //   131: aload 12
    //   133: iconst_0
    //   134: invokespecial 313	com/keniu/security/f/t:a	(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    //   137: astore 14
    //   139: aload 14
    //   141: ifnonnull +57 -> 198
    //   144: aload_0
    //   145: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   148: ifne -71 -> 77
    //   151: aload_0
    //   152: iconst_0
    //   153: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   156: goto -79 -> 77
    //   159: aload 12
    //   161: aload 7
    //   163: invokevirtual 315	com/keniu/security/f/ab:c	()Ljava/lang/String;
    //   166: putfield 46	com/keniu/security/f/aa:a	Ljava/lang/String;
    //   169: goto -41 -> 128
    //   172: astore 4
    //   174: iload_1
    //   175: istore 5
    //   177: aload_0
    //   178: iconst_1
    //   179: invokevirtual 80	com/keniu/security/f/t:c	(I)V
    //   182: aload_0
    //   183: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   186: ifne -109 -> 77
    //   189: aload_0
    //   190: iload 5
    //   192: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   195: goto -118 -> 77
    //   198: aload 14
    //   200: aload 8
    //   202: invokestatic 179	com/keniu/security/f/z:a	(Lcom/keniu/security/f/h;Ljava/lang/String;)I
    //   205: istore 15
    //   207: iload 15
    //   209: istore_1
    //   210: iload_1
    //   211: iconst_5
    //   212: if_icmpne +18 -> 230
    //   215: aload_0
    //   216: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   219: ifne -142 -> 77
    //   222: aload_0
    //   223: iload_1
    //   224: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   227: goto -150 -> 77
    //   230: iload_1
    //   231: iconst_1
    //   232: if_icmpne +8 -> 240
    //   235: aload 7
    //   237: invokevirtual 317	com/keniu/security/f/ab:g	()V
    //   240: iload_1
    //   241: invokestatic 198	com/keniu/security/f/t:a	(I)Z
    //   244: ifeq +20 -> 264
    //   247: aload 14
    //   249: ldc 203
    //   251: aload 8
    //   253: invokestatic 206	com/keniu/security/f/t:a	(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z
    //   256: ifne +61 -> 317
    //   259: aload 14
    //   261: putstatic 174	com/keniu/security/f/t:D	Lcom/keniu/security/f/h;
    //   264: iload_1
    //   265: invokestatic 230	com/keniu/security/f/t:b	(I)Z
    //   268: ifeq +222 -> 490
    //   271: aload 12
    //   273: invokevirtual 319	com/keniu/security/f/aa:a	()V
    //   276: aload 12
    //   278: aload 7
    //   280: invokevirtual 321	com/keniu/security/f/ab:e	()Ljava/lang/String;
    //   283: putfield 46	com/keniu/security/f/aa:a	Ljava/lang/String;
    //   286: aload_0
    //   287: aload 11
    //   289: aload 12
    //   291: iconst_0
    //   292: invokespecial 313	com/keniu/security/f/t:a	(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    //   295: astore 16
    //   297: aload 16
    //   299: ifnonnull +106 -> 405
    //   302: aload_0
    //   303: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   306: ifne -229 -> 77
    //   309: aload_0
    //   310: iload_1
    //   311: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   314: goto -237 -> 77
    //   317: getstatic 174	com/keniu/security/f/t:D	Lcom/keniu/security/f/h;
    //   320: ifnull +14 -> 334
    //   323: getstatic 174	com/keniu/security/f/t:D	Lcom/keniu/security/f/h;
    //   326: aload 14
    //   328: invokevirtual 324	com/keniu/security/f/h:a	(Lcom/keniu/security/f/h;)Z
    //   331: ifne -67 -> 264
    //   334: aload 12
    //   336: aload 14
    //   338: ldc_w 326
    //   341: invokevirtual 329	com/keniu/security/f/aa:a	(Lcom/keniu/security/f/h;Ljava/lang/String;)V
    //   344: aload_0
    //   345: aload 11
    //   347: aload 12
    //   349: iconst_1
    //   350: invokespecial 313	com/keniu/security/f/t:a	(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    //   353: astore 20
    //   355: aload 20
    //   357: ifnonnull +18 -> 375
    //   360: aload_0
    //   361: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   364: ifne -287 -> 77
    //   367: aload_0
    //   368: iload_1
    //   369: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   372: goto -295 -> 77
    //   375: aload 14
    //   377: putstatic 174	com/keniu/security/f/t:D	Lcom/keniu/security/f/h;
    //   380: aload 20
    //   382: putstatic 182	com/keniu/security/f/t:E	Lcom/keniu/security/f/h;
    //   385: goto -121 -> 264
    //   388: astore_2
    //   389: iload_1
    //   390: istore_3
    //   391: aload_0
    //   392: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   395: ifne +8 -> 403
    //   398: aload_0
    //   399: iload_3
    //   400: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   403: aload_2
    //   404: athrow
    //   405: aload 7
    //   407: invokevirtual 233	com/keniu/security/f/ab:n	()Ljava/lang/String;
    //   410: astore 17
    //   412: aload 16
    //   414: ldc 211
    //   416: ldc_w 331
    //   419: invokevirtual 214	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   422: astore 18
    //   424: aload 18
    //   426: ifnull +79 -> 505
    //   429: aload 18
    //   431: ldc_w 333
    //   434: invokevirtual 336	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   437: ifne +68 -> 505
    //   440: invokestatic 195	com/keniu/security/f/ab:a	()Lcom/keniu/security/f/ab;
    //   443: invokevirtual 339	com/keniu/security/f/ab:h	()J
    //   446: lconst_0
    //   447: lcmp
    //   448: ifeq +25 -> 473
    //   451: invokestatic 344	java/lang/System:currentTimeMillis	()J
    //   454: invokestatic 195	com/keniu/security/f/ab:a	()Lcom/keniu/security/f/ab;
    //   457: invokevirtual 339	com/keniu/security/f/ab:h	()J
    //   460: lsub
    //   461: ldc2_w 345
    //   464: lcmp
    //   465: ifge +8 -> 473
    //   468: aload_0
    //   469: iconst_0
    //   470: putfield 21	com/keniu/security/f/t:A	Z
    //   473: aload 16
    //   475: ldc 235
    //   477: aload 17
    //   479: invokestatic 206	com/keniu/security/f/t:a	(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z
    //   482: ifne +31 -> 513
    //   485: aload 16
    //   487: putstatic 184	com/keniu/security/f/t:F	Lcom/keniu/security/f/h;
    //   490: aload_0
    //   491: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   494: ifne -417 -> 77
    //   497: aload_0
    //   498: iload_1
    //   499: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   502: goto -425 -> 77
    //   505: aload_0
    //   506: iconst_1
    //   507: putfield 21	com/keniu/security/f/t:A	Z
    //   510: goto -37 -> 473
    //   513: getstatic 184	com/keniu/security/f/t:F	Lcom/keniu/security/f/h;
    //   516: ifnull +14 -> 530
    //   519: getstatic 184	com/keniu/security/f/t:F	Lcom/keniu/security/f/h;
    //   522: aload 16
    //   524: invokevirtual 324	com/keniu/security/f/h:a	(Lcom/keniu/security/f/h;)Z
    //   527: ifne -37 -> 490
    //   530: aload 12
    //   532: aload 16
    //   534: ldc_w 326
    //   537: invokevirtual 329	com/keniu/security/f/aa:a	(Lcom/keniu/security/f/h;Ljava/lang/String;)V
    //   540: aload_0
    //   541: aload 11
    //   543: aload 12
    //   545: iconst_1
    //   546: invokespecial 313	com/keniu/security/f/t:a	(Ljava/lang/String;Lcom/keniu/security/f/aa;Z)Lcom/keniu/security/f/h;
    //   549: astore 19
    //   551: aload 19
    //   553: ifnonnull +18 -> 571
    //   556: aload_0
    //   557: invokevirtual 304	com/keniu/security/f/t:j	()I
    //   560: ifne -483 -> 77
    //   563: aload_0
    //   564: iload_1
    //   565: invokespecial 306	com/keniu/security/f/t:e	(I)V
    //   568: goto -491 -> 77
    //   571: aload 16
    //   573: putstatic 184	com/keniu/security/f/t:F	Lcom/keniu/security/f/h;
    //   576: aload 19
    //   578: putstatic 187	com/keniu/security/f/t:G	Lcom/keniu/security/f/h;
    //   581: goto -91 -> 490
    //   584: astore 6
    //   586: iload 5
    //   588: istore_3
    //   589: aload 6
    //   591: astore_2
    //   592: goto -201 -> 391
    //
    // Exception table:
    //   from	to	target	type
    //   17	51	172	java/lang/Exception
    //   89	139	172	java/lang/Exception
    //   159	169	172	java/lang/Exception
    //   198	207	172	java/lang/Exception
    //   235	297	172	java/lang/Exception
    //   317	355	172	java/lang/Exception
    //   375	385	172	java/lang/Exception
    //   405	490	172	java/lang/Exception
    //   505	551	172	java/lang/Exception
    //   571	581	172	java/lang/Exception
    //   17	51	388	finally
    //   89	139	388	finally
    //   159	169	388	finally
    //   198	207	388	finally
    //   235	297	388	finally
    //   317	355	388	finally
    //   375	385	388	finally
    //   405	490	388	finally
    //   505	551	388	finally
    //   571	581	388	finally
    //   177	182	584	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.t
 * JD-Core Version:    0.6.2
 */