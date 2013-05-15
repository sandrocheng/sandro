package com.avast.android.generic.internet;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.avast.a.a.a.a.m;
import com.avast.a.a.a.aa;
import com.avast.a.a.a.aj;
import com.avast.a.a.a.ak;
import com.avast.a.a.a.c;
import com.avast.a.a.a.e;
import com.avast.a.a.a.s;
import com.avast.a.a.a.v;
import com.avast.a.a.a.w;
import com.avast.a.a.a.y;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;
import com.avast.android.generic.ah;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.util.af;
import com.avast.android.generic.util.aw;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Locale;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;

public abstract class b
{
  private static final IntentFilter a = new IntentFilter("android.intent.action.BATTERY_CHANGED");
  private static int b = -1;
  private static int c = -1;
  private static String d = null;
  private static String e = null;

  public static ak a(ae paramae, String paramString)
  {
    return c(paramae, paramString);
  }

  public static ak a(ae paramae, String paramString1, String paramString2, m paramm, String paramString3)
  {
    s locals = s.l().a(paramString1).a(paramm).b(paramString2).c();
    return c(paramae, paramString3).a(locals);
  }

  public static ak a(ae paramae, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    com.avast.a.a.a.t localt = s.l().a(paramString1).a(paramBoolean).b(paramString2).a(m.a);
    if (paramString3 != null)
      localt.c(paramString3);
    return c(paramae, null).a(localt.c());
  }

  public static c a(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    com.avast.android.generic.util.t.a("AvastComms", paramContext, "Starting connection check");
    while (true)
    {
      c localc;
      try
      {
        boolean bool = "com.avast.android.backup".equals(paramContext.getPackageName());
        StringBuilder localStringBuilder = new StringBuilder();
        if (!bool)
          break label320;
        str1 = "https://ff-backup.avast.com";
        String str2 = str1 + "/rest/connectionCheck?v=" + 1;
        com.avast.android.generic.util.t.a("AvastComms", paramContext, "Connection check to " + str2 + "...");
        byte[] arrayOfByte = a(paramContext, str2, v.h().b(paramString1).a(paramString2).a(1).c().bo());
        com.avast.android.generic.util.t.a("AvastComms", paramContext, "Connection check download " + arrayOfByte.length + " bytes of data succeeded");
        e locale = e.a(arrayOfByte);
        if (locale.b())
        {
          if (locale.c() != c.a)
            localc = locale.c();
          else if ((locale.f()) && (locale.g()))
            localc = c.m;
          else if ((locale.h()) && (!locale.i()))
            localc = c.n;
          else if ((paramInt > -1) && (locale.d()) && (locale.e() > aw.a(paramContext, paramInt).a()))
            localc = c.l;
          else
            localc = c.a;
        }
        else
          localc = c.k;
      }
      catch (IOException localIOException)
      {
        com.avast.android.generic.util.t.a("AvastComms", paramContext, "Download of connection check data IO Exception", localIOException);
        throw localIOException;
      }
      catch (Exception localException)
      {
        com.avast.android.generic.util.t.a("AvastComms", paramContext, "Download of connection check data general exception", localException);
        throw localException;
      }
      return localc;
      label320: String str1 = "https://ff-at.avast.com";
    }
  }

  public static HttpURLConnection a(URL paramURL)
  {
    try
    {
      URLConnection localURLConnection2 = paramURL.openConnection();
      localURLConnection1 = localURLConnection2;
      try
      {
        if ((localURLConnection1 instanceof HttpURLConnection))
          break label57;
        throw new com.avast.android.generic.internet.b.a();
      }
      catch (Exception localException2)
      {
      }
      if ((localURLConnection1 != null) && ((localURLConnection1 instanceof HttpURLConnection)))
      {
        HttpURLConnection[] arrayOfHttpURLConnection = new HttpURLConnection[1];
        arrayOfHttpURLConnection[0] = ((HttpURLConnection)localURLConnection1);
        af.a(arrayOfHttpURLConnection);
      }
      throw localException2;
      label57: HttpURLConnection localHttpURLConnection = (HttpURLConnection)localURLConnection1;
      return localHttpURLConnection;
    }
    catch (Exception localException1)
    {
      while (true)
      {
        Object localObject = localException1;
        URLConnection localURLConnection1 = null;
      }
    }
  }

  public static void a()
  {
    b = c;
    d = e;
  }

