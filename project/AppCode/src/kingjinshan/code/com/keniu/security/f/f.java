package com.keniu.security.f;

import android.os.Environment;
import android.os.StatFs;
import java.io.File;

public final class f
{
  public static final String a = "config";
  public static final String b = "data";
  public static final String c = "mosecurity.apk";
  public static final String d = "antivirus.db";
  public static final String e = "antivirus_lw.db";
  public static final String f = "telnum2.locate";
  public static final String g = "firewall_sys_rules.db";
  public static final String h = "clearpath2.db";
  public static final int i = 0;
  public static final int j = 1;
  public static final int k = 2;
  public static final int l = 3;

  public static String a()
  {
    return ab.a().b("telnum2.locate");
  }

  public static String a(int paramInt, String paramString)
  {
    String str;
    if (paramInt == 2)
      str = c(paramString);
    while (true)
    {
      return str;
      if (paramInt == 3)
        str = b(paramString);
      else
        str = null;
    }
  }

  public static String a(String paramString)
  {
    String str;
    if (k.a(paramString))
      str = File.separator;
    while (true)
    {
      return str;
      if (paramString.charAt(paramString.length() - 1) != File.separatorChar)
        str = paramString + File.separatorChar;
      else
        str = paramString;
    }
  }

  public static boolean a(String paramString1, String paramString2)
  {
    return l.a(paramString1, paramString2);
  }

