package com.avg.toolkit.e;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class h
{
  private final String a;
  private g b;

  public h(Context paramContext)
  {
    this.b = new g(paramContext);
    Display localDisplay = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    localDisplay.getMetrics(localDisplayMetrics);
    String str;
    if ((localDisplayMetrics.ydpi <= 0.0F) || (localDisplayMetrics.xdpi <= 0.0F))
      str = "U";
    while (true)
    {
      this.a = ("AVGMOBILATION-DRO" + str + Build.VERSION.SDK);
      return;
      float f1 = localDisplayMetrics.heightPixels / localDisplayMetrics.ydpi;
      float f2 = localDisplayMetrics.widthPixels / localDisplayMetrics.xdpi;
      if (f1 * f1 + f2 * f2 >= 36.0F)
        str = "T";
      else
        str = "P";
    }
  }

  // ERROR //
  private String a(Context paramContext, a parama, String paramString)
  {
    // Byte code:
    //   0: new 90	java/net/URL
    //   3: dup
    //   4: ldc 92
    //   6: invokespecial 95	java/net/URL:<init>	(Ljava/lang/String;)V
    //   9: invokevirtual 99	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   12: checkcast 101	java/net/HttpURLConnection
    //   15: astore 5
    //   17: aload 5
    //   19: ldc 103
    //   21: invokevirtual 106	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   24: aload_1
    //   25: invokevirtual 110	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   28: aload_1
    //   29: invokevirtual 113	android/content/Context:getPackageName	()Ljava/lang/String;
    //   32: iconst_0
    //   33: invokevirtual 119	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   36: astore 6
    //   38: aload 6
    //   40: ifnonnull +34 -> 74
    //   43: new 121	com/avg/toolkit/e/i
    //   46: dup
    //   47: aload_0
    //   48: ldc 123
    //   50: iconst_1
    //   51: invokespecial 126	com/avg/toolkit/e/i:<init>	(Lcom/avg/toolkit/e/h;Ljava/lang/String;Z)V
    //   54: athrow
    //   55: astore 4
    //   57: aload 4
    //   59: invokestatic 131	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   62: new 121	com/avg/toolkit/e/i
    //   65: dup
    //   66: aload_0
    //   67: aload 4
    //   69: iconst_1
    //   70: invokespecial 134	com/avg/toolkit/e/i:<init>	(Lcom/avg/toolkit/e/h;Ljava/lang/Exception;Z)V
    //   73: athrow
    //   74: aload 5
    //   76: iconst_0
    //   77: invokevirtual 138	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   80: aload 5
    //   82: sipush 10000
    //   85: invokevirtual 142	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   88: aload 5
    //   90: sipush 15000
    //   93: invokevirtual 145	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   96: aload 6
    //   98: getfield 150	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   101: ldc 152
    //   103: ldc 154
    //   105: invokevirtual 160	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   108: astore 7
    //   110: aload 7
    //   112: ldc 154
    //   114: invokevirtual 164	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   117: ifeq +265 -> 382
    //   120: ldc 166
    //   122: astore 7
    //   124: aload_2
    //   125: ifnull +354 -> 479
    //   128: aload_2
    //   129: invokevirtual 171	com/avg/toolkit/e/a:b	()Z
    //   132: ifeq +347 -> 479
    //   135: new 53	java/lang/StringBuilder
    //   138: dup
    //   139: invokespecial 54	java/lang/StringBuilder:<init>	()V
    //   142: aload 7
    //   144: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: ldc 173
    //   149: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   155: astore 8
    //   157: aload_0
    //   158: getfield 19	com/avg/toolkit/e/h:b	Lcom/avg/toolkit/e/g;
    //   161: invokevirtual 176	com/avg/toolkit/e/g:c	()Ljava/lang/String;
    //   164: astore 9
    //   166: aload 9
    //   168: invokevirtual 180	java/lang/String:length	()I
    //   171: iconst_4
    //   172: if_icmple +300 -> 472
    //   175: aload 9
    //   177: iconst_0
    //   178: bipush 252
    //   180: aload 9
    //   182: invokevirtual 180	java/lang/String:length	()I
    //   185: iadd
    //   186: invokevirtual 184	java/lang/String:substring	(II)Ljava/lang/String;
    //   189: astore 10
    //   191: aconst_null
    //   192: checkcast 186	java/util/Locale
    //   195: astore 11
    //   197: iconst_4
    //   198: anewarray 4	java/lang/Object
    //   201: astore 12
    //   203: aload 12
    //   205: iconst_0
    //   206: aload_0
    //   207: getfield 71	com/avg/toolkit/e/h:a	Ljava/lang/String;
    //   210: aastore
    //   211: aload 12
    //   213: iconst_1
    //   214: aload 8
    //   216: aastore
    //   217: aload 12
    //   219: iconst_2
    //   220: aload 6
    //   222: getfield 189	android/content/pm/PackageInfo:versionCode	I
    //   225: invokestatic 194	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   228: aastore
    //   229: aload 12
    //   231: iconst_3
    //   232: aload 10
    //   234: aastore
    //   235: aload 5
    //   237: ldc 196
    //   239: aload 11
    //   241: ldc 198
    //   243: aload 12
    //   245: invokestatic 202	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   248: invokevirtual 206	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   251: aload 5
    //   253: ldc 208
    //   255: ldc 210
    //   257: invokevirtual 206	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   260: aload 5
    //   262: ldc 212
    //   264: aload_3
    //   265: invokevirtual 206	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   268: aload 5
    //   270: ldc 214
    //   272: ldc 216
    //   274: invokevirtual 206	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   277: aload 5
    //   279: ldc 218
    //   281: ldc 216
    //   283: invokevirtual 206	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   286: aload 5
    //   288: ldc 220
    //   290: ldc 222
    //   292: invokevirtual 206	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   295: aload 5
    //   297: invokevirtual 225	java/net/HttpURLConnection:connect	()V
    //   300: aload 5
    //   302: invokevirtual 228	java/net/HttpURLConnection:getResponseCode	()I
    //   305: istore 17
    //   307: iload 17
    //   309: sipush 200
    //   312: if_icmpeq +104 -> 416
    //   315: new 121	com/avg/toolkit/e/i
    //   318: dup
    //   319: aload_0
    //   320: new 53	java/lang/StringBuilder
    //   323: dup
    //   324: invokespecial 54	java/lang/StringBuilder:<init>	()V
    //   327: ldc 230
    //   329: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: iload 17
    //   334: invokevirtual 233	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   337: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   340: iconst_0
    //   341: invokespecial 126	com/avg/toolkit/e/i:<init>	(Lcom/avg/toolkit/e/h;Ljava/lang/String;Z)V
    //   344: athrow
    //   345: astore 16
    //   347: aload 16
    //   349: invokestatic 131	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   352: new 121	com/avg/toolkit/e/i
    //   355: dup
    //   356: aload_0
    //   357: aload 16
    //   359: iconst_1
    //   360: invokespecial 134	com/avg/toolkit/e/i:<init>	(Lcom/avg/toolkit/e/h;Ljava/lang/Exception;Z)V
    //   363: athrow
    //   364: astore 14
    //   366: iconst_0
    //   367: ifeq +7 -> 374
    //   370: aconst_null
    //   371: invokevirtual 238	java/io/InputStream:close	()V
    //   374: aload 5
    //   376: invokevirtual 241	java/net/HttpURLConnection:disconnect	()V
    //   379: aload 14
    //   381: athrow
    //   382: aload 7
    //   384: invokevirtual 180	java/lang/String:length	()I
    //   387: iconst_2
    //   388: if_icmpge -264 -> 124
    //   391: new 53	java/lang/StringBuilder
    //   394: dup
    //   395: invokespecial 54	java/lang/StringBuilder:<init>	()V
    //   398: ldc 243
    //   400: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   403: aload 7
    //   405: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   408: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   411: astore 7
    //   413: goto -289 -> 124
    //   416: aload_0
    //   417: aload 5
    //   419: invokevirtual 247	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   422: invokespecial 250	com/avg/toolkit/e/h:a	(Ljava/util/Map;)Ljava/lang/String;
    //   425: astore 18
    //   427: iconst_0
    //   428: ifeq +7 -> 435
    //   431: aconst_null
    //   432: invokevirtual 238	java/io/InputStream:close	()V
    //   435: aload 5
    //   437: invokevirtual 241	java/net/HttpURLConnection:disconnect	()V
    //   440: aload 18
    //   442: areturn
    //   443: astore 13
    //   445: aload 13
    //   447: invokestatic 131	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   450: new 121	com/avg/toolkit/e/i
    //   453: dup
    //   454: aload_0
    //   455: aload 13
    //   457: iconst_0
    //   458: invokespecial 134	com/avg/toolkit/e/i:<init>	(Lcom/avg/toolkit/e/h;Ljava/lang/Exception;Z)V
    //   461: athrow
    //   462: astore 19
    //   464: goto -29 -> 435
    //   467: astore 15
    //   469: goto -95 -> 374
    //   472: aload 9
    //   474: astore 10
    //   476: goto -285 -> 191
    //   479: aload 7
    //   481: astore 8
    //   483: goto -326 -> 157
    //
    // Exception table:
    //   from	to	target	type
    //   0	55	55	java/lang/Exception
    //   295	345	345	java/io/IOException
    //   416	427	345	java/io/IOException
    //   295	345	364	finally
    //   347	364	364	finally
    //   416	427	364	finally
    //   445	462	364	finally
    //   295	345	443	java/lang/Exception
    //   416	427	443	java/lang/Exception
    //   431	435	462	java/io/IOException
    //   370	374	467	java/io/IOException
  }

  private String a(Map paramMap)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramMap.keySet().iterator();
    if (localIterator.hasNext())
    {
      String str5 = (String)localIterator.next();
      if (str5 == null);
      for (Object localObject = null; ; localObject = str5.toLowerCase())
      {
        localHashMap.put(localObject, paramMap.get(str5));
        break;
      }
    }
    List localList1 = (List)localHashMap.get("x-avg-id");
    String str1;
    String str2;
    label162: List localList3;
    if (localList1 != null)
    {
      str1 = (String)localList1.get(0);
      if ((str1 != null) && (!str1.equals(this.b.e())));
      List localList2 = (List)localHashMap.get("x-avg-newid");
      if (localList2 == null)
        break label229;
      str2 = (String)localList2.get(0);
      if (str2 != null)
        this.b.b(str2);
      localList3 = (List)localHashMap.get("x-avg-newlic");
      if (localList3 == null)
        break label235;
    }
    label229: label235: for (String str3 = (String)localList3.get(0); ; str3 = null)
    {
      String str4 = null;
      if (str3 != null)
        str4 = str3;
      return str4;
      str1 = null;
      break;
      str2 = null;
      break label162;
    }
  }

  public String a(Context paramContext, a parama)
  {
    String str1 = this.b.e();
    String str2 = a(paramContext, parama, str1);
    if (str1.equals("0-0"))
      str2 = a(paramContext, parama, this.b.e());
    return str2;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.e.h
 * JD-Core Version:    0.6.2
 */