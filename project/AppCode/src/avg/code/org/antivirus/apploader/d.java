package org.antivirus.apploader;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

public final class d
{
  public static void a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, AppLoaderAlarmReceiver.class);
    localIntent.setAction("com.droidsec.apploaderalarm");
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 134217728);
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    localAlarmManager.cancel(localPendingIntent);
    localAlarmManager.setInexactRepeating(1, AppLoaderService.a(), 86400000L, localPendingIntent);
  }

  // ERROR //
  public static boolean a(java.io.File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 61	java/io/File:canRead	()Z
    //   4: pop
    //   5: new 63	org/apache/http/impl/client/DefaultHttpClient
    //   8: dup
    //   9: invokespecial 66	org/apache/http/impl/client/DefaultHttpClient:<init>	()V
    //   12: astore 15
    //   14: aload 15
    //   16: invokeinterface 72 1 0
    //   21: ldc 74
    //   23: getstatic 80	org/apache/http/HttpVersion:HTTP_1_1	Lorg/apache/http/HttpVersion;
    //   26: invokeinterface 86 3 0
    //   31: pop
    //   32: new 88	org/apache/http/client/methods/HttpPost
    //   35: dup
    //   36: ldc 90
    //   38: invokespecial 93	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   41: astore 17
    //   43: new 95	java/io/FileInputStream
    //   46: dup
    //   47: aload_0
    //   48: invokespecial 98	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   51: astore 4
    //   53: new 100	org/apache/http/entity/InputStreamEntity
    //   56: dup
    //   57: aload 4
    //   59: aload_0
    //   60: invokevirtual 103	java/io/File:length	()J
    //   63: invokespecial 106	org/apache/http/entity/InputStreamEntity:<init>	(Ljava/io/InputStream;J)V
    //   66: astore 18
    //   68: aload 18
    //   70: ldc 108
    //   72: invokevirtual 111	org/apache/http/entity/InputStreamEntity:setContentType	(Ljava/lang/String;)V
    //   75: aload 18
    //   77: iconst_1
    //   78: invokevirtual 115	org/apache/http/entity/InputStreamEntity:setChunked	(Z)V
    //   81: aload 17
    //   83: aload 18
    //   85: invokevirtual 119	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   88: aload 15
    //   90: aload 17
    //   92: invokeinterface 123 2 0
    //   97: astore 21
    //   99: aload 21
    //   101: astore_3
    //   102: aload_3
    //   103: invokeinterface 129 1 0
    //   108: invokeinterface 135 1 0
    //   113: sipush 200
    //   116: if_icmpne +117 -> 233
    //   119: new 137	java/io/BufferedReader
    //   122: dup
    //   123: new 139	java/io/InputStreamReader
    //   126: dup
    //   127: aload_3
    //   128: invokeinterface 143 1 0
    //   133: invokeinterface 149 1 0
    //   138: ldc 151
    //   140: invokespecial 154	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   143: sipush 128
    //   146: invokespecial 157	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   149: astore_2
    //   150: aload_2
    //   151: invokevirtual 161	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   154: astore 25
    //   156: aload 25
    //   158: ifnull +312 -> 470
    //   161: aload 25
    //   163: ldc 163
    //   165: invokevirtual 169	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   168: istore 30
    //   170: iload 30
    //   172: ifeq +298 -> 470
    //   175: iconst_1
    //   176: istore 10
    //   178: aload_2
    //   179: invokevirtual 172	java/io/BufferedReader:close	()V
    //   182: aload_3
    //   183: invokeinterface 143 1 0
    //   188: invokeinterface 175 1 0
    //   193: aload 4
    //   195: invokevirtual 176	java/io/FileInputStream:close	()V
    //   198: aload_2
    //   199: ifnull +7 -> 206
    //   202: aload_2
    //   203: invokevirtual 172	java/io/BufferedReader:close	()V
    //   206: aload_3
    //   207: ifnull +23 -> 230
    //   210: aload_3
    //   211: invokeinterface 143 1 0
    //   216: ifnull +14 -> 230
    //   219: aload_3
    //   220: invokeinterface 143 1 0
    //   225: invokeinterface 175 1 0
    //   230: iload 10
    //   232: ireturn
    //   233: aload_3
    //   234: invokeinterface 180 1 0
    //   239: pop
    //   240: iconst_0
    //   241: istore 10
    //   243: aconst_null
    //   244: astore_2
    //   245: goto -63 -> 182
    //   248: astore 9
    //   250: aconst_null
    //   251: astore 4
    //   253: aconst_null
    //   254: astore_2
    //   255: aconst_null
    //   256: astore_3
    //   257: iconst_0
    //   258: istore 10
    //   260: aload 4
    //   262: ifnull +8 -> 270
    //   265: aload 4
    //   267: invokevirtual 176	java/io/FileInputStream:close	()V
    //   270: aload_2
    //   271: ifnull +7 -> 278
    //   274: aload_2
    //   275: invokevirtual 172	java/io/BufferedReader:close	()V
    //   278: aload_3
    //   279: ifnull -49 -> 230
    //   282: aload_3
    //   283: invokeinterface 143 1 0
    //   288: ifnull -58 -> 230
    //   291: aload_3
    //   292: invokeinterface 143 1 0
    //   297: invokeinterface 175 1 0
    //   302: goto -72 -> 230
    //   305: astore 11
    //   307: goto -77 -> 230
    //   310: astore_1
    //   311: aconst_null
    //   312: astore_2
    //   313: aconst_null
    //   314: astore_3
    //   315: aconst_null
    //   316: astore 4
    //   318: aload_1
    //   319: astore 5
    //   321: aload 4
    //   323: ifnull +8 -> 331
    //   326: aload 4
    //   328: invokevirtual 176	java/io/FileInputStream:close	()V
    //   331: aload_2
    //   332: ifnull +7 -> 339
    //   335: aload_2
    //   336: invokevirtual 172	java/io/BufferedReader:close	()V
    //   339: aload_3
    //   340: ifnull +23 -> 363
    //   343: aload_3
    //   344: invokeinterface 143 1 0
    //   349: ifnull +14 -> 363
    //   352: aload_3
    //   353: invokeinterface 143 1 0
    //   358: invokeinterface 175 1 0
    //   363: aload 5
    //   365: athrow
    //   366: astore 27
    //   368: goto -170 -> 198
    //   371: astore 29
    //   373: goto -167 -> 206
    //   376: astore 13
    //   378: goto -108 -> 270
    //   381: astore 12
    //   383: goto -105 -> 278
    //   386: astore 8
    //   388: goto -57 -> 331
    //   391: astore 7
    //   393: goto -54 -> 339
    //   396: astore 6
    //   398: goto -35 -> 363
    //   401: astore 20
    //   403: aload 20
    //   405: astore 5
    //   407: aconst_null
    //   408: astore_2
    //   409: aconst_null
    //   410: astore_3
    //   411: goto -90 -> 321
    //   414: astore 23
    //   416: aload 23
    //   418: astore 5
    //   420: aconst_null
    //   421: astore_2
    //   422: goto -101 -> 321
    //   425: astore 5
    //   427: goto -106 -> 321
    //   430: astore 19
    //   432: iconst_0
    //   433: istore 10
    //   435: aconst_null
    //   436: astore_2
    //   437: aconst_null
    //   438: astore_3
    //   439: goto -179 -> 260
    //   442: astore 22
    //   444: iconst_0
    //   445: istore 10
    //   447: aconst_null
    //   448: astore_2
    //   449: goto -189 -> 260
    //   452: astore 24
    //   454: iconst_0
    //   455: istore 10
    //   457: goto -197 -> 260
    //   460: astore 26
    //   462: goto -202 -> 260
    //   465: astore 28
    //   467: goto -237 -> 230
    //   470: iconst_0
    //   471: istore 10
    //   473: goto -295 -> 178
    //
    // Exception table:
    //   from	to	target	type
    //   0	53	248	java/lang/Exception
    //   282	302	305	java/lang/Exception
    //   0	53	310	finally
    //   193	198	366	java/lang/Exception
    //   202	206	371	java/lang/Exception
    //   265	270	376	java/lang/Exception
    //   274	278	381	java/lang/Exception
    //   326	331	386	java/lang/Exception
    //   335	339	391	java/lang/Exception
    //   343	363	396	java/lang/Exception
    //   53	99	401	finally
    //   102	150	414	finally
    //   233	240	414	finally
    //   150	170	425	finally
    //   178	193	425	finally
    //   53	99	430	java/lang/Exception
    //   102	150	442	java/lang/Exception
    //   233	240	442	java/lang/Exception
    //   150	170	452	java/lang/Exception
    //   178	193	460	java/lang/Exception
    //   210	230	465	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.apploader.d
 * JD-Core Version:    0.6.2
 */