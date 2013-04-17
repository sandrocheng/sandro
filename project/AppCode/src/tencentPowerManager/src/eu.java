import java.io.File;

public final class eu
{
  static
  {
    new String[][] { { "3gp", "video/3gpp" }, { "apk", "application/vnd.android.package-archive" }, { "asf", "video/x-ms-asf" }, { "avi", "video/x-msvideo" }, { "bin", "application/octet-stream" }, { "bmp", "image/bmp" }, { "c", "text/plain" }, { "class", "application/octet-stream" }, { "conf", "text/plain" }, { "cpp", "text/plain" }, { "doc", "application/msword" }, { "docx", "application/msword" }, { "exe", "application/octet-stream" }, { "gif", "image/gif" }, { "gtar", "application/x-gtar" }, { "gz", "application/x-gzip" }, { "h", "text/plain" }, { "htm", "text/html" }, { "html", "text/html" }, { "jar", "application/java-archive" }, { "java", "text/plain" }, { "jpeg", "image/jpeg" }, { "jpg", "image/jpeg" }, { "js", "application/x-javascript" }, { "log", "text/plain" }, { "m3u", "audio/x-mpegurl" }, { "m4a", "audio/mp4a-latm" }, { "m4b", "audio/mp4a-latm" }, { "m4p", "audio/mp4a-latm" }, { "m4u", "video/vnd.mpegurl" }, { "m4v", "video/x-m4v" }, { "mov", "video/quicktime" }, { "mp2", "audio/x-mpeg" }, { "mp3", "audio/x-mpeg" }, { "mp4", "video/mp4" }, { "mpc", "application/vnd.mpohn.certificate" }, { "mpe", "video/mpeg" }, { "mpeg", "video/mpeg" }, { "mpg", "video/mpeg" }, { "mpg4", "video/mp4" }, { "mpga", "audio/mpeg" }, { "msg", "application/vnd.ms-outlook" }, { "ogg", "audio/ogg" }, { "pdf", "application/pdf" }, { "png", "image/png" }, { "pps", "application/vnd.ms-powerpoint" }, { "ppsx", "application/vnd.ms-powerpoint" }, { "ppt", "application/vnd.ms-powerpoint" }, { "pptx", "application/vnd.ms-powerpoint" }, { "xls", "application/vnd.ms-excel" }, { "xlsx", "application/vnd.ms-excel" }, { "prop", "text/plain" }, { "rar", "application/x-rar-compressed" }, { "rc", "text/plain" }, { "rmvb", "audio/x-pn-realaudio" }, { "rtf", "application/rtf" }, { "sh", "text/plain" }, { "tar", "application/x-tar" }, { "tgz", "application/x-compressed" }, { "txt", "text/plain" }, { "wav", "audio/x-wav" }, { "wma", "audio/x-ms-wma" }, { "wmv", "audio/x-ms-wmv" }, { "wps", "application/vnd.ms-works" }, { "xml", "text/plain" }, { "z", "application/x-compress" }, { "zip", "application/zip" }, { "epub", "application/epub+zip" }, { "", "*/*" } };
  }