  protected static void a(HttpEntity paramHttpEntity)
  {
    if (paramHttpEntity == null);
    while (true)
    {
      return;
      try
      {
        paramHttpEntity.consumeContent();
      }
      catch (Exception localException)
      {
      }
    }
  }

  protected static void a(HttpResponse paramHttpResponse)
  {
    if ((paramHttpResponse == null) || (paramHttpResponse.getEntity() == null));
    while (true)
    {
      return;
      a(paramHttpResponse.getEntity());
    }
  }

  protected static void a(HttpPost paramHttpPost)
  {
    if ((paramHttpPost == null) || (paramHttpPost.getEntity() == null));
    while (true)
    {
      return;
      a(paramHttpPost.getEntity());
    }
  }

  protected static boolean a(Context paramContext, ak paramak, long paramLong)
  {
    ae localae1 = (ae)ad.a(paramContext, ah.class);
    ae localae2 = (ae)ad.a(paramContext, ag.class);
    if (localae1.c("packageInstTime", paramLong))
      paramak.k(com.avast.android.generic.util.z.i(paramContext));
    for (boolean bool1 = true; ; bool1 = false)
    {
      if (localae1.c("c2dmri", paramLong))
      {
        String str3 = localae1.F();
        if (str3 == null)
          str3 = "";
        paramak.h(str3);
        bool1 = true;
      }
      boolean bool2;
      if (localae2.c("accountSmsGateway", paramLong))
      {
        if (!TextUtils.isEmpty(localae2.I()))
        {
          bool2 = true;
          paramak.a(bool2);
          if (bool2)
            paramak.i(localae2.I());
          bool1 = true;
        }
      }
      else if (localae2.c("encaccesscode", paramLong))
      {
        String str2 = localae2.f();
        if ((!TextUtils.isEmpty(str2)) && (!str2.equals(ae.b)))
          break label444;
        paramak.b(false);
      }
      while (true)
      {
        bool1 = true;
        String str1 = com.avast.android.generic.f.b.a.f(paramContext);
        if ((str1 != null) && (((localae1.c().contains("syncImeiCache")) && (localae1.c("syncImeiCache", paramLong))) || (!str1.equals(localae1.b("syncImeiCache", "")))))
        {
          paramak.f(str1);
          localae1.a("syncImeiCache", str1);
          localae1.a(paramLong - 1L);
          bool1 = true;
        }
        int i = com.avast.android.generic.f.b.a.d(paramContext);
        if (((localae1.c().contains("syncMccCache")) && (localae1.c("syncMccCache", paramLong))) || ((i > 0) && (i != localae1.b("syncMccCache", 0))))
        {
          paramak.b(i);
          localae1.a("syncMccCache", i);
          localae1.a(paramLong - 1L);
          bool1 = true;
        }
        int j = com.avast.android.generic.f.b.a.e(paramContext);
        if (((localae1.c().contains("syncMocCache")) && (localae1.c("syncMocCache", paramLong))) || ((j > 0) && (j != localae1.b("syncMocCache", 0))))
        {
          paramak.c(j);
          localae1.a("syncMocCache", j);
          localae1.a(paramLong - 1L);
          bool1 = true;
        }
        return bool1;
        bool2 = false;
        break;
        label444: paramak.b(true);
      }
    }
  }

  private static byte[] a(Context paramContext, String paramString, byte[] paramArrayOfByte)
  {
    return a(paramContext, paramString, paramArrayOfByte, null);
  }

