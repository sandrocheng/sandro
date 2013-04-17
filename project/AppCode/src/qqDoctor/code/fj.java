public final class fj
{
  static
  {
    new String[][] { { "3gp", "video/3gpp" }, { "apk", "application/vnd.android.package-archive" }, { "asf", "video/x-ms-asf" }, { "avi", "video/x-msvideo" }, { "bin", "application/octet-stream" }, { "bmp", "image/bmp" }, { "c", "text/plain" }, { "class", "application/octet-stream" }, { "conf", "text/plain" }, { "cpp", "text/plain" }, { "doc", "application/msword" }, { "docx", "application/msword" }, { "exe", "application/octet-stream" }, { "gif", "image/gif" }, { "gtar", "application/x-gtar" }, { "gz", "application/x-gzip" }, { "h", "text/plain" }, { "htm", "text/html" }, { "html", "text/html" }, { "jar", "application/java-archive" }, { "java", "text/plain" }, { "jpeg", "image/jpeg" }, { "jpg", "image/jpeg" }, { "js", "application/x-javascript" }, { "log", "text/plain" }, { "m3u", "audio/x-mpegurl" }, { "m4a", "audio/mp4a-latm" }, { "m4b", "audio/mp4a-latm" }, { "m4p", "audio/mp4a-latm" }, { "m4u", "video/vnd.mpegurl" }, { "m4v", "video/x-m4v" }, { "mov", "video/quicktime" }, { "mp2", "audio/x-mpeg" }, { "mp3", "audio/x-mpeg" }, { "mp4", "video/mp4" }, { "mpc", "application/vnd.mpohn.certificate" }, { "mpe", "video/mpeg" }, { "mpeg", "video/mpeg" }, { "mpg", "video/mpeg" }, { "mpg4", "video/mp4" }, { "mpga", "audio/mpeg" }, { "msg", "application/vnd.ms-outlook" }, { "ogg", "audio/ogg" }, { "pdf", "application/pdf" }, { "png", "image/png" }, { "pps", "application/vnd.ms-powerpoint" }, { "ppsx", "application/vnd.ms-powerpoint" }, { "ppt", "application/vnd.ms-powerpoint" }, { "pptx", "application/vnd.ms-powerpoint" }, { "xls", "application/vnd.ms-excel" }, { "xlsx", "application/vnd.ms-excel" }, { "prop", "text/plain" }, { "rar", "application/x-rar-compressed" }, { "rc", "text/plain" }, { "rmvb", "audio/x-pn-realaudio" }, { "rtf", "application/rtf" }, { "sh", "text/plain" }, { "tar", "application/x-tar" }, { "tgz", "application/x-compressed" }, { "txt", "text/plain" }, { "wav", "audio/x-wav" }, { "wma", "audio/x-ms-wma" }, { "wmv", "audio/x-ms-wmv" }, { "wps", "application/vnd.ms-works" }, { "xml", "text/plain" }, { "z", "application/x-compress" }, { "zip", "application/zip" }, { "epub", "application/epub+zip" }, { "", "*/*" } };
  }

  // ERROR //
  public static int a(android.content.Context paramContext, Object paramObject, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: bipush 254
    //   5: istore 5
    //   7: aload_1
    //   8: ifnull +11 -> 19
    //   11: aload_2
    //   12: ifnull +7 -> 19
    //   15: aload_3
    //   16: ifnonnull +10 -> 26
    //   19: bipush 199
    //   21: istore 5
    //   23: iload 5
    //   25: ireturn
    //   26: aload_0
    //   27: aload_3
    //   28: iconst_0
    //   29: invokevirtual 250	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   32: astore 18
    //   34: aload 18
    //   36: astore 4
    //   38: new 252	com/qq/jce/wup/UniAttribute
    //   41: dup
    //   42: invokespecial 255	com/qq/jce/wup/UniAttribute:<init>	()V
    //   45: astore 19
    //   47: aload 19
    //   49: ldc_w 257
    //   52: invokevirtual 261	com/qq/jce/wup/UniAttribute:setEncodeName	(Ljava/lang/String;)V
    //   55: aload 19
    //   57: aload_2
    //   58: aload_1
    //   59: invokevirtual 265	com/qq/jce/wup/UniAttribute:put	(Ljava/lang/String;Ljava/lang/Object;)V
    //   62: aload_0
    //   63: aload 19
    //   65: invokevirtual 269	com/qq/jce/wup/UniAttribute:encode	()[B
    //   68: aconst_null
    //   69: invokestatic 275	com/tencent/tccdb/TccCryptor:encrypt	(Landroid/content/Context;[B[B)[B
    //   72: astore 23
    //   74: aload 23
    //   76: ifnull +13 -> 89
    //   79: aload 4
    //   81: aload 23
    //   83: invokevirtual 281	java/io/FileOutputStream:write	([B)V
    //   86: iconst_0
    //   87: istore 5
    //   89: aload 4
    //   91: ifnull -68 -> 23
    //   94: aload 4
    //   96: invokevirtual 284	java/io/FileOutputStream:close	()V
    //   99: goto -76 -> 23
    //   102: astore 24
    //   104: aload 24
    //   106: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   109: goto -86 -> 23
    //   112: astore 15
    //   114: aconst_null
    //   115: astore 9
    //   117: aload 15
    //   119: astore 16
    //   121: iconst_m1
    //   122: istore 5
    //   124: aload 16
    //   126: invokevirtual 288	java/io/FileNotFoundException:printStackTrace	()V
    //   129: aload 9
    //   131: ifnull -108 -> 23
    //   134: aload 9
    //   136: invokevirtual 284	java/io/FileOutputStream:close	()V
    //   139: goto -116 -> 23
    //   142: astore 17
    //   144: aload 17
    //   146: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   149: goto -126 -> 23
    //   152: astore 12
    //   154: aconst_null
    //   155: astore 9
    //   157: aload 12
    //   159: astore 13
    //   161: sipush -7000
    //   164: istore 5
    //   166: aload 13
    //   168: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   171: aload 9
    //   173: ifnull -150 -> 23
    //   176: aload 9
    //   178: invokevirtual 284	java/io/FileOutputStream:close	()V
    //   181: goto -158 -> 23
    //   184: astore 14
    //   186: aload 14
    //   188: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   191: goto -168 -> 23
    //   194: astore 8
    //   196: aconst_null
    //   197: astore 9
    //   199: aload 8
    //   201: astore 10
    //   203: aload 10
    //   205: invokevirtual 289	java/lang/Throwable:printStackTrace	()V
    //   208: aload 9
    //   210: ifnull -187 -> 23
    //   213: aload 9
    //   215: invokevirtual 284	java/io/FileOutputStream:close	()V
    //   218: goto -195 -> 23
    //   221: astore 11
    //   223: aload 11
    //   225: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   228: goto -205 -> 23
    //   231: astore 6
    //   233: aload 4
    //   235: ifnull +8 -> 243
    //   238: aload 4
    //   240: invokevirtual 284	java/io/FileOutputStream:close	()V
    //   243: aload 6
    //   245: athrow
    //   246: astore 7
    //   248: aload 7
    //   250: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   253: goto -10 -> 243
    //   256: astore 6
    //   258: aload 9
    //   260: astore 4
    //   262: goto -29 -> 233
    //   265: astore 22
    //   267: aload 4
    //   269: astore 9
    //   271: aload 22
    //   273: astore 10
    //   275: goto -72 -> 203
    //   278: astore 21
    //   280: aload 4
    //   282: astore 9
    //   284: aload 21
    //   286: astore 13
    //   288: goto -127 -> 161
    //   291: astore 20
    //   293: aload 4
    //   295: astore 9
    //   297: aload 20
    //   299: astore 16
    //   301: goto -180 -> 121
    //
    // Exception table:
    //   from	to	target	type
    //   94	99	102	java/io/IOException
    //   26	34	112	java/io/FileNotFoundException
    //   134	139	142	java/io/IOException
    //   26	34	152	java/io/IOException
    //   176	181	184	java/io/IOException
    //   26	34	194	java/lang/Throwable
    //   213	218	221	java/io/IOException
    //   26	34	231	finally
    //   38	86	231	finally
    //   238	243	246	java/io/IOException
    //   124	129	256	finally
    //   166	171	256	finally
    //   203	208	256	finally
    //   38	86	265	java/lang/Throwable
    //   38	86	278	java/io/IOException
    //   38	86	291	java/io/FileNotFoundException
  }

  // ERROR //
  public static Object a(android.content.Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: ifnull +9 -> 12
    //   6: aconst_null
    //   7: astore_3
    //   8: aload_2
    //   9: ifnonnull +5 -> 14
    //   12: aload_3
    //   13: areturn
    //   14: aload_0
    //   15: aload_2
    //   16: invokevirtual 294	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   19: astore 19
    //   21: aload 19
    //   23: astore 6
    //   25: new 296	java/io/ByteArrayOutputStream
    //   28: dup
    //   29: invokespecial 297	java/io/ByteArrayOutputStream:<init>	()V
    //   32: astore 5
    //   34: sipush 1024
    //   37: newarray byte
    //   39: astore 20
    //   41: aload 6
    //   43: aload 20
    //   45: invokevirtual 303	java/io/FileInputStream:read	([B)I
    //   48: istore 21
    //   50: iload 21
    //   52: iconst_m1
    //   53: if_icmpeq +62 -> 115
    //   56: aload 5
    //   58: aload 20
    //   60: iconst_0
    //   61: iload 21
    //   63: invokevirtual 306	java/io/ByteArrayOutputStream:write	([BII)V
    //   66: goto -25 -> 41
    //   69: astore 4
    //   71: aload 4
    //   73: invokevirtual 288	java/io/FileNotFoundException:printStackTrace	()V
    //   76: aload 6
    //   78: ifnull +8 -> 86
    //   81: aload 6
    //   83: invokevirtual 307	java/io/FileInputStream:close	()V
    //   86: aconst_null
    //   87: astore_3
    //   88: aload 5
    //   90: ifnull -78 -> 12
    //   93: aload 5
    //   95: invokevirtual 308	java/io/ByteArrayOutputStream:close	()V
    //   98: aconst_null
    //   99: astore_3
    //   100: goto -88 -> 12
    //   103: astore 10
    //   105: aload 10
    //   107: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   110: aconst_null
    //   111: astore_3
    //   112: goto -100 -> 12
    //   115: aload 5
    //   117: invokevirtual 311	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   120: astore 22
    //   122: new 252	com/qq/jce/wup/UniAttribute
    //   125: dup
    //   126: invokespecial 255	com/qq/jce/wup/UniAttribute:<init>	()V
    //   129: astore 23
    //   131: aload 23
    //   133: ldc_w 257
    //   136: invokevirtual 261	com/qq/jce/wup/UniAttribute:setEncodeName	(Ljava/lang/String;)V
    //   139: aload 23
    //   141: aload_0
    //   142: aload 22
    //   144: aconst_null
    //   145: invokestatic 314	com/tencent/tccdb/TccCryptor:decrypt	(Landroid/content/Context;[B[B)[B
    //   148: invokevirtual 317	com/qq/jce/wup/UniAttribute:decode	([B)V
    //   151: aload 23
    //   153: aload_1
    //   154: invokevirtual 321	com/qq/jce/wup/UniAttribute:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   157: astore 24
    //   159: aload 24
    //   161: astore_3
    //   162: aload 6
    //   164: ifnull +8 -> 172
    //   167: aload 6
    //   169: invokevirtual 307	java/io/FileInputStream:close	()V
    //   172: aload 5
    //   174: invokevirtual 308	java/io/ByteArrayOutputStream:close	()V
    //   177: goto -165 -> 12
    //   180: astore 25
    //   182: aload 25
    //   184: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   187: goto -175 -> 12
    //   190: astore 26
    //   192: aload 26
    //   194: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   197: goto -25 -> 172
    //   200: astore 11
    //   202: aload 11
    //   204: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   207: goto -121 -> 86
    //   210: astore 16
    //   212: aconst_null
    //   213: astore 5
    //   215: aconst_null
    //   216: astore 6
    //   218: aload 16
    //   220: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   223: aload 6
    //   225: ifnull +8 -> 233
    //   228: aload 6
    //   230: invokevirtual 307	java/io/FileInputStream:close	()V
    //   233: aconst_null
    //   234: astore_3
    //   235: aload 5
    //   237: ifnull -225 -> 12
    //   240: aload 5
    //   242: invokevirtual 308	java/io/ByteArrayOutputStream:close	()V
    //   245: aconst_null
    //   246: astore_3
    //   247: goto -235 -> 12
    //   250: astore 17
    //   252: aload 17
    //   254: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   257: aconst_null
    //   258: astore_3
    //   259: goto -247 -> 12
    //   262: astore 18
    //   264: aload 18
    //   266: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   269: goto -36 -> 233
    //   272: astore 13
    //   274: aconst_null
    //   275: astore 5
    //   277: aconst_null
    //   278: astore 6
    //   280: aload 13
    //   282: invokevirtual 289	java/lang/Throwable:printStackTrace	()V
    //   285: aload 6
    //   287: ifnull +8 -> 295
    //   290: aload 6
    //   292: invokevirtual 307	java/io/FileInputStream:close	()V
    //   295: aconst_null
    //   296: astore_3
    //   297: aload 5
    //   299: ifnull -287 -> 12
    //   302: aload 5
    //   304: invokevirtual 308	java/io/ByteArrayOutputStream:close	()V
    //   307: aconst_null
    //   308: astore_3
    //   309: goto -297 -> 12
    //   312: astore 14
    //   314: aload 14
    //   316: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   319: aconst_null
    //   320: astore_3
    //   321: goto -309 -> 12
    //   324: astore 15
    //   326: aload 15
    //   328: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   331: goto -36 -> 295
    //   334: astore 12
    //   336: aconst_null
    //   337: astore 5
    //   339: aconst_null
    //   340: astore 6
    //   342: aload 12
    //   344: astore 7
    //   346: aload 6
    //   348: ifnull +8 -> 356
    //   351: aload 6
    //   353: invokevirtual 307	java/io/FileInputStream:close	()V
    //   356: aload 5
    //   358: ifnull +8 -> 366
    //   361: aload 5
    //   363: invokevirtual 308	java/io/ByteArrayOutputStream:close	()V
    //   366: aload 7
    //   368: athrow
    //   369: astore 9
    //   371: aload 9
    //   373: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   376: goto -20 -> 356
    //   379: astore 8
    //   381: aload 8
    //   383: invokevirtual 287	java/io/IOException:printStackTrace	()V
    //   386: goto -20 -> 366
    //   389: astore 27
    //   391: aload 27
    //   393: astore 7
    //   395: aconst_null
    //   396: astore 5
    //   398: goto -52 -> 346
    //   401: astore 7
    //   403: goto -57 -> 346
    //   406: astore 13
    //   408: aconst_null
    //   409: astore 5
    //   411: goto -131 -> 280
    //   414: astore 13
    //   416: goto -136 -> 280
    //   419: astore 16
    //   421: aconst_null
    //   422: astore 5
    //   424: goto -206 -> 218
    //   427: astore 16
    //   429: goto -211 -> 218
    //   432: astore 4
    //   434: aconst_null
    //   435: astore 5
    //   437: aconst_null
    //   438: astore 6
    //   440: goto -369 -> 71
    //   443: astore 4
    //   445: aconst_null
    //   446: astore 5
    //   448: goto -377 -> 71
    //
    // Exception table:
    //   from	to	target	type
    //   34	66	69	java/io/FileNotFoundException
    //   115	159	69	java/io/FileNotFoundException
    //   93	98	103	java/io/IOException
    //   172	177	180	java/io/IOException
    //   167	172	190	java/io/IOException
    //   81	86	200	java/io/IOException
    //   14	21	210	java/io/IOException
    //   240	245	250	java/io/IOException
    //   228	233	262	java/io/IOException
    //   14	21	272	java/lang/Throwable
    //   302	307	312	java/io/IOException
    //   290	295	324	java/io/IOException
    //   14	21	334	finally
    //   351	356	369	java/io/IOException
    //   361	366	379	java/io/IOException
    //   25	34	389	finally
    //   34	66	401	finally
    //   71	76	401	finally
    //   115	159	401	finally
    //   218	223	401	finally
    //   280	285	401	finally
    //   25	34	406	java/lang/Throwable
    //   34	66	414	java/lang/Throwable
    //   115	159	414	java/lang/Throwable
    //   25	34	419	java/io/IOException
    //   34	66	427	java/io/IOException
    //   115	159	427	java/io/IOException
    //   14	21	432	java/io/FileNotFoundException
    //   25	34	443	java/io/FileNotFoundException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     fj
 * JD-Core Version:    0.6.2
 */