  // ERROR //
  public static String a(android.content.Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 2
    //   4: monitorenter
    //   5: aload_0
    //   6: invokevirtual 246	android/content/Context:getFilesDir	()Ljava/io/File;
    //   9: invokevirtual 252	java/io/File:toString	()Ljava/lang/String;
    //   12: astore 4
    //   14: new 248	java/io/File
    //   17: dup
    //   18: aload 4
    //   20: invokespecial 256	java/io/File:<init>	(Ljava/lang/String;)V
    //   23: astore 5
    //   25: aload 5
    //   27: invokevirtual 260	java/io/File:exists	()Z
    //   30: ifeq +11 -> 41
    //   33: aload 5
    //   35: invokevirtual 263	java/io/File:isDirectory	()Z
    //   38: ifne +9 -> 47
    //   41: aload 5
    //   43: invokevirtual 266	java/io/File:mkdirs	()Z
    //   46: pop
    //   47: new 268	java/lang/StringBuilder
    //   50: dup
    //   51: aload 4
    //   53: invokestatic 272	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   56: invokespecial 273	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   59: getstatic 277	java/io/File:separator	Ljava/lang/String;
    //   62: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: aload_1
    //   66: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: invokevirtual 282	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: astore 7
    //   74: aload 7
    //   76: astore 8
    //   78: new 248	java/io/File
    //   81: dup
    //   82: aload 8
    //   84: invokespecial 256	java/io/File:<init>	(Ljava/lang/String;)V
    //   87: astore 9
    //   89: aload 9
    //   91: invokevirtual 260	java/io/File:exists	()Z
    //   94: ifeq +55 -> 149
    //   97: aload_1
    //   98: ldc_w 284
    //   101: invokevirtual 288	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   104: ifne +45 -> 149
    //   107: aload_1
    //   108: ldc_w 290
    //   111: invokevirtual 288	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   114: ifeq +10 -> 124
    //   117: aload_0
    //   118: invokestatic 293	eu:a	(Landroid/content/Context;)Z
    //   121: ifne +28 -> 149
    //   124: aload_1
    //   125: ldc_w 295
    //   128: invokevirtual 288	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   131: ifeq +10 -> 141
    //   134: aload_0
    //   135: invokestatic 298	eu:b	(Landroid/content/Context;)Z
    //   138: ifne +11 -> 149
    //   141: aload_0
    //   142: aload_1
    //   143: invokestatic 301	eu:b	(Landroid/content/Context;Ljava/lang/String;)Z
    //   146: ifeq +272 -> 418
    //   149: aload 9
    //   151: invokevirtual 260	java/io/File:exists	()Z
    //   154: ifeq +9 -> 163
    //   157: aload 9
    //   159: invokevirtual 304	java/io/File:delete	()Z
    //   162: pop
    //   163: aload_0
    //   164: invokevirtual 308	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   167: invokevirtual 314	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   170: aload_1
    //   171: iconst_1
    //   172: invokevirtual 320	android/content/res/AssetManager:open	(Ljava/lang/String;I)Ljava/io/InputStream;
    //   175: astore 21
    //   177: aload 21
    //   179: astore 14
    //   181: new 322	java/io/FileOutputStream
    //   184: dup
    //   185: aload 9
    //   187: invokespecial 325	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   190: astore 22
    //   192: sipush 8192
    //   195: newarray byte
    //   197: astore 24
    //   199: aload 14
    //   201: aload 24
    //   203: invokevirtual 331	java/io/InputStream:read	([B)I
    //   206: istore 25
    //   208: iload 25
    //   210: ifgt +33 -> 243
    //   213: aload 22
    //   215: astore 26
    //   217: aload 14
    //   219: ifnull +8 -> 227
    //   222: aload 14
    //   224: invokevirtual 334	java/io/InputStream:close	()V
    //   227: aload 26
    //   229: ifnull +8 -> 237
    //   232: aload 26
    //   234: invokevirtual 335	java/io/FileOutputStream:close	()V
    //   237: ldc 2
    //   239: monitorexit
    //   240: aload 8
    //   242: areturn
    //   243: aload 22
    //   245: aload 24
    //   247: iconst_0
    //   248: iload 25
    //   250: invokevirtual 339	java/io/FileOutputStream:write	([BII)V
    //   253: goto -54 -> 199
    //   256: astore 23
    //   258: aload 22
    //   260: astore 11
    //   262: aload 14
    //   264: astore 12
    //   266: ldc_w 341
    //   269: invokestatic 346	gk:a	(Ljava/lang/Object;)V
    //   272: aload 12
    //   274: ifnull +8 -> 282
    //   277: aload 12
    //   279: invokevirtual 334	java/io/InputStream:close	()V
    //   282: aload 11
    //   284: ifnull +8 -> 292
    //   287: aload 11
    //   289: invokevirtual 335	java/io/FileOutputStream:close	()V
    //   292: aconst_null
    //   293: astore 8
    //   295: goto -58 -> 237
    //   298: astore 16
    //   300: aconst_null
    //   301: astore 14
    //   303: aload 14
    //   305: ifnull +8 -> 313
    //   308: aload 14
    //   310: invokevirtual 334	java/io/InputStream:close	()V
    //   313: aload_2
    //   314: ifnull +7 -> 321
    //   317: aload_2
    //   318: invokevirtual 335	java/io/FileOutputStream:close	()V
    //   321: aload 16
    //   323: athrow
    //   324: astore_3
    //   325: ldc 2
    //   327: monitorexit
    //   328: aload_3
    //   329: athrow
    //   330: astore 20
    //   332: goto -50 -> 282
    //   335: astore 19
    //   337: goto -45 -> 292
    //   340: astore 18
    //   342: goto -29 -> 313
    //   345: astore 17
    //   347: goto -26 -> 321
    //   350: astore 28
    //   352: goto -125 -> 227
    //   355: astore 27
    //   357: goto -120 -> 237
    //   360: astore 16
    //   362: aconst_null
    //   363: astore_2
    //   364: goto -61 -> 303
    //   367: astore 16
    //   369: aload 22
    //   371: astore_2
    //   372: goto -69 -> 303
    //   375: astore 13
    //   377: aload 12
    //   379: astore 14
    //   381: aload 11
    //   383: astore 15
    //   385: aload 13
    //   387: astore 16
    //   389: aload 15
    //   391: astore_2
    //   392: goto -89 -> 303
    //   395: astore 10
    //   397: aconst_null
    //   398: astore 11
    //   400: aconst_null
    //   401: astore 12
    //   403: goto -137 -> 266
    //   406: astore 29
    //   408: aload 14
    //   410: astore 12
    //   412: aconst_null
    //   413: astore 11
    //   415: goto -149 -> 266
    //   418: aconst_null
    //   419: astore 26
    //   421: aconst_null
    //   422: astore 14
    //   424: goto -207 -> 217
    //
    // Exception table:
    //   from	to	target	type
    //   192	208	256	java/io/IOException
    //   243	253	256	java/io/IOException
    //   78	177	298	finally
    //   5	74	324	finally
    //   222	227	324	finally
    //   232	237	324	finally
    //   277	282	324	finally
    //   287	292	324	finally
    //   308	313	324	finally
    //   317	321	324	finally
    //   321	324	324	finally
    //   277	282	330	java/io/IOException
    //   287	292	335	java/io/IOException
    //   308	313	340	java/io/IOException
    //   317	321	345	java/io/IOException
    //   222	227	350	java/io/IOException
    //   232	237	355	java/io/IOException
    //   181	192	360	finally
    //   192	208	367	finally
    //   243	253	367	finally
    //   266	272	375	finally
    //   78	177	395	java/io/IOException
    //   181	192	406	java/io/IOException
  }