  // ERROR //
  private static byte[] a(Context paramContext, String paramString, byte[] paramArrayOfByte, a parama)
  {
    // Byte code:
    //   0: new 214	java/net/URL
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 354	java/net/URL:<init>	(Ljava/lang/String;)V
    //   8: astore 4
    //   10: aconst_null
    //   11: astore 5
    //   13: aload 4
    //   15: invokestatic 356	com/avast/android/generic/internet/b:a	(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   18: astore 11
    //   20: aload 11
    //   22: astore 10
    //   24: aload 10
    //   26: ldc_w 358
    //   29: invokevirtual 361	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   32: aload 10
    //   34: ldc_w 363
    //   37: ldc_w 365
    //   40: invokevirtual 368	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: aload 10
    //   45: ldc_w 370
    //   48: aload_2
    //   49: arraylength
    //   50: invokestatic 375	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   53: invokevirtual 368	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   56: aload 10
    //   58: iconst_0
    //   59: invokevirtual 379	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   62: aload 10
    //   64: iconst_1
    //   65: invokevirtual 382	java/net/HttpURLConnection:setDoInput	(Z)V
    //   68: aload 10
    //   70: iconst_1
    //   71: invokevirtual 385	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   74: aload 10
    //   76: iconst_1
    //   77: invokevirtual 388	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   80: aload 10
    //   82: iconst_0
    //   83: invokevirtual 391	java/net/HttpURLConnection:setAllowUserInteraction	(Z)V
    //   86: aload 10
    //   88: sipush 10000
    //   91: invokevirtual 395	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   94: aload 10
    //   96: sipush 30000
    //   99: invokevirtual 398	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   102: aload_2
    //   103: arraylength
    //   104: istore 12
    //   106: new 400	java/io/DataOutputStream
    //   109: dup
    //   110: aload 10
    //   112: invokevirtual 404	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   115: invokespecial 407	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   118: astore 7
    //   120: aload_3
    //   121: ifnonnull +160 -> 281
    //   124: aload 7
    //   126: aload_2
    //   127: invokevirtual 411	java/io/DataOutputStream:write	([B)V
    //   130: aload 7
    //   132: invokevirtual 414	java/io/DataOutputStream:flush	()V
    //   135: aload 10
    //   137: invokevirtual 417	java/net/HttpURLConnection:getResponseCode	()I
    //   140: istore 16
    //   142: aconst_null
    //   143: astore 5
    //   145: iload 16
    //   147: sipush 200
    //   150: if_icmpeq +14 -> 164
    //   153: aconst_null
    //   154: astore 5
    //   156: iload 16
    //   158: sipush 204
    //   161: if_icmpne +288 -> 449
    //   164: aload 10
    //   166: invokevirtual 421	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   169: astore 5
    //   171: new 423	java/io/ByteArrayOutputStream
    //   174: dup
    //   175: invokespecial 424	java/io/ByteArrayOutputStream:<init>	()V
    //   178: astore 17
    //   180: sipush 1024
    //   183: newarray byte
    //   185: astore 18
    //   187: aload 5
    //   189: aload 18
    //   191: iconst_0
    //   192: aload 18
    //   194: arraylength
    //   195: invokevirtual 430	java/io/InputStream:read	([BII)I
    //   198: istore 19
    //   200: iload 19
    //   202: iconst_m1
    //   203: if_icmpeq +177 -> 380
    //   206: aload 17
    //   208: aload 18
    //   210: iconst_0
    //   211: iload 19
    //   213: invokevirtual 433	java/io/ByteArrayOutputStream:write	([BII)V
    //   216: goto -29 -> 187
    //   219: astore 6
    //   221: aload 10
    //   223: astore 8
    //   225: aload 6
    //   227: instanceof 435
    //   230: ifeq +248 -> 478
    //   233: aload 6
    //   235: athrow
    //   236: astore 9
    //   238: aload 8
    //   240: astore 10
    //   242: iconst_1
    //   243: anewarray 437	java/io/Closeable
    //   246: dup
    //   247: iconst_0
    //   248: aload 7
    //   250: aastore
    //   251: invokestatic 440	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   254: iconst_1
    //   255: anewarray 437	java/io/Closeable
    //   258: dup
    //   259: iconst_0
    //   260: aload 5
    //   262: aastore
    //   263: invokestatic 440	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   266: iconst_1
    //   267: anewarray 220	java/net/HttpURLConnection
    //   270: dup
    //   271: iconst_0
    //   272: aload 10
    //   274: aastore
    //   275: invokestatic 228	com/avast/android/generic/util/af:a	([Ljava/net/HttpURLConnection;)V
    //   278: aload 9
    //   280: athrow
    //   281: ldc_w 441
    //   284: istore 13
    //   286: aload_3
    //   287: ldc_w 279
    //   290: iload 12
    //   292: i2l
    //   293: iconst_0
    //   294: invokeinterface 446 5 0
    //   299: iconst_0
    //   300: istore 14
    //   302: iconst_0
    //   303: istore 15
    //   305: aconst_null
    //   306: astore 5
    //   308: goto +237 -> 545
    //   311: aload 7
    //   313: aload_2
    //   314: iload 15
    //   316: iload 13
    //   318: invokevirtual 447	java/io/DataOutputStream:write	([BII)V
    //   321: aload 7
    //   323: invokevirtual 414	java/io/DataOutputStream:flush	()V
    //   326: iload 15
    //   328: iload 13
    //   330: iadd
    //   331: istore 15
    //   333: iload 15
    //   335: bipush 100
    //   337: imul
    //   338: iload 12
    //   340: idiv
    //   341: istore 21
    //   343: aload_3
    //   344: ldc_w 279
    //   347: iload 12
    //   349: i2l
    //   350: ldc2_w 448
    //   353: iload 21
    //   355: i2d
    //   356: dmul
    //   357: d2i
    //   358: invokeinterface 446 5 0
    //   363: aconst_null
    //   364: astore 5
    //   366: goto +179 -> 545
    //   369: aload 7
    //   371: invokevirtual 414	java/io/DataOutputStream:flush	()V
    //   374: aconst_null
    //   375: astore 5
    //   377: goto -242 -> 135
    //   380: aload 17
    //   382: invokevirtual 450	java/io/ByteArrayOutputStream:flush	()V
    //   385: aload_3
    //   386: ifnull +17 -> 403
    //   389: aload_3
    //   390: ldc_w 279
    //   393: iload 12
    //   395: i2l
    //   396: bipush 100
    //   398: invokeinterface 446 5 0
    //   403: aload 17
    //   405: invokevirtual 453	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   408: astore 20
    //   410: iconst_1
    //   411: anewarray 437	java/io/Closeable
    //   414: dup
    //   415: iconst_0
    //   416: aload 7
    //   418: aastore
    //   419: invokestatic 440	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   422: iconst_1
    //   423: anewarray 437	java/io/Closeable
    //   426: dup
    //   427: iconst_0
    //   428: aload 5
    //   430: aastore
    //   431: invokestatic 440	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   434: iconst_1
    //   435: anewarray 220	java/net/HttpURLConnection
    //   438: dup
    //   439: iconst_0
    //   440: aload 10
    //   442: aastore
    //   443: invokestatic 228	com/avast/android/generic/util/af:a	([Ljava/net/HttpURLConnection;)V
    //   446: aload 20
    //   448: areturn
    //   449: new 76	java/io/IOException
    //   452: dup
    //   453: new 103	java/lang/StringBuilder
    //   456: dup
    //   457: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   460: ldc_w 455
    //   463: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   466: iload 16
    //   468: invokevirtual 115	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   471: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   474: invokespecial 456	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   477: athrow
    //   478: new 76	java/io/IOException
    //   481: dup
    //   482: aload 6
    //   484: invokevirtual 459	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   487: invokespecial 456	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   490: athrow
    //   491: astore 9
    //   493: aconst_null
    //   494: astore 5
    //   496: aconst_null
    //   497: astore 7
    //   499: aconst_null
    //   500: astore 10
    //   502: goto -260 -> 242
    //   505: astore 9
    //   507: aconst_null
    //   508: astore 5
    //   510: aconst_null
    //   511: astore 7
    //   513: goto -271 -> 242
    //   516: astore 6
    //   518: aconst_null
    //   519: astore 5
    //   521: aconst_null
    //   522: astore 7
    //   524: aconst_null
    //   525: astore 8
    //   527: goto -302 -> 225
    //   530: astore 6
    //   532: aload 10
    //   534: astore 8
    //   536: aconst_null
    //   537: astore 5
    //   539: aconst_null
    //   540: astore 7
    //   542: goto -317 -> 225
    //   545: iload 15
    //   547: iload 12
    //   549: if_icmpge -180 -> 369
    //   552: iload 14
    //   554: ifne -185 -> 369
    //   557: iload 15
    //   559: iload 13
    //   561: iadd
    //   562: iload 12
    //   564: if_icmplt -253 -> 311
    //   567: iload 12
    //   569: iload 15
    //   571: isub
    //   572: istore 13
    //   574: iconst_1
    //   575: istore 14
    //   577: goto -266 -> 311
    //   580: astore 9
    //   582: goto -340 -> 242
    //
    // Exception table:
    //   from	to	target	type
    //   124	216	219	java/lang/Exception
    //   286	410	219	java/lang/Exception
    //   449	478	219	java/lang/Exception
    //   225	236	236	finally
    //   478	491	236	finally
    //   13	20	491	finally
    //   24	120	505	finally
    //   13	20	516	java/lang/Exception
    //   24	120	530	java/lang/Exception
    //   124	216	580	finally
    //   286	410	580	finally
    //   449	478	580	finally
  }