  // ERROR //
  public static boolean a(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: new 102	java/util/zip/ZipFile
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 105	java/util/zip/ZipFile:<init>	(Ljava/lang/String;)V
    //   8: astore_3
    //   9: aload_3
    //   10: invokevirtual 109	java/util/zip/ZipFile:entries	()Ljava/util/Enumeration;
    //   13: astore 16
    //   15: aload 16
    //   17: invokeinterface 115 1 0
    //   22: istore 17
    //   24: iload 17
    //   26: ifne +25 -> 51
    //   29: aload_3
    //   30: invokevirtual 118	java/util/zip/ZipFile:close	()V
    //   33: new 62	java/io/File
    //   36: dup
    //   37: aload_1
    //   38: invokespecial 119	java/io/File:<init>	(Ljava/lang/String;)V
    //   41: invokevirtual 122	java/io/File:delete	()Z
    //   44: pop
    //   45: iconst_0
    //   46: istore 13
    //   48: iload 13
    //   50: ireturn
    //   51: aload_3
    //   52: aload 16
    //   54: invokeinterface 126 1 0
    //   59: checkcast 128	java/util/zip/ZipEntry
    //   62: invokevirtual 132	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   65: astore 18
    //   67: aload 18
    //   69: astore 19
    //   71: aload_2
    //   72: invokestatic 60	com/keniu/security/f/k:a	(Ljava/lang/String;)Z
    //   75: ifne +470 -> 545
    //   78: ldc 134
    //   80: invokestatic 140	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   83: astore 22
    //   85: new 142	java/security/DigestInputStream
    //   88: dup
    //   89: aload 19
    //   91: aload 22
    //   93: invokespecial 145	java/security/DigestInputStream:<init>	(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    //   96: astore 34
    //   98: aload 34
    //   100: astore 19
    //   102: sipush 4096
    //   105: newarray byte
    //   107: astore 25
    //   109: new 147	java/io/FileOutputStream
    //   112: dup
    //   113: aload_1
    //   114: invokespecial 148	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   117: astore 26
    //   119: aload 19
    //   121: aload 25
    //   123: invokevirtual 154	java/io/InputStream:read	([B)I
    //   126: istore 29
    //   128: iload 29
    //   130: ifle +86 -> 216
    //   133: aload 26
    //   135: aload 25
    //   137: iconst_0
    //   138: iload 29
    //   140: invokevirtual 158	java/io/FileOutputStream:write	([BII)V
    //   143: goto -24 -> 119
    //   146: astore 28
    //   148: aload_3
    //   149: astore 5
    //   151: aload 28
    //   153: astore 6
    //   155: aload 19
    //   157: astore 8
    //   159: aload 26
    //   161: astore 7
    //   163: aload 6
    //   165: invokevirtual 161	java/lang/Exception:printStackTrace	()V
    //   168: aload 7
    //   170: ifnull +8 -> 178
    //   173: aload 7
    //   175: invokevirtual 162	java/io/FileOutputStream:close	()V
    //   178: aload 8
    //   180: ifnull +8 -> 188
    //   183: aload 8
    //   185: invokevirtual 163	java/io/InputStream:close	()V
    //   188: aload 5
    //   190: ifnull +8 -> 198
    //   193: aload 5
    //   195: invokevirtual 118	java/util/zip/ZipFile:close	()V
    //   198: new 62	java/io/File
    //   201: dup
    //   202: aload_1
    //   203: invokespecial 119	java/io/File:<init>	(Ljava/lang/String;)V
    //   206: invokevirtual 122	java/io/File:delete	()Z
    //   209: pop
    //   210: iconst_0
    //   211: istore 13
    //   213: goto -165 -> 48
    //   216: aload 26
    //   218: invokevirtual 166	java/io/FileOutputStream:flush	()V
    //   221: aload 22
    //   223: ifnull +59 -> 282
    //   226: aload 22
    //   228: invokevirtual 170	java/security/MessageDigest:digest	()[B
    //   231: invokestatic 173	com/keniu/security/f/k:a	([B)Ljava/lang/String;
    //   234: aload_2
    //   235: invokevirtual 177	java/lang/String:compareToIgnoreCase	(Ljava/lang/String;)I
    //   238: istore 31
    //   240: iload 31
    //   242: ifeq +40 -> 282
    //   245: aload 26
    //   247: invokevirtual 162	java/io/FileOutputStream:close	()V
    //   250: aload 19
    //   252: ifnull +8 -> 260
    //   255: aload 19
    //   257: invokevirtual 163	java/io/InputStream:close	()V
    //   260: aload_3
    //   261: invokevirtual 118	java/util/zip/ZipFile:close	()V
    //   264: new 62	java/io/File
    //   267: dup
    //   268: aload_1
    //   269: invokespecial 119	java/io/File:<init>	(Ljava/lang/String;)V
    //   272: invokevirtual 122	java/io/File:delete	()Z
    //   275: pop
    //   276: iconst_0
    //   277: istore 13
    //   279: goto -231 -> 48
    //   282: aload 26
    //   284: invokevirtual 162	java/io/FileOutputStream:close	()V
    //   287: aload 19
    //   289: ifnull +8 -> 297
    //   292: aload 19
    //   294: invokevirtual 163	java/io/InputStream:close	()V
    //   297: aload_3
    //   298: invokevirtual 118	java/util/zip/ZipFile:close	()V
    //   301: iconst_1
    //   302: istore 13
    //   304: goto -256 -> 48
    //   307: astore 30
    //   309: iconst_1
    //   310: istore 13
    //   312: goto -264 -> 48
    //   315: astore 12
    //   317: iconst_0
    //   318: istore 13
    //   320: goto -272 -> 48
    //   323: astore 9
    //   325: aconst_null
    //   326: astore 7
    //   328: aconst_null
    //   329: astore 8
    //   331: aconst_null
    //   332: astore 5
    //   334: aload 7
    //   336: ifnull +8 -> 344
    //   339: aload 7
    //   341: invokevirtual 162	java/io/FileOutputStream:close	()V
    //   344: aload 8
    //   346: ifnull +8 -> 354
    //   349: aload 8
    //   351: invokevirtual 163	java/io/InputStream:close	()V
    //   354: aload 5
    //   356: ifnull +8 -> 364
    //   359: aload 5
    //   361: invokevirtual 118	java/util/zip/ZipFile:close	()V
    //   364: new 62	java/io/File
    //   367: dup
    //   368: aload_1
    //   369: invokespecial 119	java/io/File:<init>	(Ljava/lang/String;)V
    //   372: invokevirtual 122	java/io/File:delete	()Z
    //   375: pop
    //   376: aload 9
    //   378: athrow
    //   379: astore 10
    //   381: goto -5 -> 376
    //   384: astore 15
    //   386: aload_3
    //   387: astore 5
    //   389: aload 15
    //   391: astore 9
    //   393: aconst_null
    //   394: astore 7
    //   396: aconst_null
    //   397: astore 8
    //   399: goto -65 -> 334
    //   402: astore 21
    //   404: aload_3
    //   405: astore 5
    //   407: aload 21
    //   409: astore 9
    //   411: aload 19
    //   413: astore 8
    //   415: aconst_null
    //   416: astore 7
    //   418: goto -84 -> 334
    //   421: astore 24
    //   423: aload_3
    //   424: astore 5
    //   426: aload 24
    //   428: astore 9
    //   430: aload 19
    //   432: astore 8
    //   434: aconst_null
    //   435: astore 7
    //   437: goto -103 -> 334
    //   440: astore 27
    //   442: aload_3
    //   443: astore 5
    //   445: aload 27
    //   447: astore 9
    //   449: aload 19
    //   451: astore 8
    //   453: aload 26
    //   455: astore 7
    //   457: goto -123 -> 334
    //   460: astore 9
    //   462: goto -128 -> 334
    //   465: astore 6
    //   467: aconst_null
    //   468: astore 7
    //   470: aconst_null
    //   471: astore 8
    //   473: aconst_null
    //   474: astore 5
    //   476: goto -313 -> 163
    //   479: astore 4
    //   481: aload_3
    //   482: astore 5
    //   484: aload 4
    //   486: astore 6
    //   488: aconst_null
    //   489: astore 7
    //   491: aconst_null
    //   492: astore 8
    //   494: goto -331 -> 163
    //   497: astore 20
    //   499: aload_3
    //   500: astore 5
    //   502: aload 20
    //   504: astore 6
    //   506: aload 19
    //   508: astore 8
    //   510: aconst_null
    //   511: astore 7
    //   513: goto -350 -> 163
    //   516: astore 23
    //   518: aload_3
    //   519: astore 5
    //   521: aload 23
    //   523: astore 6
    //   525: aload 19
    //   527: astore 8
    //   529: aconst_null
    //   530: astore 7
    //   532: goto -369 -> 163
    //   535: astore 32
    //   537: goto -261 -> 276
    //   540: astore 35
    //   542: goto -497 -> 45
    //   545: aconst_null
    //   546: astore 22
    //   548: goto -446 -> 102
    //
    // Exception table:
    //   from	to	target	type
    //   119	143	146	java/lang/Exception
    //   216	240	146	java/lang/Exception
    //   282	301	307	java/lang/Exception
    //   173	210	315	java/lang/Exception
    //   0	9	323	finally
    //   339	376	379	java/lang/Exception
    //   9	24	384	finally
    //   51	67	384	finally
    //   71	98	402	finally
    //   102	119	421	finally
    //   119	143	440	finally
    //   216	240	440	finally
    //   163	168	460	finally
    //   0	9	465	java/lang/Exception
    //   9	24	479	java/lang/Exception
    //   51	67	479	java/lang/Exception
    //   71	98	497	java/lang/Exception
    //   102	119	516	java/lang/Exception
    //   245	276	535	java/lang/Exception
    //   29	45	540	java/lang/Exception
  }

