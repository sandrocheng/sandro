package com.avg.toolkit.ads;

import android.app.Activity;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.avg.toolkit.e.e;
import java.lang.reflect.Field;
import java.net.URLEncoder;

class c
  implements Runnable
{
  public boolean a = true;
  private Activity c = null;
  private String d = null;
  private String e;
  private String f;

  public c(WebViewAdsManager paramWebViewAdsManager, Activity paramActivity, String paramString1, String paramString2)
  {
    this.c = paramActivity;
    this.e = paramString1;
    this.f = paramString2;
  }

  private String a()
  {
    com.avg.toolkit.e.a locala1 = e.a();
    com.avg.toolkit.a.c localc1 = com.avg.toolkit.a.a.a();
    int i = 0;
    Object localObject1 = localc1;
    Object localObject2 = locala1;
    while (true)
    {
      if (((localObject2 == null) || (localObject1 == null)) && (i < 10));
      try
      {
        Thread.sleep(1000L);
        com.avg.toolkit.e.a locala2 = e.a();
        com.avg.toolkit.a.c localc2 = com.avg.toolkit.a.a.a();
        i++;
        localObject1 = localc2;
        localObject2 = locala2;
        continue;
        if (i == 10)
        {
          str5 = null;
          return str5;
        }
        if (((com.avg.toolkit.e.a)localObject2).b())
        {
          j = 1;
          k = ((com.avg.toolkit.e.a)localObject2).o;
          Display localDisplay = this.c.getWindowManager().getDefaultDisplay();
          localDisplayMetrics = new DisplayMetrics();
          localDisplay.getMetrics(localDisplayMetrics);
          localObject3 = "";
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        try
        {
          while (true)
          {
            String str5;
            int j;
            int k;
            DisplayMetrics localDisplayMetrics;
            Object localObject3;
            label137: label150: Object localObject4;
            if (Build.MODEL != null)
            {
              localObject3 = Build.MODEL;
              String str7 = URLEncoder.encode((String)localObject3, "UTF-8");
              localObject3 = str7;
              localObject4 = "";
            }
            try
            {
              if (Integer.parseInt(Build.VERSION.SDK) > 3)
                localObject4 = Build.class.getField("MANUFACTURER").get(null).toString();
              String str6 = URLEncoder.encode((String)localObject4, "UTF-8");
              localObject4 = str6;
              label193: PackageInfo localPackageInfo = this.c.getPackageManager().getPackageInfo(this.c.getPackageName(), 0);
              String str1 = new com.avg.toolkit.UID.a(this.c.getApplicationContext()).a();
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append("uuid=").append(str1).append(" lng=").append(this.e).append(" screen=").append(localDisplayMetrics.widthPixels);
              localStringBuilder.append('X').append(localDisplayMetrics.heightPixels).append('X').append(localDisplayMetrics.densityDpi).append(" cat=").append(this.f);
              localStringBuilder.append(" model=").append((String)localObject3).append(" manufacturer=").append((String)localObject4).append(" os=Android-").append(Build.VERSION.SDK);
              localStringBuilder.append(" pv=").append(localPackageInfo.versionName).append('.').append(localPackageInfo.versionCode).append(" pid=").append(((com.avg.toolkit.a.c)localObject1).a()).append(" pt=").append(j);
              localStringBuilder.append(" idate=").append(0L).append(" varc=").append(k).append(" lic=").append("");
              String str2 = localStringBuilder.toString();
              String str3 = a.a.a.a.b.a.f((str2 + "d5544fG==*%877hT--==HHSYlWeeY89904444==").getBytes());
              String str4 = new String(a.a.a.a.a.a.a((str2 + " z=" + str3).getBytes(), false));
              str5 = "http://www.avg.com/mobile-ads?a=" + str4;
              continue;
              j = 3;
              continue;
              localObject3 = "";
              break label137;
              localInterruptedException = localInterruptedException;
            }
            catch (Exception localException2)
            {
              break label193;
            }
          }
        }
        catch (Exception localException1)
        {
          break label150;
        }
      }
    }
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: aload_0
    //   4: invokespecial 248	com/avg/toolkit/ads/c:a	()Ljava/lang/String;
    //   7: putfield 29	com/avg/toolkit/ads/c:d	Ljava/lang/String;
    //   10: aload_0
    //   11: getfield 29	com/avg/toolkit/ads/c:d	Ljava/lang/String;
    //   14: astore 17
    //   16: aload 17
    //   18: ifnonnull +66 -> 84
    //   21: iconst_0
    //   22: ifeq +7 -> 29
    //   25: aconst_null
    //   26: invokevirtual 253	java/io/InputStreamReader:close	()V
    //   29: iconst_0
    //   30: ifeq +7 -> 37
    //   33: aconst_null
    //   34: invokevirtual 256	java/io/InputStream:close	()V
    //   37: iconst_0
    //   38: ifeq +7 -> 45
    //   41: aconst_null
    //   42: invokevirtual 259	java/io/Writer:close	()V
    //   45: iconst_0
    //   46: ifeq +7 -> 53
    //   49: aconst_null
    //   50: invokevirtual 264	java/net/HttpURLConnection:disconnect	()V
    //   53: return
    //   54: astore 40
    //   56: aload 40
    //   58: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   61: goto -32 -> 29
    //   64: astore 39
    //   66: aload 39
    //   68: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   71: goto -34 -> 37
    //   74: astore 38
    //   76: aload 38
    //   78: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   81: goto -36 -> 45
    //   84: new 271	java/net/URL
    //   87: dup
    //   88: aload_0
    //   89: getfield 29	com/avg/toolkit/ads/c:d	Ljava/lang/String;
    //   92: invokespecial 274	java/net/URL:<init>	(Ljava/lang/String;)V
    //   95: invokevirtual 278	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   98: checkcast 261	java/net/HttpURLConnection
    //   101: astore_3
    //   102: aload_3
    //   103: ldc_w 280
    //   106: invokevirtual 283	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   109: aload_3
    //   110: ldc_w 285
    //   113: ldc_w 287
    //   116: invokevirtual 291	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   119: aload_3
    //   120: ldc_w 293
    //   123: ldc_w 287
    //   126: invokevirtual 291	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   129: aload_3
    //   130: invokevirtual 296	java/net/HttpURLConnection:connect	()V
    //   133: aload_3
    //   134: invokevirtual 299	java/net/HttpURLConnection:getResponseCode	()I
    //   137: istore 20
    //   139: iload 20
    //   141: sipush 200
    //   144: if_icmpeq +68 -> 212
    //   147: iconst_0
    //   148: ifeq +7 -> 155
    //   151: aconst_null
    //   152: invokevirtual 253	java/io/InputStreamReader:close	()V
    //   155: iconst_0
    //   156: ifeq +7 -> 163
    //   159: aconst_null
    //   160: invokevirtual 256	java/io/InputStream:close	()V
    //   163: iconst_0
    //   164: ifeq +7 -> 171
    //   167: aconst_null
    //   168: invokevirtual 259	java/io/Writer:close	()V
    //   171: aload_3
    //   172: ifnull -119 -> 53
    //   175: aload_3
    //   176: invokevirtual 264	java/net/HttpURLConnection:disconnect	()V
    //   179: goto -126 -> 53
    //   182: astore 37
    //   184: aload 37
    //   186: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   189: goto -34 -> 155
    //   192: astore 36
    //   194: aload 36
    //   196: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   199: goto -36 -> 163
    //   202: astore 35
    //   204: aload 35
    //   206: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   209: goto -38 -> 171
    //   212: aload_3
    //   213: invokevirtual 303	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   216: astore 21
    //   218: aload 21
    //   220: astore 13
    //   222: sipush 1024
    //   225: newarray char
    //   227: astore 25
    //   229: new 305	java/io/StringWriter
    //   232: dup
    //   233: invokespecial 306	java/io/StringWriter:<init>	()V
    //   236: astore 12
    //   238: new 250	java/io/InputStreamReader
    //   241: dup
    //   242: aload 13
    //   244: invokestatic 312	java/nio/charset/Charset:defaultCharset	()Ljava/nio/charset/Charset;
    //   247: invokespecial 315	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   250: astore 11
    //   252: aload_0
    //   253: getfield 25	com/avg/toolkit/ads/c:a	Z
    //   256: ifeq +96 -> 352
    //   259: aload_0
    //   260: getfield 20	com/avg/toolkit/ads/c:b	Lcom/avg/toolkit/ads/WebViewAdsManager;
    //   263: invokestatic 320	com/avg/toolkit/ads/WebViewAdsManager:a	(Lcom/avg/toolkit/ads/WebViewAdsManager;)Z
    //   266: ifeq +86 -> 352
    //   269: aload 11
    //   271: aload 25
    //   273: invokevirtual 324	java/io/InputStreamReader:read	([C)I
    //   276: istore 32
    //   278: iload 32
    //   280: iconst_m1
    //   281: if_icmpeq +71 -> 352
    //   284: aload 12
    //   286: aload 25
    //   288: iconst_0
    //   289: iload 32
    //   291: invokevirtual 328	java/io/Writer:write	([CII)V
    //   294: goto -42 -> 252
    //   297: astore 27
    //   299: aload 11
    //   301: astore 4
    //   303: aload 12
    //   305: astore 5
    //   307: aload 13
    //   309: astore 6
    //   311: aload 4
    //   313: ifnull +8 -> 321
    //   316: aload 4
    //   318: invokevirtual 253	java/io/InputStreamReader:close	()V
    //   321: aload 6
    //   323: ifnull +8 -> 331
    //   326: aload 6
    //   328: invokevirtual 256	java/io/InputStream:close	()V
    //   331: aload 5
    //   333: ifnull +8 -> 341
    //   336: aload 5
    //   338: invokevirtual 259	java/io/Writer:close	()V
    //   341: aload_3
    //   342: ifnull -289 -> 53
    //   345: aload_3
    //   346: invokevirtual 264	java/net/HttpURLConnection:disconnect	()V
    //   349: goto -296 -> 53
    //   352: aload 12
    //   354: invokevirtual 129	java/lang/Object:toString	()Ljava/lang/String;
    //   357: astore 28
    //   359: aload_0
    //   360: getfield 27	com/avg/toolkit/ads/c:c	Landroid/app/Activity;
    //   363: new 330	com/avg/toolkit/ads/d
    //   366: dup
    //   367: aload_0
    //   368: aload 28
    //   370: invokespecial 333	com/avg/toolkit/ads/d:<init>	(Lcom/avg/toolkit/ads/c;Ljava/lang/String;)V
    //   373: invokevirtual 337	android/app/Activity:runOnUiThread	(Ljava/lang/Runnable;)V
    //   376: aload 11
    //   378: ifnull +8 -> 386
    //   381: aload 11
    //   383: invokevirtual 253	java/io/InputStreamReader:close	()V
    //   386: aload 13
    //   388: ifnull +8 -> 396
    //   391: aload 13
    //   393: invokevirtual 256	java/io/InputStream:close	()V
    //   396: aload 12
    //   398: ifnull +8 -> 406
    //   401: aload 12
    //   403: invokevirtual 259	java/io/Writer:close	()V
    //   406: aload_3
    //   407: ifnull -354 -> 53
    //   410: aload_3
    //   411: invokevirtual 264	java/net/HttpURLConnection:disconnect	()V
    //   414: goto -361 -> 53
    //   417: astore 31
    //   419: aload 31
    //   421: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   424: goto -38 -> 386
    //   427: astore 30
    //   429: aload 30
    //   431: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   434: goto -38 -> 396
    //   437: astore 29
    //   439: aload 29
    //   441: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   444: goto -38 -> 406
    //   447: astore 9
    //   449: aload 9
    //   451: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   454: goto -133 -> 321
    //   457: astore 8
    //   459: aload 8
    //   461: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   464: goto -133 -> 331
    //   467: astore 7
    //   469: aload 7
    //   471: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   474: goto -133 -> 341
    //   477: astore 10
    //   479: aconst_null
    //   480: astore 11
    //   482: aconst_null
    //   483: astore 12
    //   485: aconst_null
    //   486: astore 13
    //   488: aload 11
    //   490: ifnull +8 -> 498
    //   493: aload 11
    //   495: invokevirtual 253	java/io/InputStreamReader:close	()V
    //   498: aload 13
    //   500: ifnull +8 -> 508
    //   503: aload 13
    //   505: invokevirtual 256	java/io/InputStream:close	()V
    //   508: aload 12
    //   510: ifnull +8 -> 518
    //   513: aload 12
    //   515: invokevirtual 259	java/io/Writer:close	()V
    //   518: aload_1
    //   519: ifnull +7 -> 526
    //   522: aload_1
    //   523: invokevirtual 264	java/net/HttpURLConnection:disconnect	()V
    //   526: aload 10
    //   528: athrow
    //   529: astore 16
    //   531: aload 16
    //   533: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   536: goto -38 -> 498
    //   539: astore 15
    //   541: aload 15
    //   543: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   546: goto -38 -> 508
    //   549: astore 14
    //   551: aload 14
    //   553: invokestatic 269	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   556: goto -38 -> 518
    //   559: astore 19
    //   561: aload_3
    //   562: astore_1
    //   563: aload 19
    //   565: astore 10
    //   567: aconst_null
    //   568: astore 11
    //   570: aconst_null
    //   571: astore 12
    //   573: aconst_null
    //   574: astore 13
    //   576: goto -88 -> 488
    //   579: astore 23
    //   581: aload_3
    //   582: astore 24
    //   584: aload 23
    //   586: astore 10
    //   588: aload 24
    //   590: astore_1
    //   591: aconst_null
    //   592: astore 11
    //   594: aconst_null
    //   595: astore 12
    //   597: goto -109 -> 488
    //   600: astore 34
    //   602: aload_3
    //   603: astore_1
    //   604: aload 34
    //   606: astore 10
    //   608: aconst_null
    //   609: astore 11
    //   611: goto -123 -> 488
    //   614: astore 26
    //   616: aload_3
    //   617: astore_1
    //   618: aload 26
    //   620: astore 10
    //   622: goto -134 -> 488
    //   625: astore_2
    //   626: aconst_null
    //   627: astore_3
    //   628: aconst_null
    //   629: astore 4
    //   631: aconst_null
    //   632: astore 5
    //   634: aconst_null
    //   635: astore 6
    //   637: goto -326 -> 311
    //   640: astore 18
    //   642: aconst_null
    //   643: astore 4
    //   645: aconst_null
    //   646: astore 5
    //   648: aconst_null
    //   649: astore 6
    //   651: goto -340 -> 311
    //   654: astore 22
    //   656: aload 13
    //   658: astore 6
    //   660: aconst_null
    //   661: astore 4
    //   663: aconst_null
    //   664: astore 5
    //   666: goto -355 -> 311
    //   669: astore 33
    //   671: aload 12
    //   673: astore 5
    //   675: aload 13
    //   677: astore 6
    //   679: aconst_null
    //   680: astore 4
    //   682: goto -371 -> 311
    //
    // Exception table:
    //   from	to	target	type
    //   25	29	54	java/io/IOException
    //   33	37	64	java/io/IOException
    //   41	45	74	java/io/IOException
    //   151	155	182	java/io/IOException
    //   159	163	192	java/io/IOException
    //   167	171	202	java/io/IOException
    //   252	294	297	java/lang/Exception
    //   352	376	297	java/lang/Exception
    //   381	386	417	java/io/IOException
    //   391	396	427	java/io/IOException
    //   401	406	437	java/io/IOException
    //   316	321	447	java/io/IOException
    //   326	331	457	java/io/IOException
    //   336	341	467	java/io/IOException
    //   2	16	477	finally
    //   84	102	477	finally
    //   493	498	529	java/io/IOException
    //   503	508	539	java/io/IOException
    //   513	518	549	java/io/IOException
    //   102	139	559	finally
    //   212	218	559	finally
    //   222	238	579	finally
    //   238	252	600	finally
    //   252	294	614	finally
    //   352	376	614	finally
    //   2	16	625	java/lang/Exception
    //   84	102	625	java/lang/Exception
    //   102	139	640	java/lang/Exception
    //   212	218	640	java/lang/Exception
    //   222	238	654	java/lang/Exception
    //   238	252	669	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.ads.c
 * JD-Core Version:    0.6.2
 */