  public static ak b(ae paramae, String paramString)
  {
    com.avast.a.a.a.z localz = y.d().a(aa.a);
    ak localak = c(paramae, null);
    localak.h(paramString);
    return localak.a(localz.c());
  }

  public static ak c(ae paramae, String paramString)
  {
    int i = 100;
    ak localak = aj.aj();
    String str1 = paramae.z();
    String str2;
    int m;
    if (!TextUtils.isEmpty(paramString))
    {
      localak.c(paramString);
      str2 = paramae.x();
      if (str2 == null)
        str2 = "";
      if (paramae.O() != null)
      {
        Intent localIntent = paramae.O().registerReceiver(null, a);
        if (localIntent != null)
        {
          int j = localIntent.getIntExtra("level", -1);
          int k = localIntent.getIntExtra("scale", -1);
          if ((j != -1) && (k != -1))
          {
            m = (int)(100.0F * (j / k));
            if (m <= i)
              break label271;
          }
        }
      }
    }
    while (true)
    {
      if (i != b)
      {
        c = i;
        localak.d(i);
      }
      String str3 = com.avast.android.generic.f.b.a.i(paramae.O());
      if (!TextUtils.isEmpty(str3))
      {
        com.avast.android.generic.util.t.a("AvastGeneric", "Current local IP address: " + str3);
        if (!str3.equals(d))
        {
          e = str3;
          localak.m(str3);
        }
      }
      localak.a("ANDROID").d(Locale.getDefault().getLanguage()).e(str2).g(String.valueOf(Build.VERSION.SDK_INT)).a(1);
      return localak;
      if (!TextUtils.isEmpty(str1))
      {
        localak.c(str1);
        break;
      }
      localak.c("");
      break;
      label271: if (m < 0)
        i = 0;
      else
        i = m;
    }
  }

