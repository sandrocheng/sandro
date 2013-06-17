package com.avast.android.mobilesecurity.vps;

import android.net.Uri;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.MessageDigest;

public final class a
{
  private static final Uri a = Uri.parse("test");
  private static final Uri b = Uri.parse("http://ip.ff.avast.com/ip");

  // ERROR //
  private static String a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: new 32	org/apache/http/impl/client/DefaultHttpClient
    //   5: dup
    //   6: invokespecial 35	org/apache/http/impl/client/DefaultHttpClient:<init>	()V
    //   9: astore_1
    //   10: aload_1
    //   11: new 37	org/apache/http/client/methods/HttpGet
    //   14: dup
    //   15: getstatic 23	com/avast/android/mobilesecurity/vps/a:b	Landroid/net/Uri;
    //   18: invokevirtual 40	android/net/Uri:toString	()Ljava/lang/String;
    //   21: invokespecial 43	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   24: invokevirtual 47	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   27: astore 17
    //   29: aload 17
    //   31: astore_3
    //   32: aload_3
    //   33: invokeinterface 53 1 0
    //   38: invokeinterface 59 1 0
    //   43: invokestatic 64	com/avast/android/mobilesecurity/vps/c/d:a	(Ljava/io/InputStream;)Lcom/avast/android/mobilesecurity/vps/c/d;
    //   46: astore 22
    //   48: aload 22
    //   50: astore 4
    //   52: aload_3
    //   53: ifnull +23 -> 76
    //   56: aload_3
    //   57: invokeinterface 53 1 0
    //   62: ifnull +14 -> 76
    //   65: aload_3
    //   66: invokeinterface 53 1 0
    //   71: invokeinterface 67 1 0
    //   76: aload_1
    //   77: invokevirtual 71	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   80: ifnull +12 -> 92
    //   83: aload_1
    //   84: invokevirtual 71	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   87: invokeinterface 76 1 0
    //   92: aload 4
    //   94: ifnull +278 -> 372
    //   97: aload 4
    //   99: invokevirtual 79	com/avast/android/mobilesecurity/vps/c/d:b	()Z
    //   102: ifeq +270 -> 372
    //   105: aload 4
    //   107: invokevirtual 82	com/avast/android/mobilesecurity/vps/c/d:c	()Ljava/lang/String;
    //   110: ifnull +262 -> 372
    //   113: aload 4
    //   115: invokevirtual 82	com/avast/android/mobilesecurity/vps/c/d:c	()Ljava/lang/String;
    //   118: astore 6
    //   120: aload 6
    //   122: areturn
    //   123: astore 26
    //   125: aconst_null
    //   126: astore_1
    //   127: aconst_null
    //   128: astore_3
    //   129: aload_3
    //   130: ifnull +23 -> 153
    //   133: aload_3
    //   134: invokeinterface 53 1 0
    //   139: ifnull +14 -> 153
    //   142: aload_3
    //   143: invokeinterface 53 1 0
    //   148: invokeinterface 67 1 0
    //   153: aconst_null
    //   154: astore 4
    //   156: aload_1
    //   157: ifnull -65 -> 92
    //   160: aload_1
    //   161: invokevirtual 71	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   164: astore 5
    //   166: aconst_null
    //   167: astore 4
    //   169: aload 5
    //   171: ifnull -79 -> 92
    //   174: aload_1
    //   175: invokevirtual 71	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   178: invokeinterface 76 1 0
    //   183: aconst_null
    //   184: astore 4
    //   186: goto -94 -> 92
    //   189: astore 25
    //   191: aconst_null
    //   192: astore_1
    //   193: aconst_null
    //   194: astore_3
    //   195: aload_3
    //   196: ifnull +23 -> 219
    //   199: aload_3
    //   200: invokeinterface 53 1 0
    //   205: ifnull +14 -> 219
    //   208: aload_3
    //   209: invokeinterface 53 1 0
    //   214: invokeinterface 67 1 0
    //   219: aconst_null
    //   220: astore 4
    //   222: aload_1
    //   223: ifnull -131 -> 92
    //   226: aload_1
    //   227: invokevirtual 71	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   230: astore 9
    //   232: aconst_null
    //   233: astore 4
    //   235: aload 9
    //   237: ifnull -145 -> 92
    //   240: aload_1
    //   241: invokevirtual 71	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   244: invokeinterface 76 1 0
    //   249: aconst_null
    //   250: astore 4
    //   252: goto -160 -> 92
    //   255: astore 24
    //   257: aconst_null
    //   258: astore_1
    //   259: aconst_null
    //   260: astore_3
    //   261: aload_3
    //   262: ifnull +23 -> 285
    //   265: aload_3
    //   266: invokeinterface 53 1 0
    //   271: ifnull +14 -> 285
    //   274: aload_3
    //   275: invokeinterface 53 1 0
    //   280: invokeinterface 67 1 0
    //   285: aconst_null
    //   286: astore 4
    //   288: aload_1
    //   289: ifnull -197 -> 92
    //   292: aload_1
    //   293: invokevirtual 71	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   296: astore 12
    //   298: aconst_null
    //   299: astore 4
    //   301: aload 12
    //   303: ifnull -211 -> 92
    //   306: aload_1
    //   307: invokevirtual 71	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   310: invokeinterface 76 1 0
    //   315: aconst_null
    //   316: astore 4
    //   318: goto -226 -> 92
    //   321: astore 15
    //   323: aconst_null
    //   324: astore_3
    //   325: aload_3
    //   326: ifnull +23 -> 349
    //   329: aload_3
    //   330: invokeinterface 53 1 0
    //   335: ifnull +14 -> 349
    //   338: aload_3
    //   339: invokeinterface 53 1 0
    //   344: invokeinterface 67 1 0
    //   349: aload_0
    //   350: ifnull +19 -> 369
    //   353: aload_0
    //   354: invokevirtual 71	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   357: ifnull +12 -> 369
    //   360: aload_0
    //   361: invokevirtual 71	org/apache/http/impl/client/DefaultHttpClient:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   364: invokeinterface 76 1 0
    //   369: aload 15
    //   371: athrow
    //   372: ldc 84
    //   374: astore 6
    //   376: goto -256 -> 120
    //   379: astore 16
    //   381: goto -32 -> 349
    //   384: astore 14
    //   386: aload_1
    //   387: astore_0
    //   388: aload 14
    //   390: astore 15
    //   392: aconst_null
    //   393: astore_3
    //   394: goto -69 -> 325
    //   397: astore 21
    //   399: aload_1
    //   400: astore_0
    //   401: aload 21
    //   403: astore 15
    //   405: goto -80 -> 325
    //   408: astore 13
    //   410: goto -125 -> 285
    //   413: astore 11
    //   415: aconst_null
    //   416: astore_3
    //   417: goto -156 -> 261
    //   420: astore 20
    //   422: goto -161 -> 261
    //   425: astore 10
    //   427: goto -208 -> 219
    //   430: astore 8
    //   432: aconst_null
    //   433: astore_3
    //   434: goto -239 -> 195
    //   437: astore 19
    //   439: goto -244 -> 195
    //   442: astore 7
    //   444: goto -291 -> 153
    //   447: astore_2
    //   448: aconst_null
    //   449: astore_3
    //   450: goto -321 -> 129
    //   453: astore 18
    //   455: goto -326 -> 129
    //   458: astore 23
    //   460: goto -384 -> 76
    //
    // Exception table:
    //   from	to	target	type
    //   2	10	123	org/apache/http/client/ClientProtocolException
    //   2	10	189	java/io/IOException
    //   2	10	255	java/lang/Exception
    //   2	10	321	finally
    //   338	349	379	java/io/IOException
    //   10	29	384	finally
    //   32	48	397	finally
    //   274	285	408	java/io/IOException
    //   10	29	413	java/lang/Exception
    //   32	48	420	java/lang/Exception
    //   208	219	425	java/io/IOException
    //   10	29	430	java/io/IOException
    //   32	48	437	java/io/IOException
    //   142	153	442	java/io/IOException
    //   10	29	447	org/apache/http/client/ClientProtocolException
    //   32	48	453	org/apache/http/client/ClientProtocolException
    //   65	76	458	java/io/IOException
  }

  private static String a(String paramString)
  {
    if (paramString == null)
      paramString = null;
    while (true)
    {
      return paramString;
      while (paramString.length() < 0)
        paramString = "0" + paramString;
    }
  }

  // ERROR //
  public static void a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +4 -> 5
    //   4: return
    //   5: aload_0
    //   6: ldc 104
    //   8: iconst_0
    //   9: invokevirtual 110	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   12: invokevirtual 116	java/io/File:listFiles	()[Ljava/io/File;
    //   15: astore_1
    //   16: aload_1
    //   17: ifnull -13 -> 4
    //   20: aload_1
    //   21: arraylength
    //   22: istore_2
    //   23: iconst_0
    //   24: istore_3
    //   25: iload_2
    //   26: ifeq -22 -> 4
    //   29: iload_3
    //   30: aload_1
    //   31: arraylength
    //   32: if_icmpge -28 -> 4
    //   35: aload_1
    //   36: iload_3
    //   37: aaload
    //   38: astore 4
    //   40: new 118	java/io/FileInputStream
    //   43: dup
    //   44: aload 4
    //   46: invokespecial 121	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   49: astore 5
    //   51: aload 5
    //   53: invokestatic 126	com/avast/android/mobilesecurity/vps/c/b:a	(Ljava/io/InputStream;)Lcom/avast/android/mobilesecurity/vps/c/b;
    //   56: invokestatic 129	com/avast/android/mobilesecurity/vps/c/b:a	(Lcom/avast/android/mobilesecurity/vps/c/b;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   59: astore 11
    //   61: aload 11
    //   63: invokestatic 131	com/avast/android/mobilesecurity/vps/a:a	()Ljava/lang/String;
    //   66: invokevirtual 137	com/avast/android/mobilesecurity/vps/c/c:t	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   69: pop
    //   70: aload 11
    //   72: invokevirtual 140	com/avast/android/mobilesecurity/vps/c/c:a	()Lcom/avast/android/mobilesecurity/vps/c/b;
    //   75: pop
    //   76: aload 5
    //   78: invokevirtual 143	java/io/FileInputStream:close	()V
    //   81: aload 4
    //   83: invokevirtual 146	java/io/File:delete	()Z
    //   86: pop
    //   87: iinc 3 1
    //   90: goto -61 -> 29
    //   93: astore 15
    //   95: aconst_null
    //   96: astore 5
    //   98: aload 5
    //   100: ifnull -19 -> 81
    //   103: aload 5
    //   105: invokevirtual 143	java/io/FileInputStream:close	()V
    //   108: goto -27 -> 81
    //   111: astore 7
    //   113: goto -32 -> 81
    //   116: astore 9
    //   118: aconst_null
    //   119: astore 5
    //   121: aload 5
    //   123: ifnull +8 -> 131
    //   126: aload 5
    //   128: invokevirtual 143	java/io/FileInputStream:close	()V
    //   131: aload 9
    //   133: athrow
    //   134: astore 14
    //   136: goto -55 -> 81
    //   139: astore 10
    //   141: goto -10 -> 131
    //   144: astore 9
    //   146: goto -25 -> 121
    //   149: astore 6
    //   151: goto -53 -> 98
    //
    // Exception table:
    //   from	to	target	type
    //   40	51	93	java/io/IOException
    //   103	108	111	java/io/IOException
    //   40	51	116	finally
    //   76	81	134	java/io/IOException
    //   126	131	139	java/io/IOException
    //   51	76	144	finally
    //   51	76	149	java/io/IOException
  }

  // ERROR //
  public static void a(android.content.Context paramContext, File paramFile, java.util.List paramList, java.util.Map paramMap, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: ifnull +24 -> 28
    //   7: aload_2
    //   8: ifnull +20 -> 28
    //   11: aload_2
    //   12: invokeinterface 160 1 0
    //   17: ifne +11 -> 28
    //   20: aload_1
    //   21: ifnull +7 -> 28
    //   24: aload_3
    //   25: ifnonnull +4 -> 29
    //   28: return
    //   29: aload_2
    //   30: invokeinterface 163 1 0
    //   35: iconst_2
    //   36: if_icmpge +28 -> 64
    //   39: getstatic 169	com/avast/android/mobilesecurity/vps/b/u:j	Lcom/avast/android/mobilesecurity/vps/b/u;
    //   42: invokevirtual 171	com/avast/android/mobilesecurity/vps/b/u:a	()I
    //   45: aload_2
    //   46: iconst_0
    //   47: invokeinterface 175 2 0
    //   52: checkcast 177	com/avast/android/mobilesecurity/vps/d/c
    //   55: getfield 179	com/avast/android/mobilesecurity/vps/d/c:a	Lcom/avast/android/mobilesecurity/vps/b/u;
    //   58: invokevirtual 171	com/avast/android/mobilesecurity/vps/b/u:a	()I
    //   61: if_icmpeq -33 -> 28
    //   64: aload_2
    //   65: invokestatic 184	com/avast/android/mobilesecurity/vps/e:b	(Ljava/util/List;)Ljava/util/List;
    //   68: astore 6
    //   70: aload 6
    //   72: invokeinterface 163 1 0
    //   77: iconst_2
    //   78: if_icmpge +29 -> 107
    //   81: getstatic 169	com/avast/android/mobilesecurity/vps/b/u:j	Lcom/avast/android/mobilesecurity/vps/b/u;
    //   84: invokevirtual 171	com/avast/android/mobilesecurity/vps/b/u:a	()I
    //   87: aload 6
    //   89: iconst_0
    //   90: invokeinterface 175 2 0
    //   95: checkcast 177	com/avast/android/mobilesecurity/vps/d/c
    //   98: getfield 179	com/avast/android/mobilesecurity/vps/d/c:a	Lcom/avast/android/mobilesecurity/vps/b/u;
    //   101: invokevirtual 171	com/avast/android/mobilesecurity/vps/b/u:a	()I
    //   104: if_icmpeq -76 -> 28
    //   107: aload 6
    //   109: getstatic 189	com/avast/android/mobilesecurity/vps/Interface:b	Ljava/util/HashSet;
    //   112: getstatic 191	com/avast/android/mobilesecurity/vps/Interface:a	Ljava/util/HashSet;
    //   115: iconst_1
    //   116: invokestatic 194	com/avast/android/mobilesecurity/vps/e:a	(Ljava/util/List;Ljava/util/HashSet;Ljava/util/HashSet;Z)Ljava/util/List;
    //   119: astore 7
    //   121: aload 7
    //   123: invokeinterface 160 1 0
    //   128: ifne -100 -> 28
    //   131: aload_0
    //   132: invokevirtual 198	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   135: aload_0
    //   136: invokevirtual 201	android/content/Context:getPackageName	()Ljava/lang/String;
    //   139: iconst_0
    //   140: invokevirtual 207	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   143: astore 9
    //   145: aload 9
    //   147: getfield 213	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   150: invokevirtual 216	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   153: ldc 218
    //   155: invokevirtual 216	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   158: invokevirtual 222	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   161: ifeq -133 -> 28
    //   164: aload 9
    //   166: getfield 225	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   169: ldc 227
    //   171: invokevirtual 231	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   174: astore 10
    //   176: ldc 233
    //   178: ldc 227
    //   180: invokevirtual 231	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   183: astore 11
    //   185: aload 10
    //   187: arraylength
    //   188: istore 12
    //   190: aload 11
    //   192: arraylength
    //   193: istore 13
    //   195: iload 12
    //   197: iload 13
    //   199: if_icmpne -171 -> 28
    //   202: iconst_0
    //   203: istore 14
    //   205: iload 14
    //   207: aload 10
    //   209: arraylength
    //   210: if_icmpge +36 -> 246
    //   213: aload 10
    //   215: iload 14
    //   217: aaload
    //   218: invokestatic 239	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   221: istore 82
    //   223: aload 11
    //   225: iload 14
    //   227: aaload
    //   228: invokestatic 239	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   231: istore 83
    //   233: iload 82
    //   235: iload 83
    //   237: if_icmplt -209 -> 28
    //   240: iinc 14 1
    //   243: goto -38 -> 205
    //   246: invokestatic 243	com/avast/android/mobilesecurity/vps/c/b:ah	()Lcom/avast/android/mobilesecurity/vps/c/c;
    //   249: astore 16
    //   251: iconst_0
    //   252: istore 17
    //   254: iload 17
    //   256: aload 7
    //   258: invokeinterface 163 1 0
    //   263: if_icmpge +47 -> 310
    //   266: aload 7
    //   268: iload 17
    //   270: invokeinterface 175 2 0
    //   275: checkcast 177	com/avast/android/mobilesecurity/vps/d/c
    //   278: astore 80
    //   280: aload 80
    //   282: ifnull +22 -> 304
    //   285: aload 80
    //   287: getfield 245	com/avast/android/mobilesecurity/vps/d/c:b	Ljava/lang/String;
    //   290: ifnull +14 -> 304
    //   293: aload 16
    //   295: aload 80
    //   297: getfield 245	com/avast/android/mobilesecurity/vps/d/c:b	Ljava/lang/String;
    //   300: invokevirtual 247	com/avast/android/mobilesecurity/vps/c/c:b	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   303: pop
    //   304: iinc 17 1
    //   307: goto -53 -> 254
    //   310: aload_3
    //   311: getstatic 252	com/avast/android/mobilesecurity/vps/b/l:b	Lcom/avast/android/mobilesecurity/vps/b/l;
    //   314: invokevirtual 255	com/avast/android/mobilesecurity/vps/b/l:a	()S
    //   317: invokestatic 261	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   320: invokeinterface 266 2 0
    //   325: checkcast 87	java/lang/String
    //   328: astore 18
    //   330: aload 18
    //   332: ifnull +872 -> 1204
    //   335: aload_0
    //   336: invokevirtual 198	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   339: aload 18
    //   341: iconst_0
    //   342: invokevirtual 207	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   345: astore 79
    //   347: aload 79
    //   349: astore 19
    //   351: aload 19
    //   353: ifnonnull +21 -> 374
    //   356: aload_1
    //   357: ifnull +17 -> 374
    //   360: aload_0
    //   361: invokevirtual 198	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   364: aload_1
    //   365: invokevirtual 269	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   368: iconst_0
    //   369: invokevirtual 272	android/content/pm/PackageManager:getPackageArchiveInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   372: astore 19
    //   374: aload 19
    //   376: ifnull +620 -> 996
    //   379: aload 19
    //   381: getfield 213	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   384: ifnull +21 -> 405
    //   387: aload 16
    //   389: aload 19
    //   391: getfield 213	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   394: invokevirtual 275	com/avast/android/mobilesecurity/vps/c/c:e	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   397: pop
    //   398: aload 19
    //   400: getfield 213	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   403: astore 18
    //   405: aload 19
    //   407: getfield 225	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   410: ifnull +14 -> 424
    //   413: aload 16
    //   415: aload 19
    //   417: getfield 225	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   420: invokevirtual 278	com/avast/android/mobilesecurity/vps/c/c:f	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   423: pop
    //   424: aload 16
    //   426: aload 19
    //   428: getfield 282	android/content/pm/PackageInfo:versionCode	I
    //   431: invokevirtual 285	com/avast/android/mobilesecurity/vps/c/c:a	(I)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   434: pop
    //   435: aload_0
    //   436: invokevirtual 198	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   439: aload 18
    //   441: invokevirtual 289	android/content/pm/PackageManager:getLaunchIntentForPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   444: astore 74
    //   446: aload 74
    //   448: ifnull +17 -> 465
    //   451: aload 16
    //   453: aload 74
    //   455: invokevirtual 295	android/content/Intent:getComponent	()Landroid/content/ComponentName;
    //   458: invokevirtual 300	android/content/ComponentName:getClassName	()Ljava/lang/String;
    //   461: invokevirtual 302	com/avast/android/mobilesecurity/vps/c/c:j	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   464: pop
    //   465: aload 19
    //   467: getfield 306	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   470: astore 69
    //   472: aload 69
    //   474: ifnull +63 -> 537
    //   477: aload 69
    //   479: getfield 311	android/content/pm/ApplicationInfo:className	Ljava/lang/String;
    //   482: ifnull +14 -> 496
    //   485: aload 16
    //   487: aload 69
    //   489: getfield 311	android/content/pm/ApplicationInfo:className	Ljava/lang/String;
    //   492: invokevirtual 314	com/avast/android/mobilesecurity/vps/c/c:g	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   495: pop
    //   496: aload 69
    //   498: getfield 317	android/content/pm/ApplicationInfo:name	Ljava/lang/String;
    //   501: ifnull +14 -> 515
    //   504: aload 16
    //   506: aload 69
    //   508: getfield 317	android/content/pm/ApplicationInfo:name	Ljava/lang/String;
    //   511: invokevirtual 320	com/avast/android/mobilesecurity/vps/c/c:h	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   514: pop
    //   515: aload 16
    //   517: aload 69
    //   519: getfield 323	android/content/pm/ApplicationInfo:flags	I
    //   522: invokevirtual 325	com/avast/android/mobilesecurity/vps/c/c:b	(I)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   525: pop
    //   526: aload 16
    //   528: aload 69
    //   530: getfield 328	android/content/pm/ApplicationInfo:targetSdkVersion	I
    //   533: invokevirtual 330	com/avast/android/mobilesecurity/vps/c/c:c	(I)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   536: pop
    //   537: aload 18
    //   539: ifnull +27 -> 566
    //   542: aload_0
    //   543: invokevirtual 198	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   546: aload 18
    //   548: invokevirtual 333	android/content/pm/PackageManager:getInstallerPackageName	(Ljava/lang/String;)Ljava/lang/String;
    //   551: astore 65
    //   553: aload 65
    //   555: ifnull +11 -> 566
    //   558: aload 16
    //   560: aload 65
    //   562: invokevirtual 336	com/avast/android/mobilesecurity/vps/c/c:i	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   565: pop
    //   566: aload_3
    //   567: getstatic 338	com/avast/android/mobilesecurity/vps/b/l:e	Lcom/avast/android/mobilesecurity/vps/b/l;
    //   570: invokevirtual 255	com/avast/android/mobilesecurity/vps/b/l:a	()S
    //   573: invokestatic 261	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   576: invokeinterface 266 2 0
    //   581: checkcast 340	java/lang/Long
    //   584: astore 21
    //   586: aload 21
    //   588: ifnull +14 -> 602
    //   591: aload 16
    //   593: aload 21
    //   595: invokevirtual 344	java/lang/Long:longValue	()J
    //   598: invokevirtual 348	com/avast/android/mobilesecurity/vps/c/c:d	(J)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   601: pop
    //   602: aload 16
    //   604: getstatic 353	android/os/Build$VERSION:SDK_INT	I
    //   607: invokevirtual 355	com/avast/android/mobilesecurity/vps/c/c:d	(I)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   610: pop
    //   611: getstatic 360	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   614: ifnull +12 -> 626
    //   617: aload 16
    //   619: getstatic 360	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   622: invokevirtual 363	com/avast/android/mobilesecurity/vps/c/c:l	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   625: pop
    //   626: getstatic 366	android/os/Build:MODEL	Ljava/lang/String;
    //   629: ifnull +12 -> 641
    //   632: aload 16
    //   634: getstatic 366	android/os/Build:MODEL	Ljava/lang/String;
    //   637: invokevirtual 369	com/avast/android/mobilesecurity/vps/c/c:m	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   640: pop
    //   641: aload 4
    //   643: ifnull +11 -> 654
    //   646: aload 16
    //   648: aload 4
    //   650: invokevirtual 372	com/avast/android/mobilesecurity/vps/c/c:k	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   653: pop
    //   654: aload 16
    //   656: invokestatic 378	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   659: invokevirtual 379	java/util/UUID:toString	()Ljava/lang/String;
    //   662: invokevirtual 382	com/avast/android/mobilesecurity/vps/c/c:n	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   665: pop
    //   666: aload 16
    //   668: invokestatic 387	java/lang/System:currentTimeMillis	()J
    //   671: invokevirtual 389	com/avast/android/mobilesecurity/vps/c/c:c	(J)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   674: pop
    //   675: aload 16
    //   677: aload_1
    //   678: invokevirtual 392	java/io/File:getName	()Ljava/lang/String;
    //   681: invokevirtual 394	com/avast/android/mobilesecurity/vps/c/c:a	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   684: pop
    //   685: aload 16
    //   687: aload_1
    //   688: invokevirtual 269	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   691: invokevirtual 396	com/avast/android/mobilesecurity/vps/c/c:c	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   694: pop
    //   695: aload 16
    //   697: aload_1
    //   698: invokevirtual 398	java/io/File:length	()J
    //   701: invokevirtual 400	com/avast/android/mobilesecurity/vps/c/c:a	(J)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   704: pop
    //   705: aload 16
    //   707: aload_1
    //   708: invokevirtual 403	java/io/File:lastModified	()J
    //   711: invokevirtual 405	com/avast/android/mobilesecurity/vps/c/c:b	(J)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   714: pop
    //   715: aload_1
    //   716: invokestatic 408	com/avast/android/mobilesecurity/vps/a:a	(Ljava/io/File;)[B
    //   719: astore 54
    //   721: aload 54
    //   723: ifnonnull +289 -> 1012
    //   726: aconst_null
    //   727: astore 58
    //   729: aload 58
    //   731: ifnull +11 -> 742
    //   734: aload 16
    //   736: aload 58
    //   738: invokevirtual 410	com/avast/android/mobilesecurity/vps/c/c:d	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   741: pop
    //   742: aload_3
    //   743: getstatic 412	com/avast/android/mobilesecurity/vps/b/l:f	Lcom/avast/android/mobilesecurity/vps/b/l;
    //   746: invokevirtual 255	com/avast/android/mobilesecurity/vps/b/l:a	()S
    //   749: invokestatic 261	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   752: invokeinterface 266 2 0
    //   757: checkcast 87	java/lang/String
    //   760: astore 30
    //   762: aload 30
    //   764: ifnull +26 -> 790
    //   767: ldc 84
    //   769: aload 30
    //   771: invokevirtual 222	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   774: ifeq +8 -> 782
    //   777: ldc_w 414
    //   780: astore 30
    //   782: aload 16
    //   784: aload 30
    //   786: invokevirtual 417	com/avast/android/mobilesecurity/vps/c/c:p	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   789: pop
    //   790: aload_3
    //   791: getstatic 419	com/avast/android/mobilesecurity/vps/b/l:g	Lcom/avast/android/mobilesecurity/vps/b/l;
    //   794: invokevirtual 255	com/avast/android/mobilesecurity/vps/b/l:a	()S
    //   797: invokestatic 261	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   800: invokeinterface 266 2 0
    //   805: checkcast 421	java/lang/Boolean
    //   808: astore 31
    //   810: aload 31
    //   812: ifnull +14 -> 826
    //   815: aload 16
    //   817: aload 31
    //   819: invokevirtual 424	java/lang/Boolean:booleanValue	()Z
    //   822: invokevirtual 427	com/avast/android/mobilesecurity/vps/c/c:a	(Z)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   825: pop
    //   826: aload_3
    //   827: getstatic 429	com/avast/android/mobilesecurity/vps/b/l:h	Lcom/avast/android/mobilesecurity/vps/b/l;
    //   830: invokevirtual 255	com/avast/android/mobilesecurity/vps/b/l:a	()S
    //   833: invokestatic 261	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   836: invokeinterface 266 2 0
    //   841: checkcast 87	java/lang/String
    //   844: astore 32
    //   846: aload 32
    //   848: ifnull +11 -> 859
    //   851: aload 16
    //   853: aload 32
    //   855: invokevirtual 432	com/avast/android/mobilesecurity/vps/c/c:q	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   858: pop
    //   859: aload 16
    //   861: aload 9
    //   863: getfield 213	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   866: invokevirtual 435	com/avast/android/mobilesecurity/vps/c/c:r	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   869: pop
    //   870: aload 16
    //   872: aload 9
    //   874: getfield 225	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   877: invokevirtual 438	com/avast/android/mobilesecurity/vps/c/c:o	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   880: pop
    //   881: aload 16
    //   883: getstatic 443	com/avast/android/mobilesecurity/vps/c/f:c	Lcom/avast/android/mobilesecurity/vps/c/f;
    //   886: invokevirtual 446	com/avast/android/mobilesecurity/vps/c/c:a	(Lcom/avast/android/mobilesecurity/vps/c/f;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   889: pop
    //   890: aload 16
    //   892: invokestatic 131	com/avast/android/mobilesecurity/vps/a:a	()Ljava/lang/String;
    //   895: invokevirtual 449	com/avast/android/mobilesecurity/vps/c/c:s	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   898: pop
    //   899: invokestatic 378	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   902: invokevirtual 379	java/util/UUID:toString	()Ljava/lang/String;
    //   905: astore 37
    //   907: aload_0
    //   908: ldc 104
    //   910: iconst_0
    //   911: invokevirtual 110	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   914: astore 38
    //   916: new 112	java/io/File
    //   919: dup
    //   920: new 93	java/lang/StringBuilder
    //   923: dup
    //   924: invokespecial 450	java/lang/StringBuilder:<init>	()V
    //   927: aload 38
    //   929: invokevirtual 453	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   932: getstatic 456	java/io/File:separator	Ljava/lang/String;
    //   935: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   938: aload 37
    //   940: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   943: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   946: invokespecial 457	java/io/File:<init>	(Ljava/lang/String;)V
    //   949: astore 39
    //   951: new 459	java/io/FileOutputStream
    //   954: dup
    //   955: aload 39
    //   957: invokespecial 460	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   960: astore 40
    //   962: aload 40
    //   964: aload 16
    //   966: invokevirtual 140	com/avast/android/mobilesecurity/vps/c/c:a	()Lcom/avast/android/mobilesecurity/vps/c/b;
    //   969: invokevirtual 464	com/avast/android/mobilesecurity/vps/c/b:ai	()[B
    //   972: invokevirtual 468	java/io/FileOutputStream:write	([B)V
    //   975: aload 40
    //   977: invokevirtual 469	java/io/FileOutputStream:close	()V
    //   980: goto -952 -> 28
    //   983: astore 48
    //   985: goto -957 -> 28
    //   988: astore 78
    //   990: aconst_null
    //   991: astore 19
    //   993: goto -642 -> 351
    //   996: aload 18
    //   998: ifnull -461 -> 537
    //   1001: aload 16
    //   1003: aload 18
    //   1005: invokevirtual 275	com/avast/android/mobilesecurity/vps/c/c:e	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   1008: pop
    //   1009: goto -472 -> 537
    //   1012: aload 54
    //   1014: ifnonnull +196 -> 1210
    //   1017: aconst_null
    //   1018: astore 55
    //   1020: aload 55
    //   1022: invokestatic 471	com/avast/android/mobilesecurity/vps/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1025: astore 58
    //   1027: goto -298 -> 729
    //   1030: iload 56
    //   1032: aload 54
    //   1034: arraylength
    //   1035: if_icmpge -15 -> 1020
    //   1038: new 93	java/lang/StringBuilder
    //   1041: dup
    //   1042: invokespecial 450	java/lang/StringBuilder:<init>	()V
    //   1045: aload 55
    //   1047: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1050: sipush 256
    //   1053: sipush 255
    //   1056: aload 54
    //   1058: iload 56
    //   1060: baload
    //   1061: iand
    //   1062: iadd
    //   1063: bipush 16
    //   1065: invokestatic 474	java/lang/Integer:toString	(II)Ljava/lang/String;
    //   1068: iconst_1
    //   1069: invokevirtual 478	java/lang/String:substring	(I)Ljava/lang/String;
    //   1072: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1075: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1078: astore 57
    //   1080: iinc 56 1
    //   1083: aload 57
    //   1085: astore 55
    //   1087: goto -57 -> 1030
    //   1090: astore 50
    //   1092: aconst_null
    //   1093: astore 40
    //   1095: aload 40
    //   1097: ifnull -1069 -> 28
    //   1100: aload 40
    //   1102: invokevirtual 469	java/io/FileOutputStream:close	()V
    //   1105: goto -1077 -> 28
    //   1108: astore 42
    //   1110: goto -1082 -> 28
    //   1113: astore 49
    //   1115: aconst_null
    //   1116: astore 40
    //   1118: aload 40
    //   1120: ifnull -1092 -> 28
    //   1123: aload 40
    //   1125: invokevirtual 469	java/io/FileOutputStream:close	()V
    //   1128: goto -1100 -> 28
    //   1131: astore 44
    //   1133: goto -1105 -> 28
    //   1136: astore 46
    //   1138: aload 5
    //   1140: ifnull +8 -> 1148
    //   1143: aload 5
    //   1145: invokevirtual 469	java/io/FileOutputStream:close	()V
    //   1148: aload 46
    //   1150: athrow
    //   1151: astore 47
    //   1153: goto -5 -> 1148
    //   1156: astore 45
    //   1158: aload 40
    //   1160: astore 5
    //   1162: aload 45
    //   1164: astore 46
    //   1166: goto -28 -> 1138
    //   1169: astore 43
    //   1171: goto -53 -> 1118
    //   1174: astore 41
    //   1176: goto -81 -> 1095
    //   1179: astore 29
    //   1181: goto -439 -> 742
    //   1184: astore 64
    //   1186: goto -620 -> 566
    //   1189: astore 68
    //   1191: goto -726 -> 465
    //   1194: astore 8
    //   1196: goto -1168 -> 28
    //   1199: astore 15
    //   1201: goto -1173 -> 28
    //   1204: aconst_null
    //   1205: astore 19
    //   1207: goto -856 -> 351
    //   1210: ldc 84
    //   1212: astore 55
    //   1214: iconst_0
    //   1215: istore 56
    //   1217: goto -187 -> 1030
    //
    // Exception table:
    //   from	to	target	type
    //   975	980	983	java/io/IOException
    //   335	347	988	android/content/pm/PackageManager$NameNotFoundException
    //   951	962	1090	java/io/FileNotFoundException
    //   1100	1105	1108	java/io/IOException
    //   951	962	1113	java/io/IOException
    //   1123	1128	1131	java/io/IOException
    //   951	962	1136	finally
    //   1143	1148	1151	java/io/IOException
    //   962	975	1156	finally
    //   962	975	1169	java/io/IOException
    //   962	975	1174	java/io/FileNotFoundException
    //   715	742	1179	java/security/NoSuchAlgorithmException
    //   1020	1080	1179	java/security/NoSuchAlgorithmException
    //   542	566	1184	java/lang/Exception
    //   435	465	1189	java/lang/Exception
    //   131	195	1194	android/content/pm/PackageManager$NameNotFoundException
    //   205	233	1194	android/content/pm/PackageManager$NameNotFoundException
    //   205	233	1199	java/lang/NumberFormatException
  }

  // ERROR //
  public static void a(android.content.Context paramContext, String paramString1, String paramString2, com.avast.android.mobilesecurity.vps.b.a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +15 -> 16
    //   4: aload_3
    //   5: ifnull +11 -> 16
    //   8: aload_1
    //   9: ifnonnull +8 -> 17
    //   12: aload_2
    //   13: ifnonnull +4 -> 17
    //   16: return
    //   17: aload_0
    //   18: ldc 104
    //   20: iconst_0
    //   21: invokevirtual 110	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   24: invokevirtual 116	java/io/File:listFiles	()[Ljava/io/File;
    //   27: astore 4
    //   29: aload 4
    //   31: ifnull -15 -> 16
    //   34: aload 4
    //   36: arraylength
    //   37: ifeq -21 -> 16
    //   40: iconst_0
    //   41: istore 5
    //   43: iload 5
    //   45: aload 4
    //   47: arraylength
    //   48: if_icmpge -32 -> 16
    //   51: aload 4
    //   53: iload 5
    //   55: aaload
    //   56: astore 6
    //   58: new 118	java/io/FileInputStream
    //   61: dup
    //   62: aload 6
    //   64: invokespecial 121	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   67: astore 7
    //   69: aload 7
    //   71: invokestatic 126	com/avast/android/mobilesecurity/vps/c/b:a	(Ljava/io/InputStream;)Lcom/avast/android/mobilesecurity/vps/c/b;
    //   74: astore 13
    //   76: aload_1
    //   77: ifnull +15 -> 92
    //   80: aload 13
    //   82: invokevirtual 481	com/avast/android/mobilesecurity/vps/c/b:m	()Ljava/lang/String;
    //   85: aload_1
    //   86: invokevirtual 222	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   89: ifeq +23 -> 112
    //   92: aload_2
    //   93: ifnull +30 -> 123
    //   96: aload 13
    //   98: invokevirtual 483	com/avast/android/mobilesecurity/vps/c/b:e	()Ljava/lang/String;
    //   101: aload_2
    //   102: invokevirtual 222	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   105: istore 41
    //   107: iload 41
    //   109: ifne +14 -> 123
    //   112: aload 7
    //   114: invokevirtual 143	java/io/FileInputStream:close	()V
    //   117: iinc 5 1
    //   120: goto -77 -> 43
    //   123: aload 13
    //   125: invokestatic 129	com/avast/android/mobilesecurity/vps/c/b:a	(Lcom/avast/android/mobilesecurity/vps/c/b;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   128: astore 14
    //   130: getstatic 488	com/avast/android/mobilesecurity/vps/b:a	[I
    //   133: aload_3
    //   134: invokevirtual 493	com/avast/android/mobilesecurity/vps/b/a:ordinal	()I
    //   137: iaload
    //   138: tableswitch	default:+26 -> 164, 1:+133->271, 2:+148->286, 3:+163->301
    //   165: istore 16
    //   167: aload 14
    //   169: getstatic 443	com/avast/android/mobilesecurity/vps/c/f:c	Lcom/avast/android/mobilesecurity/vps/c/f;
    //   172: invokevirtual 446	com/avast/android/mobilesecurity/vps/c/c:a	(Lcom/avast/android/mobilesecurity/vps/c/f;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   175: pop
    //   176: new 495	java/util/LinkedList
    //   179: dup
    //   180: aload 14
    //   182: invokevirtual 498	com/avast/android/mobilesecurity/vps/c/c:b	()Ljava/util/List;
    //   185: invokespecial 501	java/util/LinkedList:<init>	(Ljava/util/Collection;)V
    //   188: astore 17
    //   190: iload 16
    //   192: ifne +124 -> 316
    //   195: aload 17
    //   197: invokeinterface 505 1 0
    //   202: astore 36
    //   204: aload 36
    //   206: invokeinterface 510 1 0
    //   211: ifeq +105 -> 316
    //   214: aload 36
    //   216: invokeinterface 514 1 0
    //   221: checkcast 440	com/avast/android/mobilesecurity/vps/c/f
    //   224: astore 37
    //   226: getstatic 443	com/avast/android/mobilesecurity/vps/c/f:c	Lcom/avast/android/mobilesecurity/vps/c/f;
    //   229: aload 37
    //   231: invokevirtual 515	com/avast/android/mobilesecurity/vps/c/f:equals	(Ljava/lang/Object;)Z
    //   234: ifeq -30 -> 204
    //   237: aload 36
    //   239: invokeinterface 518 1 0
    //   244: goto -40 -> 204
    //   247: astore 10
    //   249: aload 7
    //   251: astore 11
    //   253: aload 11
    //   255: ifnull -138 -> 117
    //   258: aload 11
    //   260: invokevirtual 143	java/io/FileInputStream:close	()V
    //   263: goto -146 -> 117
    //   266: astore 12
    //   268: goto -151 -> 117
    //   271: aload 14
    //   273: getstatic 520	com/avast/android/mobilesecurity/vps/c/f:d	Lcom/avast/android/mobilesecurity/vps/c/f;
    //   276: invokevirtual 446	com/avast/android/mobilesecurity/vps/c/c:a	(Lcom/avast/android/mobilesecurity/vps/c/f;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   279: pop
    //   280: iconst_0
    //   281: istore 16
    //   283: goto -107 -> 176
    //   286: aload 14
    //   288: getstatic 522	com/avast/android/mobilesecurity/vps/c/f:a	Lcom/avast/android/mobilesecurity/vps/c/f;
    //   291: invokevirtual 446	com/avast/android/mobilesecurity/vps/c/c:a	(Lcom/avast/android/mobilesecurity/vps/c/f;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   294: pop
    //   295: iconst_0
    //   296: istore 16
    //   298: goto -122 -> 176
    //   301: aload 14
    //   303: getstatic 524	com/avast/android/mobilesecurity/vps/c/f:b	Lcom/avast/android/mobilesecurity/vps/c/f;
    //   306: invokevirtual 446	com/avast/android/mobilesecurity/vps/c/c:a	(Lcom/avast/android/mobilesecurity/vps/c/f;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   309: pop
    //   310: iconst_0
    //   311: istore 16
    //   313: goto -137 -> 176
    //   316: aload 14
    //   318: invokevirtual 526	com/avast/android/mobilesecurity/vps/c/c:c	()Lcom/avast/android/mobilesecurity/vps/c/c;
    //   321: pop
    //   322: aload 14
    //   324: aload 17
    //   326: invokevirtual 529	com/avast/android/mobilesecurity/vps/c/c:a	(Ljava/lang/Iterable;)Lcom/avast/android/mobilesecurity/vps/c/c;
    //   329: pop
    //   330: aload 14
    //   332: invokevirtual 140	com/avast/android/mobilesecurity/vps/c/c:a	()Lcom/avast/android/mobilesecurity/vps/c/b;
    //   335: astore 20
    //   337: aload 6
    //   339: new 112	java/io/File
    //   342: dup
    //   343: new 93	java/lang/StringBuilder
    //   346: dup
    //   347: invokespecial 450	java/lang/StringBuilder:<init>	()V
    //   350: aload 6
    //   352: invokevirtual 453	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   355: ldc_w 531
    //   358: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   364: invokespecial 457	java/io/File:<init>	(Ljava/lang/String;)V
    //   367: invokevirtual 535	java/io/File:renameTo	(Ljava/io/File;)Z
    //   370: istore 21
    //   372: iload 21
    //   374: ifne +16 -> 390
    //   377: aload 7
    //   379: invokevirtual 143	java/io/FileInputStream:close	()V
    //   382: goto -366 -> 16
    //   385: astore 35
    //   387: goto -371 -> 16
    //   390: new 459	java/io/FileOutputStream
    //   393: dup
    //   394: aload 6
    //   396: invokespecial 460	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   399: astore 22
    //   401: aload 22
    //   403: aload 20
    //   405: invokevirtual 464	com/avast/android/mobilesecurity/vps/c/b:ai	()[B
    //   408: invokevirtual 468	java/io/FileOutputStream:write	([B)V
    //   411: new 112	java/io/File
    //   414: dup
    //   415: new 93	java/lang/StringBuilder
    //   418: dup
    //   419: invokespecial 450	java/lang/StringBuilder:<init>	()V
    //   422: aload 6
    //   424: invokevirtual 453	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   427: ldc_w 531
    //   430: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   433: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   436: invokespecial 457	java/io/File:<init>	(Ljava/lang/String;)V
    //   439: invokevirtual 146	java/io/File:delete	()Z
    //   442: pop
    //   443: aload 22
    //   445: invokevirtual 469	java/io/FileOutputStream:close	()V
    //   448: aload 7
    //   450: invokevirtual 143	java/io/FileInputStream:close	()V
    //   453: goto -336 -> 117
    //   456: astore 31
    //   458: goto -341 -> 117
    //   461: astore 34
    //   463: aconst_null
    //   464: astore 22
    //   466: aload 6
    //   468: invokevirtual 146	java/io/File:delete	()Z
    //   471: pop
    //   472: new 112	java/io/File
    //   475: dup
    //   476: new 93	java/lang/StringBuilder
    //   479: dup
    //   480: invokespecial 450	java/lang/StringBuilder:<init>	()V
    //   483: aload 6
    //   485: invokevirtual 453	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   488: ldc_w 531
    //   491: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   494: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   497: invokespecial 457	java/io/File:<init>	(Ljava/lang/String;)V
    //   500: aload 6
    //   502: invokevirtual 535	java/io/File:renameTo	(Ljava/io/File;)Z
    //   505: pop
    //   506: aload 22
    //   508: ifnull -60 -> 448
    //   511: aload 22
    //   513: invokevirtual 469	java/io/FileOutputStream:close	()V
    //   516: goto -68 -> 448
    //   519: astore 30
    //   521: goto -73 -> 448
    //   524: astore 26
    //   526: aconst_null
    //   527: astore 25
    //   529: aload 25
    //   531: ifnull +8 -> 539
    //   534: aload 25
    //   536: invokevirtual 469	java/io/FileOutputStream:close	()V
    //   539: aload 26
    //   541: athrow
    //   542: astore 8
    //   544: aload 7
    //   546: ifnull +8 -> 554
    //   549: aload 7
    //   551: invokevirtual 143	java/io/FileInputStream:close	()V
    //   554: aload 8
    //   556: athrow
    //   557: astore 42
    //   559: goto -442 -> 117
    //   562: astore 33
    //   564: goto -116 -> 448
    //   567: astore 27
    //   569: goto -30 -> 539
    //   572: astore 9
    //   574: goto -20 -> 554
    //   577: astore 8
    //   579: aconst_null
    //   580: astore 7
    //   582: goto -38 -> 544
    //   585: astore 43
    //   587: aconst_null
    //   588: astore 11
    //   590: goto -337 -> 253
    //   593: astore 24
    //   595: aload 22
    //   597: astore 25
    //   599: aload 24
    //   601: astore 26
    //   603: goto -74 -> 529
    //   606: astore 23
    //   608: goto -142 -> 466
    //
    // Exception table:
    //   from	to	target	type
    //   69	107	247	java/io/IOException
    //   123	244	247	java/io/IOException
    //   271	372	247	java/io/IOException
    //   539	542	247	java/io/IOException
    //   258	263	266	java/io/IOException
    //   377	382	385	java/io/IOException
    //   448	453	456	java/io/IOException
    //   390	401	461	java/io/IOException
    //   511	516	519	java/io/IOException
    //   390	401	524	finally
    //   69	107	542	finally
    //   123	244	542	finally
    //   271	372	542	finally
    //   443	448	542	finally
    //   511	516	542	finally
    //   534	539	542	finally
    //   539	542	542	finally
    //   112	117	557	java/io/IOException
    //   443	448	562	java/io/IOException
    //   534	539	567	java/io/IOException
    //   549	554	572	java/io/IOException
    //   58	69	577	finally
    //   58	69	585	java/io/IOException
    //   401	443	593	finally
    //   466	506	593	finally
    //   401	443	606	java/io/IOException
  }

  private static byte[] a(File paramFile)
  {
    Object localObject = null;
    if (paramFile == null);
    while (true)
    {
      return localObject;
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance("SHA256");
        FileInputStream localFileInputStream = new FileInputStream(paramFile);
        byte[] arrayOfByte1 = new byte[1024];
        while (true)
        {
          int i = localFileInputStream.read(arrayOfByte1);
          if (i == -1)
            break;
          localMessageDigest.update(arrayOfByte1, 0, i);
        }
        byte[] arrayOfByte2 = localMessageDigest.digest();
        localObject = arrayOfByte2;
      }
      catch (IOException localIOException)
      {
        localObject = null;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        localObject = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.a
 * JD-Core Version:    0.6.2
 */