  // ERROR //
  private static boolean a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: new 268	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 350	java/lang/StringBuilder:<init>	()V
    //   7: aload_0
    //   8: invokevirtual 246	android/content/Context:getFilesDir	()Ljava/io/File;
    //   11: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   14: getstatic 277	java/io/File:separator	Ljava/lang/String;
    //   17: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: ldc_w 290
    //   23: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: invokevirtual 282	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: astore_1
    //   30: new 248	java/io/File
    //   33: dup
    //   34: aload_1
    //   35: invokespecial 256	java/io/File:<init>	(Ljava/lang/String;)V
    //   38: invokevirtual 260	java/io/File:exists	()Z
    //   41: ifne +9 -> 50
    //   44: iconst_1
    //   45: istore 8
    //   47: iload 8
    //   49: ireturn
    //   50: aload_0
    //   51: invokevirtual 354	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   54: astore_2
    //   55: aload_2
    //   56: ldc_w 290
    //   59: invokevirtual 357	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   62: astore 18
    //   64: aload 18
    //   66: astore 4
    //   68: bipush 12
    //   70: newarray byte
    //   72: astore 19
    //   74: aload 4
    //   76: aload 19
    //   78: invokevirtual 331	java/io/InputStream:read	([B)I
    //   81: pop
    //   82: sipush 255
    //   85: aload 19
    //   87: bipush 6
    //   89: baload
    //   90: iand
    //   91: sipush 255
    //   94: aload 19
    //   96: bipush 7
    //   98: baload
    //   99: iand
    //   100: bipush 8
    //   102: ishl
    //   103: ior
    //   104: sipush 255
    //   107: aload 19
    //   109: bipush 8
    //   111: baload
    //   112: iand
    //   113: bipush 16
    //   115: ishl
    //   116: ior
    //   117: istore 21
    //   119: aload 19
    //   121: bipush 9
    //   123: baload
    //   124: istore 22
    //   126: iload 21
    //   128: iload 22
    //   130: sipush 255
    //   133: iand
    //   134: bipush 24
    //   136: ishl
    //   137: ior
    //   138: istore 23
    //   140: aload 4
    //   142: ifnull +134 -> 276
    //   145: aload 4
    //   147: invokevirtual 334	java/io/InputStream:close	()V
    //   150: iload 23
    //   152: istore 7
    //   154: iload 7
    //   156: ifne +127 -> 283
    //   159: iconst_0
    //   160: istore 8
    //   162: goto -115 -> 47
    //   165: astore 16
    //   167: aconst_null
    //   168: astore 4
    //   170: aload 16
    //   172: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   175: aload 4
    //   177: ifnull +255 -> 432
    //   180: aload 4
    //   182: invokevirtual 334	java/io/InputStream:close	()V
    //   185: iconst_0
    //   186: istore 7
    //   188: goto -34 -> 154
    //   191: astore 17
    //   193: aload 17
    //   195: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   198: iconst_0
    //   199: istore 7
    //   201: goto -47 -> 154
    //   204: astore 6
    //   206: aconst_null
    //   207: astore 4
    //   209: aload 6
    //   211: invokevirtual 361	java/lang/Exception:printStackTrace	()V
    //   214: aload 4
    //   216: ifnull +216 -> 432
    //   219: aload 4
    //   221: invokevirtual 334	java/io/InputStream:close	()V
    //   224: iconst_0
    //   225: istore 7
    //   227: goto -73 -> 154
    //   230: astore 15
    //   232: aload 15
    //   234: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   237: iconst_0
    //   238: istore 7
    //   240: goto -86 -> 154
    //   243: astore_3
    //   244: aconst_null
    //   245: astore 4
    //   247: aload 4
    //   249: ifnull +8 -> 257
    //   252: aload 4
    //   254: invokevirtual 334	java/io/InputStream:close	()V
    //   257: aload_3
    //   258: athrow
    //   259: astore 5
    //   261: aload 5
    //   263: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   266: goto -9 -> 257
    //   269: astore 24
    //   271: aload 24
    //   273: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   276: iload 23
    //   278: istore 7
    //   280: goto -126 -> 154
    //   283: new 248	java/io/File
    //   286: dup
    //   287: aload_1
    //   288: invokespecial 256	java/io/File:<init>	(Ljava/lang/String;)V
    //   291: astore 9
    //   293: aload 9
    //   295: invokevirtual 260	java/io/File:exists	()Z
    //   298: istore 10
    //   300: aconst_null
    //   301: astore 11
    //   303: iload 10
    //   305: ifeq +76 -> 381
    //   308: new 363	java/util/concurrent/atomic/AtomicReference
    //   311: dup
    //   312: invokespecial 364	java/util/concurrent/atomic/AtomicReference:<init>	()V
    //   315: astore 12
    //   317: aload_0
    //   318: aload 12
    //   320: aload_1
    //   321: invokestatic 370	com/tencent/tccdb/SmsChecker:getRuleFileHeader	(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V
    //   324: aload 12
    //   326: invokevirtual 374	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   329: checkcast 376	com/tencent/tccdb/RuleFileHeader
    //   332: astore 13
    //   334: aconst_null
    //   335: astore 11
    //   337: aload 13
    //   339: ifnull +42 -> 381
    //   342: new 378	QQPIM/ConfInfo
    //   345: dup
    //   346: invokespecial 379	QQPIM/ConfInfo:<init>	()V
    //   349: astore 11
    //   351: aload 11
    //   353: aload 9
    //   355: invokevirtual 382	java/io/File:getName	()Ljava/lang/String;
    //   358: invokevirtual 385	QQPIM/ConfInfo:setFilename	(Ljava/lang/String;)V
    //   361: aload 11
    //   363: aload 13
    //   365: getfield 388	com/tencent/tccdb/RuleFileHeader:md5str	Ljava/lang/String;
    //   368: invokevirtual 391	QQPIM/ConfInfo:setChecksum	(Ljava/lang/String;)V
    //   371: aload 11
    //   373: aload 13
    //   375: getfield 395	com/tencent/tccdb/RuleFileHeader:time	I
    //   378: invokevirtual 399	QQPIM/ConfInfo:setTimestamp	(I)V
    //   381: aload 11
    //   383: ifnull +43 -> 426
    //   386: aload 11
    //   388: invokevirtual 403	QQPIM/ConfInfo:getTimestamp	()I
    //   391: istore 14
    //   393: iload 7
    //   395: iload 14
    //   397: if_icmple +9 -> 406
    //   400: iconst_1
    //   401: istore 8
    //   403: goto -356 -> 47
    //   406: iconst_0
    //   407: istore 8
    //   409: goto -362 -> 47
    //   412: astore_3
    //   413: goto -166 -> 247
    //   416: astore 6
    //   418: goto -209 -> 209
    //   421: astore 16
    //   423: goto -253 -> 170
    //   426: iconst_0
    //   427: istore 14
    //   429: goto -36 -> 393
    //   432: iconst_0
    //   433: istore 7
    //   435: goto -281 -> 154
    //
    // Exception table:
    //   from	to	target	type
    //   55	64	165	java/io/IOException
    //   180	185	191	java/io/IOException
    //   55	64	204	java/lang/Exception
    //   219	224	230	java/io/IOException
    //   55	64	243	finally
    //   252	257	259	java/io/IOException
    //   145	150	269	java/io/IOException
    //   68	126	412	finally
    //   170	175	412	finally
    //   209	214	412	finally
    //   68	126	416	java/lang/Exception
    //   68	126	421	java/io/IOException
  }

  public static boolean a(String paramString)
  {
    return new File(paramString).exists();
  }

  // ERROR //
  public static String b(String paramString)
  {
    // Byte code:
    //   0: new 409	java/io/BufferedInputStream
    //   3: dup
    //   4: new 411	java/io/FileInputStream
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 412	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   12: invokespecial 415	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   15: astore_1
    //   16: new 417	java/io/ByteArrayOutputStream
    //   19: dup
    //   20: invokespecial 418	java/io/ByteArrayOutputStream:<init>	()V
    //   23: astore_2
    //   24: sipush 1024
    //   27: newarray byte
    //   29: astore 14
    //   31: aload_1
    //   32: aload 14
    //   34: invokevirtual 419	java/io/BufferedInputStream:read	([B)I
    //   37: istore 15
    //   39: iload 15
    //   41: iconst_m1
    //   42: if_icmpne +27 -> 69
    //   45: new 10	java/lang/String
    //   48: dup
    //   49: aload_2
    //   50: invokevirtual 423	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   53: invokespecial 426	java/lang/String:<init>	([B)V
    //   56: astore 8
    //   58: aload_2
    //   59: invokevirtual 427	java/io/ByteArrayOutputStream:close	()V
    //   62: aload_1
    //   63: invokevirtual 428	java/io/BufferedInputStream:close	()V
    //   66: aload 8
    //   68: areturn
    //   69: aload_2
    //   70: aload 14
    //   72: iconst_0
    //   73: iload 15
    //   75: invokevirtual 429	java/io/ByteArrayOutputStream:write	([BII)V
    //   78: goto -47 -> 31
    //   81: astore 10
    //   83: aload_1
    //   84: astore 11
    //   86: aload 10
    //   88: invokevirtual 430	java/io/FileNotFoundException:printStackTrace	()V
    //   91: aload_2
    //   92: ifnull +7 -> 99
    //   95: aload_2
    //   96: invokevirtual 427	java/io/ByteArrayOutputStream:close	()V
    //   99: aload 11
    //   101: ifnull +8 -> 109
    //   104: aload 11
    //   106: invokevirtual 428	java/io/BufferedInputStream:close	()V
    //   109: ldc 234
    //   111: astore 8
    //   113: goto -47 -> 66
    //   116: astore 16
    //   118: aload 16
    //   120: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   123: goto -61 -> 62
    //   126: astore 17
    //   128: aload 17
    //   130: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   133: goto -67 -> 66
    //   136: astore 13
    //   138: aload 13
    //   140: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   143: goto -44 -> 99
    //   146: astore 12
    //   148: aload 12
    //   150: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   153: goto -44 -> 109
    //   156: astore_3
    //   157: aconst_null
    //   158: astore_2
    //   159: aconst_null
    //   160: astore_1
    //   161: aload_3
    //   162: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   165: aload_2
    //   166: ifnull +7 -> 173
    //   169: aload_2
    //   170: invokevirtual 427	java/io/ByteArrayOutputStream:close	()V
    //   173: aload_1
    //   174: ifnull -65 -> 109
    //   177: aload_1
    //   178: invokevirtual 428	java/io/BufferedInputStream:close	()V
    //   181: goto -72 -> 109
    //   184: astore 7
    //   186: aload 7
    //   188: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   191: goto -82 -> 109
    //   194: astore 9
    //   196: aload 9
    //   198: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   201: goto -28 -> 173
    //   204: astore 4
    //   206: aconst_null
    //   207: astore_2
    //   208: aconst_null
    //   209: astore_1
    //   210: aload_2
    //   211: ifnull +7 -> 218
    //   214: aload_2
    //   215: invokevirtual 427	java/io/ByteArrayOutputStream:close	()V
    //   218: aload_1
    //   219: ifnull +7 -> 226
    //   222: aload_1
    //   223: invokevirtual 428	java/io/BufferedInputStream:close	()V
    //   226: aload 4
    //   228: athrow
    //   229: astore 6
    //   231: aload 6
    //   233: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   236: goto -18 -> 218
    //   239: astore 5
    //   241: aload 5
    //   243: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   246: goto -20 -> 226
    //   249: astore 4
    //   251: aconst_null
    //   252: astore_2
    //   253: goto -43 -> 210
    //   256: astore 4
    //   258: goto -48 -> 210
    //   261: astore 4
    //   263: aload 11
    //   265: astore_1
    //   266: goto -56 -> 210
    //   269: astore_3
    //   270: aconst_null
    //   271: astore_2
    //   272: goto -111 -> 161
    //   275: astore_3
    //   276: goto -115 -> 161
    //   279: astore 10
    //   281: aconst_null
    //   282: astore_2
    //   283: aconst_null
    //   284: astore 11
    //   286: goto -200 -> 86
    //   289: astore 10
    //   291: aload_1
    //   292: astore 11
    //   294: aconst_null
    //   295: astore_2
    //   296: goto -210 -> 86
    //
    // Exception table:
    //   from	to	target	type
    //   24	58	81	java/io/FileNotFoundException
    //   69	78	81	java/io/FileNotFoundException
    //   58	62	116	java/io/IOException
    //   62	66	126	java/io/IOException
    //   95	99	136	java/io/IOException
    //   104	109	146	java/io/IOException
    //   0	16	156	java/io/IOException
    //   177	181	184	java/io/IOException
    //   169	173	194	java/io/IOException
    //   0	16	204	finally
    //   214	218	229	java/io/IOException
    //   222	226	239	java/io/IOException
    //   16	24	249	finally
    //   24	58	256	finally
    //   69	78	256	finally
    //   161	165	256	finally
    //   86	91	261	finally
    //   16	24	269	java/io/IOException
    //   24	58	275	java/io/IOException
    //   69	78	275	java/io/IOException
    //   0	16	279	java/io/FileNotFoundException
    //   16	24	289	java/io/FileNotFoundException
  }

  // ERROR //
  private static boolean b(android.content.Context paramContext)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: new 432	ex
    //   5: dup
    //   6: ldc_w 434
    //   9: invokespecial 435	ex:<init>	(Ljava/lang/String;)V
    //   12: astore_2
    //   13: aload_2
    //   14: getfield 438	ex:c	Landroid/content/SharedPreferences;
    //   17: new 268	java/lang/StringBuilder
    //   20: dup
    //   21: aload_2
    //   22: getfield 440	ex:a	Ljava/lang/String;
    //   25: invokestatic 272	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   28: invokespecial 273	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   31: ldc_w 442
    //   34: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: ldc_w 444
    //   40: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 282	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: ldc 234
    //   48: invokeinterface 450 3 0
    //   53: astore_3
    //   54: ldc_w 452
    //   57: invokestatic 457	com/tencent/tmsecure/common/TMSApplication:getStrFromEnvMap	(Ljava/lang/String;)Ljava/lang/String;
    //   60: astore 4
    //   62: aload_3
    //   63: aload 4
    //   65: invokevirtual 288	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   68: ifne +64 -> 132
    //   71: aload_2
    //   72: getfield 460	ex:b	Landroid/content/SharedPreferences$Editor;
    //   75: new 268	java/lang/StringBuilder
    //   78: dup
    //   79: aload_2
    //   80: getfield 440	ex:a	Ljava/lang/String;
    //   83: invokestatic 272	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   86: invokespecial 273	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   89: ldc_w 442
    //   92: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: ldc_w 444
    //   98: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: invokevirtual 282	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   104: aload 4
    //   106: invokeinterface 466 3 0
    //   111: pop
    //   112: aload_2
    //   113: getfield 460	ex:b	Landroid/content/SharedPreferences$Editor;
    //   116: invokeinterface 469 1 0
    //   121: pop
    //   122: iload_1
    //   123: istore 5
    //   125: iload 5
    //   127: ifeq +11 -> 138
    //   130: iload_1
    //   131: ireturn
    //   132: iconst_0
    //   133: istore 5
    //   135: goto -10 -> 125
    //   138: new 268	java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial 350	java/lang/StringBuilder:<init>	()V
    //   145: aload_0
    //   146: invokevirtual 246	android/content/Context:getFilesDir	()Ljava/io/File;
    //   149: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   152: getstatic 277	java/io/File:separator	Ljava/lang/String;
    //   155: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: ldc_w 295
    //   161: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: invokevirtual 282	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   167: astore 6
    //   169: new 248	java/io/File
    //   172: dup
    //   173: aload 6
    //   175: invokespecial 256	java/io/File:<init>	(Ljava/lang/String;)V
    //   178: invokevirtual 260	java/io/File:exists	()Z
    //   181: ifeq -51 -> 130
    //   184: aload_0
    //   185: invokevirtual 354	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   188: astore 7
    //   190: aload 7
    //   192: ldc_w 295
    //   195: invokevirtual 357	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   198: astore 20
    //   200: aload 20
    //   202: astore 9
    //   204: bipush 28
    //   206: newarray byte
    //   208: astore 21
    //   210: aload 9
    //   212: aload 21
    //   214: invokevirtual 331	java/io/InputStream:read	([B)I
    //   217: pop
    //   218: sipush 255
    //   221: aload 21
    //   223: iconst_4
    //   224: baload
    //   225: iand
    //   226: sipush 255
    //   229: aload 21
    //   231: iconst_5
    //   232: baload
    //   233: iand
    //   234: bipush 8
    //   236: ishl
    //   237: ior
    //   238: sipush 255
    //   241: aload 21
    //   243: bipush 6
    //   245: baload
    //   246: iand
    //   247: bipush 16
    //   249: ishl
    //   250: ior
    //   251: istore 23
    //   253: aload 21
    //   255: bipush 7
    //   257: baload
    //   258: istore 24
    //   260: iload 23
    //   262: iload 24
    //   264: sipush 255
    //   267: iand
    //   268: bipush 24
    //   270: ishl
    //   271: ior
    //   272: istore 12
    //   274: sipush 255
    //   277: aload 21
    //   279: bipush 24
    //   281: baload
    //   282: iand
    //   283: sipush 255
    //   286: aload 21
    //   288: bipush 25
    //   290: baload
    //   291: iand
    //   292: bipush 8
    //   294: ishl
    //   295: ior
    //   296: sipush 255
    //   299: aload 21
    //   301: bipush 26
    //   303: baload
    //   304: iand
    //   305: bipush 16
    //   307: ishl
    //   308: ior
    //   309: istore 25
    //   311: aload 21
    //   313: bipush 27
    //   315: baload
    //   316: istore 26
    //   318: iload 25
    //   320: iload 26
    //   322: sipush 255
    //   325: iand
    //   326: bipush 24
    //   328: ishl
    //   329: ior
    //   330: istore 13
    //   332: aload 9
    //   334: ifnull +8 -> 342
    //   337: aload 9
    //   339: invokevirtual 334	java/io/InputStream:close	()V
    //   342: iload 13
    //   344: ifne +130 -> 474
    //   347: iconst_0
    //   348: istore_1
    //   349: goto -219 -> 130
    //   352: astore 18
    //   354: aconst_null
    //   355: astore 9
    //   357: iconst_0
    //   358: istore 12
    //   360: aload 18
    //   362: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   365: aload 9
    //   367: ifnull +184 -> 551
    //   370: aload 9
    //   372: invokevirtual 334	java/io/InputStream:close	()V
    //   375: iconst_0
    //   376: istore 13
    //   378: goto -36 -> 342
    //   381: astore 19
    //   383: aload 19
    //   385: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   388: iconst_0
    //   389: istore 13
    //   391: goto -49 -> 342
    //   394: astore 11
    //   396: aconst_null
    //   397: astore 9
    //   399: iconst_0
    //   400: istore 12
    //   402: aload 11
    //   404: invokevirtual 361	java/lang/Exception:printStackTrace	()V
    //   407: aload 9
    //   409: ifnull +142 -> 551
    //   412: aload 9
    //   414: invokevirtual 334	java/io/InputStream:close	()V
    //   417: iconst_0
    //   418: istore 13
    //   420: goto -78 -> 342
    //   423: astore 17
    //   425: aload 17
    //   427: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   430: iconst_0
    //   431: istore 13
    //   433: goto -91 -> 342
    //   436: astore 8
    //   438: aconst_null
    //   439: astore 9
    //   441: aload 9
    //   443: ifnull +8 -> 451
    //   446: aload 9
    //   448: invokevirtual 334	java/io/InputStream:close	()V
    //   451: aload 8
    //   453: athrow
    //   454: astore 10
    //   456: aload 10
    //   458: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   461: goto -10 -> 451
    //   464: astore 27
    //   466: aload 27
    //   468: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   471: goto -129 -> 342
    //   474: aload_0
    //   475: aload 6
    //   477: invokestatic 474	fp:a	(Landroid/content/Context;Ljava/lang/String;)LQQPIM/VirusClientInfo;
    //   480: astore 14
    //   482: aload 14
    //   484: ifnull -354 -> 130
    //   487: aload 14
    //   489: invokevirtual 479	QQPIM/VirusClientInfo:getVersion	()I
    //   492: istore 15
    //   494: aload 14
    //   496: invokevirtual 480	QQPIM/VirusClientInfo:getTimestamp	()I
    //   499: istore 16
    //   501: iload 12
    //   503: iload 15
    //   505: if_icmpne -375 -> 130
    //   508: iload 13
    //   510: iload 16
    //   512: if_icmpgt -382 -> 130
    //   515: iconst_0
    //   516: istore_1
    //   517: goto -387 -> 130
    //   520: astore 8
    //   522: goto -81 -> 441
    //   525: astore 11
    //   527: iconst_0
    //   528: istore 12
    //   530: goto -128 -> 402
    //   533: astore 11
    //   535: goto -133 -> 402
    //   538: astore 18
    //   540: iconst_0
    //   541: istore 12
    //   543: goto -183 -> 360
    //   546: astore 18
    //   548: goto -188 -> 360
    //   551: iconst_0
    //   552: istore 13
    //   554: goto -212 -> 342
    //
    // Exception table:
    //   from	to	target	type
    //   190	200	352	java/io/IOException
    //   370	375	381	java/io/IOException
    //   190	200	394	java/lang/Exception
    //   412	417	423	java/io/IOException
    //   190	200	436	finally
    //   446	451	454	java/io/IOException
    //   337	342	464	java/io/IOException
    //   204	260	520	finally
    //   274	318	520	finally
    //   360	365	520	finally
    //   402	407	520	finally
    //   204	260	525	java/lang/Exception
    //   274	318	533	java/lang/Exception
    //   204	260	538	java/io/IOException
    //   274	318	546	java/io/IOException
  }

  // ERROR //
  private static boolean b(android.content.Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: iconst_1
    //   3: istore_3
    //   4: new 248	java/io/File
    //   7: dup
    //   8: new 268	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 350	java/lang/StringBuilder:<init>	()V
    //   15: invokestatic 484	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   18: invokevirtual 246	android/content/Context:getFilesDir	()Ljava/io/File;
    //   21: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   24: getstatic 277	java/io/File:separator	Ljava/lang/String;
    //   27: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: aload_1
    //   31: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: invokevirtual 282	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: invokespecial 256	java/io/File:<init>	(Ljava/lang/String;)V
    //   40: astore 4
    //   42: aload 4
    //   44: invokevirtual 260	java/io/File:exists	()Z
    //   47: ifne +5 -> 52
    //   50: iload_3
    //   51: ireturn
    //   52: aload_0
    //   53: invokevirtual 308	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   56: invokevirtual 314	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   59: aload_1
    //   60: iconst_1
    //   61: invokevirtual 320	android/content/res/AssetManager:open	(Ljava/lang/String;I)Ljava/io/InputStream;
    //   64: astore 18
    //   66: aload 18
    //   68: astore 6
    //   70: aload 6
    //   72: invokestatic 489	k:a	(Ljava/io/InputStream;)Let;
    //   75: getfield 493	et:a	I
    //   78: istore 19
    //   80: aload 6
    //   82: ifnull +96 -> 178
    //   85: aload 6
    //   87: invokevirtual 334	java/io/InputStream:close	()V
    //   90: iload 19
    //   92: istore 9
    //   94: iload 9
    //   96: ifne +89 -> 185
    //   99: iconst_0
    //   100: istore_3
    //   101: goto -51 -> 50
    //   104: astore 8
    //   106: aconst_null
    //   107: astore 6
    //   109: aload 8
    //   111: invokevirtual 361	java/lang/Exception:printStackTrace	()V
    //   114: aload 6
    //   116: ifnull +206 -> 322
    //   119: aload 6
    //   121: invokevirtual 334	java/io/InputStream:close	()V
    //   124: iconst_0
    //   125: istore 9
    //   127: goto -33 -> 94
    //   130: astore 17
    //   132: aload 17
    //   134: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   137: iconst_0
    //   138: istore 9
    //   140: goto -46 -> 94
    //   143: astore 5
    //   145: aconst_null
    //   146: astore 6
    //   148: aload 6
    //   150: ifnull +8 -> 158
    //   153: aload 6
    //   155: invokevirtual 334	java/io/InputStream:close	()V
    //   158: aload 5
    //   160: athrow
    //   161: astore 7
    //   163: aload 7
    //   165: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   168: goto -10 -> 158
    //   171: astore 20
    //   173: aload 20
    //   175: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   178: iload 19
    //   180: istore 9
    //   182: goto -88 -> 94
    //   185: new 411	java/io/FileInputStream
    //   188: dup
    //   189: aload 4
    //   191: invokespecial 494	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   194: astore 10
    //   196: aload 10
    //   198: invokestatic 489	k:a	(Ljava/io/InputStream;)Let;
    //   201: getfield 493	et:a	I
    //   204: istore 14
    //   206: aload 10
    //   208: invokevirtual 495	java/io/FileInputStream:close	()V
    //   211: iload 9
    //   213: iload 14
    //   215: if_icmpgt -165 -> 50
    //   218: iconst_0
    //   219: istore_3
    //   220: goto -170 -> 50
    //   223: astore 11
    //   225: aload 11
    //   227: invokevirtual 361	java/lang/Exception:printStackTrace	()V
    //   230: aload_2
    //   231: ifnull +85 -> 316
    //   234: aload_2
    //   235: invokevirtual 495	java/io/FileInputStream:close	()V
    //   238: iconst_0
    //   239: istore 14
    //   241: goto -30 -> 211
    //   244: astore 15
    //   246: aload 15
    //   248: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   251: iconst_0
    //   252: istore 14
    //   254: goto -43 -> 211
    //   257: astore 12
    //   259: aload_2
    //   260: ifnull +7 -> 267
    //   263: aload_2
    //   264: invokevirtual 495	java/io/FileInputStream:close	()V
    //   267: aload 12
    //   269: athrow
    //   270: astore 13
    //   272: aload 13
    //   274: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   277: goto -10 -> 267
    //   280: astore 16
    //   282: aload 16
    //   284: invokevirtual 360	java/io/IOException:printStackTrace	()V
    //   287: goto -76 -> 211
    //   290: astore 12
    //   292: aload 10
    //   294: astore_2
    //   295: goto -36 -> 259
    //   298: astore 11
    //   300: aload 10
    //   302: astore_2
    //   303: goto -78 -> 225
    //   306: astore 5
    //   308: goto -160 -> 148
    //   311: astore 8
    //   313: goto -204 -> 109
    //   316: iconst_0
    //   317: istore 14
    //   319: goto -108 -> 211
    //   322: iconst_0
    //   323: istore 9
    //   325: goto -231 -> 94
    //
    // Exception table:
    //   from	to	target	type
    //   52	66	104	java/lang/Exception
    //   119	124	130	java/io/IOException
    //   52	66	143	finally
    //   153	158	161	java/io/IOException
    //   85	90	171	java/io/IOException
    //   185	196	223	java/lang/Exception
    //   234	238	244	java/io/IOException
    //   185	196	257	finally
    //   225	230	257	finally
    //   263	267	270	java/io/IOException
    //   206	211	280	java/io/IOException
    //   196	206	290	finally
    //   196	206	298	java/lang/Exception
    //   70	80	306	finally
    //   109	114	306	finally
    //   70	80	311	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     eu
 * JD-Core Version:    0.6.2
 */