  // ERROR //
  @android.annotation.SuppressLint({"NewApi"})
  public com.avast.a.a.a.h a(Context paramContext, String paramString, ak paramak, k paramk, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: new 246	org/apache/http/client/methods/HttpPost
    //   6: dup
    //   7: aload_2
    //   8: invokespecial 556	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   11: astore 7
    //   13: new 558	b/a/a/a/a/h
    //   16: dup
    //   17: getstatic 563	b/a/a/a/a/e:b	Lb/a/a/a/a/e;
    //   20: invokespecial 566	b/a/a/a/a/h:<init>	(Lb/a/a/a/a/e;)V
    //   23: astore 8
    //   25: new 568	b/a/a/a/a/a/b
    //   28: dup
    //   29: aload_3
    //   30: invokevirtual 571	com/avast/a/a/a/ak:c	()Lcom/avast/a/a/a/aj;
    //   33: invokevirtual 572	com/avast/a/a/a/aj:bo	()[B
    //   36: ldc_w 365
    //   39: invokespecial 575	b/a/a/a/a/a/b:<init>	([BLjava/lang/String;)V
    //   42: astore 9
    //   44: aload 4
    //   46: invokevirtual 580	com/avast/android/generic/internet/k:b	()Ljava/io/File;
    //   49: ifnull +201 -> 250
    //   52: new 582	b/a/a/a/a/a/e
    //   55: dup
    //   56: aload 4
    //   58: invokevirtual 580	com/avast/android/generic/internet/k:b	()Ljava/io/File;
    //   61: aload 4
    //   63: invokevirtual 584	com/avast/android/generic/internet/k:a	()Ljava/lang/String;
    //   66: invokespecial 587	b/a/a/a/a/a/e:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   69: astore 15
    //   71: aload 8
    //   73: ldc_w 589
    //   76: aload 9
    //   78: invokevirtual 592	b/a/a/a/a/h:a	(Ljava/lang/String;Lb/a/a/a/a/a/c;)V
    //   81: aload 8
    //   83: ldc_w 594
    //   86: aload 15
    //   88: invokevirtual 592	b/a/a/a/a/h:a	(Ljava/lang/String;Lb/a/a/a/a/a/c;)V
    //   91: aload 7
    //   93: aload 8
    //   95: invokevirtual 597	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   98: ldc_w 599
    //   101: invokestatic 604	android/b/a/a:a	(Ljava/lang/String;)Landroid/b/a/a;
    //   104: astore 16
    //   106: aload 16
    //   108: astore 17
    //   110: aload 17
    //   112: invokevirtual 608	android/b/a/a:getConnectionManager	()Lorg/apache/http/conn/ClientConnectionManager;
    //   115: invokeinterface 614 1 0
    //   120: astore 19
    //   122: getstatic 544	android/os/Build$VERSION:SDK_INT	I
    //   125: bipush 8
    //   127: if_icmpge +205 -> 332
    //   130: aload 19
    //   132: ldc_w 616
    //   135: invokevirtual 622	org/apache/http/conn/scheme/SchemeRegistry:get	(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    //   138: ifnonnull +25 -> 163
    //   141: aload 19
    //   143: new 624	org/apache/http/conn/scheme/Scheme
    //   146: dup
    //   147: ldc_w 616
    //   150: invokestatic 630	org/apache/http/conn/ssl/SSLSocketFactory:getSocketFactory	()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    //   153: sipush 443
    //   156: invokespecial 633	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   159: invokevirtual 637	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   162: pop
    //   163: aload 17
    //   165: aload 7
    //   167: invokevirtual 641	android/b/a/a:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   170: astore 20
    //   172: aload 20
    //   174: invokeinterface 645 1 0
    //   179: invokeinterface 650 1 0
    //   184: sipush 200
    //   187: if_icmpeq +25 -> 212
    //   190: aload 20
    //   192: invokeinterface 645 1 0
    //   197: invokeinterface 650 1 0
    //   202: istore 24
    //   204: iload 24
    //   206: sipush 204
    //   209: if_icmpne +198 -> 407
    //   212: aload 20
    //   214: invokeinterface 241 1 0
    //   219: invokestatic 655	org/apache/http/util/EntityUtils:toByteArray	(Lorg/apache/http/HttpEntity;)[B
    //   222: invokestatic 660	com/avast/a/a/a/h:a	([B)Lcom/avast/a/a/a/h;
    //   225: astore 23
    //   227: aload 7
    //   229: invokestatic 662	com/avast/android/generic/internet/b:a	(Lorg/apache/http/client/methods/HttpPost;)V
    //   232: aload 20
    //   234: invokestatic 664	com/avast/android/generic/internet/b:a	(Lorg/apache/http/HttpResponse;)V
    //   237: aload 17
    //   239: ifnull +8 -> 247
    //   242: aload 17
    //   244: invokevirtual 666	android/b/a/a:a	()V
    //   247: aload 23
    //   249: areturn
    //   250: aload 4
    //   252: invokevirtual 668	com/avast/android/generic/internet/k:c	()[B
    //   255: ifnull +246 -> 501
    //   258: new 568	b/a/a/a/a/a/b
    //   261: dup
    //   262: aload 4
    //   264: invokevirtual 668	com/avast/android/generic/internet/k:c	()[B
    //   267: aload 4
    //   269: invokevirtual 584	com/avast/android/generic/internet/k:a	()Ljava/lang/String;
    //   272: ldc_w 670
    //   275: invokespecial 673	b/a/a/a/a/a/b:<init>	([BLjava/lang/String;Ljava/lang/String;)V
    //   278: astore 15
    //   280: goto -209 -> 71
    //   283: astore 10
    //   285: aconst_null
    //   286: astore 11
    //   288: aconst_null
    //   289: astore 12
    //   291: aload 10
    //   293: astore 13
    //   295: aload 7
    //   297: astore 14
    //   299: aload 14
    //   301: invokestatic 662	com/avast/android/generic/internet/b:a	(Lorg/apache/http/client/methods/HttpPost;)V
    //   304: aload 11
    //   306: invokestatic 664	com/avast/android/generic/internet/b:a	(Lorg/apache/http/HttpResponse;)V
    //   309: aload 12
    //   311: ifnull +8 -> 319
    //   314: aload 12
    //   316: invokevirtual 666	android/b/a/a:a	()V
    //   319: new 76	java/io/IOException
    //   322: dup
    //   323: aload 13
    //   325: invokevirtual 459	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   328: invokespecial 456	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   331: athrow
    //   332: aload_1
    //   333: aload 19
    //   335: invokestatic 678	com/avast/android/generic/internet/c:a	(Landroid/content/Context;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    //   338: goto -175 -> 163
    //   341: astore 18
    //   343: aload 18
    //   345: astore 13
    //   347: aload 17
    //   349: astore 12
    //   351: aload 7
    //   353: astore 14
    //   355: aconst_null
    //   356: astore 11
    //   358: goto -59 -> 299
    //   361: astore 21
    //   363: aload 7
    //   365: invokestatic 662	com/avast/android/generic/internet/b:a	(Lorg/apache/http/client/methods/HttpPost;)V
    //   368: aload 20
    //   370: invokestatic 664	com/avast/android/generic/internet/b:a	(Lorg/apache/http/HttpResponse;)V
    //   373: aload 17
    //   375: ifnull +119 -> 494
    //   378: aload 17
    //   380: invokevirtual 666	android/b/a/a:a	()V
    //   383: aload 21
    //   385: athrow
    //   386: astore 22
    //   388: aload 20
    //   390: astore 11
    //   392: aload 6
    //   394: astore 12
    //   396: aload 22
    //   398: astore 13
    //   400: aload 7
    //   402: astore 14
    //   404: goto -105 -> 299
    //   407: aload 7
    //   409: invokestatic 662	com/avast/android/generic/internet/b:a	(Lorg/apache/http/client/methods/HttpPost;)V
    //   412: aload 20
    //   414: invokestatic 664	com/avast/android/generic/internet/b:a	(Lorg/apache/http/HttpResponse;)V
    //   417: aload 17
    //   419: ifnull +11 -> 430
    //   422: aload 17
    //   424: invokevirtual 666	android/b/a/a:a	()V
    //   427: aconst_null
    //   428: astore 17
    //   430: new 76	java/io/IOException
    //   433: dup
    //   434: new 103	java/lang/StringBuilder
    //   437: dup
    //   438: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   441: ldc_w 455
    //   444: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   447: aload 20
    //   449: invokevirtual 681	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   452: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   455: invokespecial 456	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   458: athrow
    //   459: astore 13
    //   461: aload 20
    //   463: astore 11
    //   465: aload 17
    //   467: astore 12
    //   469: aload 7
    //   471: astore 14
    //   473: goto -174 -> 299
    //   476: astore 26
    //   478: aload 26
    //   480: astore 13
    //   482: aconst_null
    //   483: astore 14
    //   485: aconst_null
    //   486: astore 11
    //   488: aconst_null
    //   489: astore 12
    //   491: goto -192 -> 299
    //   494: aload 17
    //   496: astore 6
    //   498: goto -115 -> 383
    //   501: aconst_null
    //   502: astore 15
    //   504: goto -433 -> 71
    //
    // Exception table:
    //   from	to	target	type
    //   13	106	283	java/lang/Exception
    //   250	280	283	java/lang/Exception
    //   110	172	341	java/lang/Exception
    //   332	338	341	java/lang/Exception
    //   212	247	361	java/lang/Exception
    //   383	386	386	java/lang/Exception
    //   172	204	459	java/lang/Exception
    //   363	383	459	java/lang/Exception
    //   407	459	459	java/lang/Exception
    //   3	13	476	java/lang/Exception
  }

