package org.antivirus.ui;

import android.app.Activity;

class WebViewAdsManager$3
  implements Runnable
{
  WebViewAdsManager$3(WebViewAdsManager paramWebViewAdsManager, String paramString, Activity paramActivity)
  {
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 30	java/net/URL
    //   5: dup
    //   6: aload_0
    //   7: getfield 18	org/antivirus/ui/WebViewAdsManager$3:a	Ljava/lang/String;
    //   10: invokespecial 33	java/net/URL:<init>	(Ljava/lang/String;)V
    //   13: invokevirtual 37	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   16: checkcast 39	java/net/HttpURLConnection
    //   19: astore 17
    //   21: aload 17
    //   23: ldc 41
    //   25: invokevirtual 44	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   28: aload 17
    //   30: ldc 46
    //   32: ldc 48
    //   34: invokevirtual 52	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   37: aload 17
    //   39: ldc 54
    //   41: ldc 48
    //   43: invokevirtual 52	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   46: aload 17
    //   48: invokevirtual 57	java/net/HttpURLConnection:connect	()V
    //   51: aload 17
    //   53: invokevirtual 61	java/net/HttpURLConnection:getResponseCode	()I
    //   56: istore 20
    //   58: iload 20
    //   60: sipush 200
    //   63: if_icmpeq +14 -> 77
    //   66: aload 17
    //   68: ifnull +8 -> 76
    //   71: aload 17
    //   73: invokevirtual 64	java/net/HttpURLConnection:disconnect	()V
    //   76: return
    //   77: aload 17
    //   79: invokevirtual 68	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   82: astore 21
    //   84: aload 21
    //   86: astore 8
    //   88: sipush 1024
    //   91: newarray char
    //   93: astore 24
    //   95: new 70	java/io/StringWriter
    //   98: dup
    //   99: invokespecial 71	java/io/StringWriter:<init>	()V
    //   102: astore 9
    //   104: new 73	java/io/InputStreamReader
    //   107: dup
    //   108: aload 8
    //   110: invokestatic 79	java/nio/charset/Charset:defaultCharset	()Ljava/nio/charset/Charset;
    //   113: invokespecial 82	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   116: astore 10
    //   118: aload_0
    //   119: getfield 16	org/antivirus/ui/WebViewAdsManager$3:c	Lorg/antivirus/ui/WebViewAdsManager;
    //   122: invokestatic 88	org/antivirus/ui/WebViewAdsManager:e	(Lorg/antivirus/ui/WebViewAdsManager;)Z
    //   125: ifeq +96 -> 221
    //   128: aload 10
    //   130: aload 24
    //   132: invokevirtual 92	java/io/InputStreamReader:read	([C)I
    //   135: istore 31
    //   137: iload 31
    //   139: iconst_m1
    //   140: if_icmpeq +81 -> 221
    //   143: aload 9
    //   145: aload 24
    //   147: iconst_0
    //   148: iload 31
    //   150: invokevirtual 98	java/io/Writer:write	([CII)V
    //   153: goto -35 -> 118
    //   156: astore 26
    //   158: aload 10
    //   160: astore 4
    //   162: aload 9
    //   164: astore 5
    //   166: aload 8
    //   168: astore 6
    //   170: aload 26
    //   172: astore_2
    //   173: aload 17
    //   175: astore_3
    //   176: aload_2
    //   177: invokestatic 104	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   180: aload 4
    //   182: ifnull +8 -> 190
    //   185: aload 4
    //   187: invokevirtual 107	java/io/InputStreamReader:close	()V
    //   190: aload 6
    //   192: ifnull +8 -> 200
    //   195: aload 6
    //   197: invokevirtual 110	java/io/InputStream:close	()V
    //   200: aload 5
    //   202: ifnull +8 -> 210
    //   205: aload 5
    //   207: invokevirtual 111	java/io/Writer:close	()V
    //   210: aload_3
    //   211: ifnull -135 -> 76
    //   214: aload_3
    //   215: invokevirtual 64	java/net/HttpURLConnection:disconnect	()V
    //   218: goto -142 -> 76
    //   221: aload 9
    //   223: invokevirtual 115	java/lang/Object:toString	()Ljava/lang/String;
    //   226: astore 27
    //   228: aload_0
    //   229: getfield 20	org/antivirus/ui/WebViewAdsManager$3:b	Landroid/app/Activity;
    //   232: new 117	org/antivirus/ui/WebViewAdsManager$3$1
    //   235: dup
    //   236: aload_0
    //   237: aload 27
    //   239: invokespecial 120	org/antivirus/ui/WebViewAdsManager$3$1:<init>	(Lorg/antivirus/ui/WebViewAdsManager$3;Ljava/lang/String;)V
    //   242: invokevirtual 126	android/app/Activity:runOnUiThread	(Ljava/lang/Runnable;)V
    //   245: aload 10
    //   247: invokevirtual 107	java/io/InputStreamReader:close	()V
    //   250: aload 8
    //   252: ifnull +8 -> 260
    //   255: aload 8
    //   257: invokevirtual 110	java/io/InputStream:close	()V
    //   260: aload 9
    //   262: invokevirtual 111	java/io/Writer:close	()V
    //   265: aload 17
    //   267: ifnull -191 -> 76
    //   270: aload 17
    //   272: invokevirtual 64	java/net/HttpURLConnection:disconnect	()V
    //   275: goto -199 -> 76
    //   278: astore 28
    //   280: aload 28
    //   282: invokestatic 104	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   285: goto -35 -> 250
    //   288: astore 30
    //   290: aload 30
    //   292: invokestatic 104	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   295: goto -35 -> 260
    //   298: astore 29
    //   300: aload 29
    //   302: invokestatic 104	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   305: goto -40 -> 265
    //   308: astore 16
    //   310: aload 16
    //   312: invokestatic 104	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   315: goto -125 -> 190
    //   318: astore 15
    //   320: aload 15
    //   322: invokestatic 104	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   325: goto -125 -> 200
    //   328: astore 14
    //   330: aload 14
    //   332: invokestatic 104	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   335: goto -125 -> 210
    //   338: astore 7
    //   340: aconst_null
    //   341: astore 10
    //   343: aconst_null
    //   344: astore 9
    //   346: aconst_null
    //   347: astore 8
    //   349: aload 10
    //   351: ifnull +8 -> 359
    //   354: aload 10
    //   356: invokevirtual 107	java/io/InputStreamReader:close	()V
    //   359: aload 8
    //   361: ifnull +8 -> 369
    //   364: aload 8
    //   366: invokevirtual 110	java/io/InputStream:close	()V
    //   369: aload 9
    //   371: ifnull +8 -> 379
    //   374: aload 9
    //   376: invokevirtual 111	java/io/Writer:close	()V
    //   379: aload_1
    //   380: ifnull +7 -> 387
    //   383: aload_1
    //   384: invokevirtual 64	java/net/HttpURLConnection:disconnect	()V
    //   387: aload 7
    //   389: athrow
    //   390: astore 13
    //   392: aload 13
    //   394: invokestatic 104	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   397: goto -38 -> 359
    //   400: astore 12
    //   402: aload 12
    //   404: invokestatic 104	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   407: goto -38 -> 369
    //   410: astore 11
    //   412: aload 11
    //   414: invokestatic 104	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   417: goto -38 -> 379
    //   420: astore 19
    //   422: aload 17
    //   424: astore_1
    //   425: aload 19
    //   427: astore 7
    //   429: aconst_null
    //   430: astore 10
    //   432: aconst_null
    //   433: astore 9
    //   435: aconst_null
    //   436: astore 8
    //   438: goto -89 -> 349
    //   441: astore 23
    //   443: aload 17
    //   445: astore_1
    //   446: aload 23
    //   448: astore 7
    //   450: aconst_null
    //   451: astore 10
    //   453: aconst_null
    //   454: astore 9
    //   456: goto -107 -> 349
    //   459: astore 33
    //   461: aload 17
    //   463: astore_1
    //   464: aload 33
    //   466: astore 7
    //   468: aconst_null
    //   469: astore 10
    //   471: goto -122 -> 349
    //   474: astore 25
    //   476: aload 17
    //   478: astore_1
    //   479: aload 25
    //   481: astore 7
    //   483: goto -134 -> 349
    //   486: astore 7
    //   488: aload 6
    //   490: astore 8
    //   492: aload 5
    //   494: astore 9
    //   496: aload 4
    //   498: astore 10
    //   500: aload_3
    //   501: astore_1
    //   502: goto -153 -> 349
    //   505: astore_2
    //   506: aconst_null
    //   507: astore_3
    //   508: aconst_null
    //   509: astore 4
    //   511: aconst_null
    //   512: astore 5
    //   514: aconst_null
    //   515: astore 6
    //   517: goto -341 -> 176
    //   520: astore 18
    //   522: aload 17
    //   524: astore_3
    //   525: aload 18
    //   527: astore_2
    //   528: aconst_null
    //   529: astore 4
    //   531: aconst_null
    //   532: astore 5
    //   534: aconst_null
    //   535: astore 6
    //   537: goto -361 -> 176
    //   540: astore 22
    //   542: aload 8
    //   544: astore 6
    //   546: aload 17
    //   548: astore_3
    //   549: aload 22
    //   551: astore_2
    //   552: aconst_null
    //   553: astore 4
    //   555: aconst_null
    //   556: astore 5
    //   558: goto -382 -> 176
    //   561: astore 32
    //   563: aload 9
    //   565: astore 5
    //   567: aload 8
    //   569: astore 6
    //   571: aload 17
    //   573: astore_3
    //   574: aload 32
    //   576: astore_2
    //   577: aconst_null
    //   578: astore 4
    //   580: goto -404 -> 176
    //
    // Exception table:
    //   from	to	target	type
    //   118	153	156	java/lang/Exception
    //   221	245	156	java/lang/Exception
    //   245	250	278	java/io/IOException
    //   255	260	288	java/io/IOException
    //   260	265	298	java/io/IOException
    //   185	190	308	java/io/IOException
    //   195	200	318	java/io/IOException
    //   205	210	328	java/io/IOException
    //   2	21	338	finally
    //   354	359	390	java/io/IOException
    //   364	369	400	java/io/IOException
    //   374	379	410	java/io/IOException
    //   21	58	420	finally
    //   77	84	420	finally
    //   88	104	441	finally
    //   104	118	459	finally
    //   118	153	474	finally
    //   221	245	474	finally
    //   176	180	486	finally
    //   2	21	505	java/lang/Exception
    //   21	58	520	java/lang/Exception
    //   77	84	520	java/lang/Exception
    //   88	104	540	java/lang/Exception
    //   104	118	561	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.WebViewAdsManager.3
 * JD-Core Version:    0.6.2
 */