  // ERROR //
  public static boolean a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    // Byte code:
    //   0: new 147	java/io/FileOutputStream
    //   3: dup
    //   4: aload_2
    //   5: invokespecial 148	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   8: astore 4
    //   10: new 180	java/io/FileInputStream
    //   13: dup
    //   14: aload_1
    //   15: invokespecial 181	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   18: astore 5
    //   20: new 183	com/d/a/f
    //   23: dup
    //   24: new 185	java/io/RandomAccessFile
    //   27: dup
    //   28: aload_0
    //   29: ldc 187
    //   31: invokespecial 190	java/io/RandomAccessFile:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   34: invokespecial 193	com/d/a/f:<init>	(Ljava/io/RandomAccessFile;)V
    //   37: astore 6
    //   39: aload_3
    //   40: invokestatic 60	com/keniu/security/f/k:a	(Ljava/lang/String;)Z
    //   43: ifne +400 -> 443
    //   46: ldc 134
    //   48: invokestatic 140	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   51: astore 21
    //   53: new 195	java/security/DigestOutputStream
    //   56: dup
    //   57: aload 4
    //   59: aload 21
    //   61: invokespecial 198	java/security/DigestOutputStream:<init>	(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V
    //   64: astore 28
    //   66: aload 28
    //   68: astore 4
    //   70: new 200	com/d/a/c
    //   73: dup
    //   74: invokespecial 201	com/d/a/c:<init>	()V
    //   77: aload 6
    //   79: aload 5
    //   81: aload 4
    //   83: invokevirtual 204	com/d/a/c:a	(Lcom/d/a/g;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   86: aload 21
    //   88: ifnull +63 -> 151
    //   91: aload 21
    //   93: invokevirtual 170	java/security/MessageDigest:digest	()[B
    //   96: invokestatic 173	com/keniu/security/f/k:a	([B)Ljava/lang/String;
    //   99: aload_3
    //   100: invokevirtual 177	java/lang/String:compareToIgnoreCase	(Ljava/lang/String;)I
    //   103: istore 27
    //   105: iconst_0
    //   106: istore 11
    //   108: iload 27
    //   110: ifne +6 -> 116
    //   113: iconst_1
    //   114: istore 11
    //   116: aload 6
    //   118: invokevirtual 205	com/d/a/f:close	()V
    //   121: aload 5
    //   123: invokevirtual 163	java/io/InputStream:close	()V
    //   126: aload 4
    //   128: invokevirtual 208	java/io/OutputStream:close	()V
    //   131: iload 11
    //   133: ifne +15 -> 148
    //   136: new 62	java/io/File
    //   139: dup
    //   140: aload_2
    //   141: invokespecial 119	java/io/File:<init>	(Ljava/lang/String;)V
    //   144: invokevirtual 122	java/io/File:delete	()Z
    //   147: pop
    //   148: iload 11
    //   150: ireturn
    //   151: iconst_1
    //   152: istore 11
    //   154: goto -38 -> 116
    //   157: astore 33
    //   159: aconst_null
    //   160: astore 9
    //   162: aconst_null
    //   163: astore 5
    //   165: aconst_null
    //   166: astore 8
    //   168: aload 9
    //   170: ifnull +8 -> 178
    //   173: aload 9
    //   175: invokevirtual 205	com/d/a/f:close	()V
    //   178: aload 5
    //   180: ifnull +8 -> 188
    //   183: aload 5
    //   185: invokevirtual 163	java/io/InputStream:close	()V
    //   188: aload 8
    //   190: ifnull +8 -> 198
    //   193: aload 8
    //   195: invokevirtual 208	java/io/OutputStream:close	()V
    //   198: iconst_0
    //   199: istore 11
    //   201: iconst_0
    //   202: ifne -54 -> 148
    //   205: new 62	java/io/File
    //   208: dup
    //   209: aload_2
    //   210: invokespecial 119	java/io/File:<init>	(Ljava/lang/String;)V
    //   213: invokevirtual 122	java/io/File:delete	()Z
    //   216: pop
    //   217: iconst_0
    //   218: istore 11
    //   220: goto -72 -> 148
    //   223: astore 10
    //   225: iconst_0
    //   226: istore 11
    //   228: goto -80 -> 148
    //   231: astore 15
    //   233: aconst_null
    //   234: astore 17
    //   236: aconst_null
    //   237: astore 18
    //   239: aconst_null
    //   240: astore 14
    //   242: aload 17
    //   244: ifnull +8 -> 252
    //   247: aload 17
    //   249: invokevirtual 205	com/d/a/f:close	()V
    //   252: aload 18
    //   254: ifnull +8 -> 262
    //   257: aload 18
    //   259: invokevirtual 163	java/io/InputStream:close	()V
    //   262: aload 14
    //   264: ifnull +8 -> 272
    //   267: aload 14
    //   269: invokevirtual 208	java/io/OutputStream:close	()V
    //   272: iconst_0
    //   273: ifne +15 -> 288
    //   276: new 62	java/io/File
    //   279: dup
    //   280: aload_2
    //   281: invokespecial 119	java/io/File:<init>	(Ljava/lang/String;)V
    //   284: invokevirtual 122	java/io/File:delete	()Z
    //   287: pop
    //   288: aload 15
    //   290: athrow
    //   291: astore 19
    //   293: goto -5 -> 288
    //   296: astore 32
    //   298: aload 4
    //   300: astore 14
    //   302: aload 32
    //   304: astore 15
    //   306: aconst_null
    //   307: astore 17
    //   309: aconst_null
    //   310: astore 18
    //   312: goto -70 -> 242
    //   315: astore 30
    //   317: aload 4
    //   319: astore 14
    //   321: aload 30
    //   323: astore 15
    //   325: aload 5
    //   327: astore 18
    //   329: aconst_null
    //   330: astore 17
    //   332: goto -90 -> 242
    //   335: astore 13
    //   337: aload 4
    //   339: astore 14
    //   341: aload 13
    //   343: astore 15
    //   345: aload 5
    //   347: astore 16
    //   349: aload 6
    //   351: astore 17
    //   353: aload 16
    //   355: astore 18
    //   357: goto -115 -> 242
    //   360: astore 23
    //   362: aload 4
    //   364: astore 14
    //   366: aload 23
    //   368: astore 15
    //   370: aload 5
    //   372: astore 24
    //   374: aload 6
    //   376: astore 17
    //   378: aload 24
    //   380: astore 18
    //   382: goto -140 -> 242
    //   385: astore 31
    //   387: aload 4
    //   389: astore 8
    //   391: aconst_null
    //   392: astore 9
    //   394: aconst_null
    //   395: astore 5
    //   397: goto -229 -> 168
    //   400: astore 29
    //   402: aload 4
    //   404: astore 8
    //   406: aconst_null
    //   407: astore 9
    //   409: goto -241 -> 168
    //   412: astore 7
    //   414: aload 4
    //   416: astore 8
    //   418: aload 6
    //   420: astore 9
    //   422: goto -254 -> 168
    //   425: astore 22
    //   427: aload 4
    //   429: astore 8
    //   431: aload 6
    //   433: astore 9
    //   435: goto -267 -> 168
    //   438: astore 25
    //   440: goto -292 -> 148
    //   443: aconst_null
    //   444: astore 21
    //   446: goto -376 -> 70
    //
    // Exception table:
    //   from	to	target	type
    //   0	10	157	java/lang/Exception
    //   173	217	223	java/lang/Exception
    //   0	10	231	finally
    //   247	288	291	java/lang/Exception
    //   10	20	296	finally
    //   20	39	315	finally
    //   39	66	335	finally
    //   70	105	360	finally
    //   10	20	385	java/lang/Exception
    //   20	39	400	java/lang/Exception
    //   39	66	412	java/lang/Exception
    //   70	105	425	java/lang/Exception
    //   116	148	438	java/lang/Exception
  }

  public static String b()
  {
    return ab.a().b("clearpath2.db");
  }

  // ERROR //
  private static String b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aconst_null
    //   2: bipush 17
    //   4: invokestatic 214	android/database/sqlite/SQLiteDatabase:openDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore 8
    //   9: aload 8
    //   11: astore 5
    //   13: aload 5
    //   15: ldc 216
    //   17: aconst_null
    //   18: invokevirtual 220	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   21: astore 12
    //   23: aload 12
    //   25: astore 6
    //   27: aload 6
    //   29: ifnull +239 -> 268
    //   32: aload 6
    //   34: invokeinterface 225 1 0
    //   39: ifeq +229 -> 268
    //   42: iconst_4
    //   43: anewarray 4	java/lang/Object
    //   46: astore 16
    //   48: aload 16
    //   50: iconst_0
    //   51: aload 6
    //   53: iconst_0
    //   54: invokeinterface 229 2 0
    //   59: invokestatic 235	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   62: aastore
    //   63: aload 16
    //   65: iconst_1
    //   66: aload 6
    //   68: iconst_1
    //   69: invokeinterface 229 2 0
    //   74: invokestatic 235	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   77: aastore
    //   78: aload 16
    //   80: iconst_2
    //   81: aload 6
    //   83: iconst_2
    //   84: invokeinterface 229 2 0
    //   89: invokestatic 235	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   92: aastore
    //   93: aload 16
    //   95: iconst_3
    //   96: aload 6
    //   98: iconst_3
    //   99: invokeinterface 229 2 0
    //   104: invokestatic 235	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   107: aastore
    //   108: ldc 237
    //   110: aload 16
    //   112: invokestatic 241	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   115: astore 17
    //   117: aload 17
    //   119: astore 13
    //   121: aload 6
    //   123: ifnull +10 -> 133
    //   126: aload 6
    //   128: invokeinterface 242 1 0
    //   133: aload 5
    //   135: ifnull +126 -> 261
    //   138: aload 5
    //   140: invokevirtual 243	android/database/sqlite/SQLiteDatabase:close	()V
    //   143: aload 13
    //   145: astore 7
    //   147: aload 7
    //   149: areturn
    //   150: astore 4
    //   152: aconst_null
    //   153: astore 5
    //   155: aconst_null
    //   156: astore 6
    //   158: aload 6
    //   160: ifnull +10 -> 170
    //   163: aload 6
    //   165: invokeinterface 242 1 0
    //   170: aload 5
    //   172: ifnull +83 -> 255
    //   175: aload 5
    //   177: invokevirtual 243	android/database/sqlite/SQLiteDatabase:close	()V
    //   180: aconst_null
    //   181: astore 7
    //   183: goto -36 -> 147
    //   186: astore_1
    //   187: aconst_null
    //   188: astore_2
    //   189: aconst_null
    //   190: astore_3
    //   191: aload_3
    //   192: ifnull +9 -> 201
    //   195: aload_3
    //   196: invokeinterface 242 1 0
    //   201: aload_2
    //   202: ifnull +7 -> 209
    //   205: aload_2
    //   206: invokevirtual 243	android/database/sqlite/SQLiteDatabase:close	()V
    //   209: aload_1
    //   210: athrow
    //   211: astore 10
    //   213: aload 5
    //   215: astore 11
    //   217: aload 10
    //   219: astore_1
    //   220: aload 11
    //   222: astore_2
    //   223: aconst_null
    //   224: astore_3
    //   225: goto -34 -> 191
    //   228: astore 15
    //   230: aload 6
    //   232: astore_3
    //   233: aload 5
    //   235: astore_2
    //   236: aload 15
    //   238: astore_1
    //   239: goto -48 -> 191
    //   242: astore 9
    //   244: aconst_null
    //   245: astore 6
    //   247: goto -89 -> 158
    //   250: astore 14
    //   252: goto -94 -> 158
    //   255: aconst_null
    //   256: astore 7
    //   258: goto -111 -> 147
    //   261: aload 13
    //   263: astore 7
    //   265: goto -118 -> 147
    //   268: aconst_null
    //   269: astore 13
    //   271: goto -150 -> 121
    //
    // Exception table:
    //   from	to	target	type
    //   0	9	150	java/lang/Exception
    //   0	9	186	finally
    //   13	23	211	finally
    //   32	117	228	finally
    //   13	23	242	java/lang/Exception
    //   32	117	250	java/lang/Exception
  }

  public static boolean b(String paramString1, String paramString2)
  {
    File localFile = new File(paramString2);
    int m;
    if (localFile.exists())
      m = 3;
    while (true)
    {
      boolean bool;
      if (localFile.delete())
      {
        bool = new File(paramString1).renameTo(localFile);
        label39: return bool;
      }
      try
      {
        Thread.sleep(100L);
        label47: m--;
        if (m > 0)
          continue;
        bool = false;
        break label39;
        bool = new File(paramString1).renameTo(localFile);
      }
      catch (InterruptedException localInterruptedException)
      {
        break label47;
      }
    }
  }

  public static String c()
  {
    return ab.a().b("firewall_sys_rules.db");
  }

  // ERROR //
  private static String c(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 180	java/io/FileInputStream
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 181	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   10: astore_2
    //   11: iconst_4
    //   12: newarray byte
    //   14: astore 8
    //   16: aload_2
    //   17: aload 8
    //   19: invokevirtual 261	java/io/FileInputStream:read	([B)I
    //   22: istore 9
    //   24: aconst_null
    //   25: astore 4
    //   27: iload 9
    //   29: iconst_4
    //   30: if_icmplt +66 -> 96
    //   33: iconst_4
    //   34: anewarray 4	java/lang/Object
    //   37: astore 11
    //   39: aload 11
    //   41: iconst_0
    //   42: aload 8
    //   44: iconst_0
    //   45: baload
    //   46: invokestatic 266	java/lang/Byte:valueOf	(B)Ljava/lang/Byte;
    //   49: aastore
    //   50: aload 11
    //   52: iconst_1
    //   53: aload 8
    //   55: iconst_1
    //   56: baload
    //   57: invokestatic 266	java/lang/Byte:valueOf	(B)Ljava/lang/Byte;
    //   60: aastore
    //   61: aload 11
    //   63: iconst_2
    //   64: aload 8
    //   66: iconst_2
    //   67: baload
    //   68: invokestatic 266	java/lang/Byte:valueOf	(B)Ljava/lang/Byte;
    //   71: aastore
    //   72: aload 11
    //   74: iconst_3
    //   75: aload 8
    //   77: iconst_3
    //   78: baload
    //   79: invokestatic 266	java/lang/Byte:valueOf	(B)Ljava/lang/Byte;
    //   82: aastore
    //   83: ldc 237
    //   85: aload 11
    //   87: invokestatic 241	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   90: astore 12
    //   92: aload 12
    //   94: astore 4
    //   96: aload_2
    //   97: invokevirtual 267	java/io/FileInputStream:close	()V
    //   100: aload 4
    //   102: areturn
    //   103: astore 13
    //   105: aconst_null
    //   106: astore 4
    //   108: aload_1
    //   109: ifnull -9 -> 100
    //   112: aload_1
    //   113: invokevirtual 267	java/io/FileInputStream:close	()V
    //   116: aconst_null
    //   117: astore 4
    //   119: goto -19 -> 100
    //   122: astore 5
    //   124: aconst_null
    //   125: astore 4
    //   127: goto -27 -> 100
    //   130: astore 6
    //   132: aload_1
    //   133: ifnull +7 -> 140
    //   136: aload_1
    //   137: invokevirtual 267	java/io/FileInputStream:close	()V
    //   140: aload 6
    //   142: athrow
    //   143: astore 10
    //   145: goto -45 -> 100
    //   148: astore 7
    //   150: goto -10 -> 140
    //   153: astore 6
    //   155: aload_2
    //   156: astore_1
    //   157: goto -25 -> 132
    //   160: astore_3
    //   161: aload_2
    //   162: astore_1
    //   163: goto -58 -> 105
    //
    // Exception table:
    //   from	to	target	type
    //   2	11	103	java/lang/Exception
    //   112	116	122	java/lang/Exception
    //   2	11	130	finally
    //   96	100	143	java/lang/Exception
    //   136	140	148	java/lang/Exception
    //   11	92	153	finally
    //   11	92	160	java/lang/Exception
  }

  public static boolean d()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  public static long e()
  {
    if (!d());
    StatFs localStatFs;
    for (long l1 = 0L; ; l1 = localStatFs.getBlockSize() * localStatFs.getAvailableBlocks())
    {
      return l1;
      localStatFs = new StatFs(f());
    }
  }

  public static String f()
  {
    if (!d());
    for (String str = null; ; str = a(Environment.getExternalStorageDirectory().getPath()))
      return str;
  }

  public static long g()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.f
 * JD-Core Version:    0.6.2
 */