  // ERROR //
  public com.avast.a.a.a.h a(Context paramContext, String paramString, ak paramak, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: new 214	java/net/URL
    //   6: dup
    //   7: aload_2
    //   8: invokespecial 354	java/net/URL:<init>	(Ljava/lang/String;)V
    //   11: astore 6
    //   13: aload 6
    //   15: invokestatic 356	com/avast/android/generic/internet/b:a	(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   18: astore 11
    //   20: aload 11
    //   22: astore 9
    //   24: aload_3
    //   25: invokevirtual 571	com/avast/a/a/a/ak:c	()Lcom/avast/a/a/a/aj;
    //   28: invokevirtual 572	com/avast/a/a/a/aj:bo	()[B
    //   31: astore 12
    //   33: aload 9
    //   35: ldc_w 358
    //   38: invokevirtual 361	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   41: aload 9
    //   43: ldc_w 363
    //   46: ldc_w 365
    //   49: invokevirtual 368	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   52: aload 9
    //   54: ldc_w 370
    //   57: aload 12
    //   59: arraylength
    //   60: invokestatic 375	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   63: invokevirtual 368	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   66: aload 9
    //   68: iconst_0
    //   69: invokevirtual 379	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   72: aload 9
    //   74: iconst_1
    //   75: invokevirtual 382	java/net/HttpURLConnection:setDoInput	(Z)V
    //   78: aload 9
    //   80: iconst_1
    //   81: invokevirtual 385	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   84: aload 9
    //   86: iconst_1
    //   87: invokevirtual 388	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   90: aload 9
    //   92: iconst_0
    //   93: invokevirtual 391	java/net/HttpURLConnection:setAllowUserInteraction	(Z)V
    //   96: aload 9
    //   98: sipush 10000
    //   101: invokevirtual 395	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   104: aload 9
    //   106: sipush 30000
    //   109: invokevirtual 398	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   112: new 400	java/io/DataOutputStream
    //   115: dup
    //   116: aload 9
    //   118: invokevirtual 404	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   121: invokespecial 407	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   124: astore 8
    //   126: aload 8
    //   128: aload 12
    //   130: invokevirtual 411	java/io/DataOutputStream:write	([B)V
    //   133: aload 8
    //   135: invokevirtual 414	java/io/DataOutputStream:flush	()V
    //   138: aload 9
    //   140: invokevirtual 417	java/net/HttpURLConnection:getResponseCode	()I
    //   143: istore 13
    //   145: aconst_null
    //   146: astore 5
    //   148: iload 13
    //   150: sipush 200
    //   153: if_icmpeq +14 -> 167
    //   156: aconst_null
    //   157: astore 5
    //   159: iload 13
    //   161: sipush 204
    //   164: if_icmpne +56 -> 220
    //   167: aload 9
    //   169: invokevirtual 421	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   172: astore 5
    //   174: aload 5
    //   176: invokestatic 685	com/avast/a/a/a/h:a	(Ljava/io/InputStream;)Lcom/avast/a/a/a/h;
    //   179: astore 14
    //   181: iconst_1
    //   182: anewarray 437	java/io/Closeable
    //   185: dup
    //   186: iconst_0
    //   187: aload 8
    //   189: aastore
    //   190: invokestatic 440	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   193: iconst_1
    //   194: anewarray 437	java/io/Closeable
    //   197: dup
    //   198: iconst_0
    //   199: aload 5
    //   201: aastore
    //   202: invokestatic 440	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   205: iconst_1
    //   206: anewarray 220	java/net/HttpURLConnection
    //   209: dup
    //   210: iconst_0
    //   211: aload 9
    //   213: aastore
    //   214: invokestatic 228	com/avast/android/generic/util/af:a	([Ljava/net/HttpURLConnection;)V
    //   217: aload 14
    //   219: areturn
    //   220: new 76	java/io/IOException
    //   223: dup
    //   224: new 103	java/lang/StringBuilder
    //   227: dup
    //   228: invokespecial 104	java/lang/StringBuilder:<init>	()V
    //   231: ldc_w 455
    //   234: invokevirtual 110	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: iload 13
    //   239: invokevirtual 115	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   242: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   245: invokespecial 456	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   248: athrow
    //   249: astore 7
    //   251: new 76	java/io/IOException
    //   254: dup
    //   255: aload 7
    //   257: invokevirtual 459	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   260: invokespecial 456	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   263: athrow
    //   264: astore 10
    //   266: iconst_1
    //   267: anewarray 437	java/io/Closeable
    //   270: dup
    //   271: iconst_0
    //   272: aload 8
    //   274: aastore
    //   275: invokestatic 440	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   278: iconst_1
    //   279: anewarray 437	java/io/Closeable
    //   282: dup
    //   283: iconst_0
    //   284: aload 5
    //   286: aastore
    //   287: invokestatic 440	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   290: iconst_1
    //   291: anewarray 220	java/net/HttpURLConnection
    //   294: dup
    //   295: iconst_0
    //   296: aload 9
    //   298: aastore
    //   299: invokestatic 228	com/avast/android/generic/util/af:a	([Ljava/net/HttpURLConnection;)V
    //   302: aload 10
    //   304: athrow
    //   305: astore 10
    //   307: aconst_null
    //   308: astore 5
    //   310: aconst_null
    //   311: astore 8
    //   313: aconst_null
    //   314: astore 9
    //   316: goto -50 -> 266
    //   319: astore 10
    //   321: aconst_null
    //   322: astore 5
    //   324: aconst_null
    //   325: astore 8
    //   327: goto -61 -> 266
    //   330: astore 7
    //   332: aconst_null
    //   333: astore 5
    //   335: aconst_null
    //   336: astore 8
    //   338: aconst_null
    //   339: astore 9
    //   341: goto -90 -> 251
    //   344: astore 7
    //   346: aconst_null
    //   347: astore 5
    //   349: aconst_null
    //   350: astore 8
    //   352: goto -101 -> 251
    //
    // Exception table:
    //   from	to	target	type
    //   126	181	249	java/lang/Exception
    //   220	249	249	java/lang/Exception
    //   126	181	264	finally
    //   220	249	264	finally
    //   251	264	264	finally
    //   13	20	305	finally
    //   24	126	319	finally
    //   13	20	330	java/lang/Exception
    //   24	126	344	java/lang/Exception
  }

  protected abstract boolean a(AvastService paramAvastService, ae paramae1, ae paramae2, ak paramak, int paramInt);

  protected abstract boolean a(AvastService paramAvastService, ae paramae1, ae paramae2, ak paramak, int paramInt, long paramLong);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.b
 * JD-Core Version:    0.6.2
 */