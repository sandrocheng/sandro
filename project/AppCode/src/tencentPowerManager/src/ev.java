import QQPIM.ConnectType;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import android.os.Looper;
import com.tencent.tmsecure.common.TMSApplication;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public final class ev
{
  private static volatile boolean n = false;
  private static volatile String o = null;
  private static volatile boolean p = false;
  private static volatile boolean q = false;
  private static volatile long r = 0L;
  private String a;
  private String b = "GET";
  private HttpURLConnection c;
  private byte[] d;
  private int e = -1;
  private Hashtable<String, String> f = new Hashtable(0);
  private boolean g = false;
  private boolean h = true;
  private byte i = 0;
  private byte j = 0;
  private byte k = 0;
  private int l = 30000;
  private int m = 30000;

  private ev(String paramString)
  {
    this.a = paramString;
  }

  public static ev a(ev paramev)
    throws eq
  {
    ConnectType localConnectType = bk.a();
    ev localev = new ev(paramev.g());
    if (ConnectType.CT_NONE == localConnectType)
      throw new eq(-1052, "no connection!");
    localev.a(localev.a, localConnectType);
    localev.b(paramev.b);
    localev.d = paramev.d;
    Hashtable localHashtable = paramev.f;
    Iterator localIterator;
    if ((localev.c != null) && (localHashtable != null))
      localIterator = localHashtable.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localev;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localev.a((String)localEntry.getKey(), (String)localEntry.getValue());
    }
  }

  public static ev a(String paramString)
    throws eq
  {
    int i1 = 1;
    if (Integer.parseInt(Build.VERSION.SDK) < 11);
    while ((i1 == 0) && (Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId()))
    {
      throw new er();
      if (bk.b <= 0)
        bk.b = TMSApplication.getApplicaionContext().getApplicationInfo().targetSdkVersion;
      if (bk.b >= 10)
        i1 = 0;
    }
    if ((paramString == null) || (paramString.length() == 0))
      throw new eq(-1000, "url is null!");
    ev localev = new ev(paramString);
    ConnectType localConnectType = bk.a();
    if (ConnectType.CT_NONE == localConnectType)
      throw new eq(-1052, "no connecition!");
    localev.a(localev.a, localConnectType);
    return localev;
  }

  private void a(String paramString, ConnectType paramConnectType)
    throws eq
  {
    while (true)
    {
      String str2;
      try
      {
        h();
        if (ConnectType.CT_NONE == paramConnectType)
          break;
        if (ConnectType.CT_GPRS_WAP == paramConnectType)
        {
          Proxy.Type localType = Proxy.Type.HTTP;
          str2 = android.net.Proxy.getHost(TMSApplication.getApplicaionContext());
          if ((str2 == null) || (str2.length() == 0))
          {
            str3 = android.net.Proxy.getDefaultHost();
            int i1 = android.net.Proxy.getPort(TMSApplication.getApplicaionContext());
            if (i1 <= 0)
              i1 = android.net.Proxy.getDefaultPort();
            java.net.Proxy localProxy = new java.net.Proxy(localType, InetSocketAddress.createUnresolved(str3, i1));
            this.c = ((HttpURLConnection)new URL(paramString).openConnection(localProxy));
            this.g = true;
            break;
          }
        }
        else if ((ConnectType.CT_WIFI == paramConnectType) && ("com.tencent.qqpimsecure".equals(TMSApplication.getApplicaionContext().getPackageName())))
        {
          String str1 = bk.b();
          if ((o == null) || (!o.equals(str1)) || ((System.currentTimeMillis() - r > 5000L) && (!p)))
          {
            n = false;
            p = true;
            o = str1;
            gp localgp1 = new gp(this);
            new gm(Looper.getMainLooper(), localgp1).sendEmptyMessage(0);
            r = System.currentTimeMillis();
          }
        }
        else
        {
          this.c = ((HttpURLConnection)new URL(paramString).openConnection());
          this.g = false;
          this.c.setReadTimeout(this.m);
          this.c.setConnectTimeout(this.l);
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw new eq(-1057, "IllegalArgumentException : " + localIllegalArgumentException.getMessage());
        if ((!n) || (p))
          continue;
        p = true;
        gp localgp2 = new gp(this);
        new gm(Looper.getMainLooper(), localgp2).sendEmptyMessage(0);
        continue;
      }
      catch (SecurityException localSecurityException)
      {
        throw new eq(-1058, "SecurityException: " + localSecurityException.getMessage());
      }
      catch (UnsupportedOperationException localUnsupportedOperationException)
      {
        throw new eq(-1059, "UnsupportedOperationException: " + localUnsupportedOperationException.getMessage());
      }
      catch (IOException localIOException)
      {
        throw new eq(-1056, "IOException : " + localIOException.getMessage());
      }
      String str3 = str2;
    }
  }

  private void a(Hashtable<String, String> paramHashtable)
  {
    if ((paramHashtable == null) || (paramHashtable.size() == 0));
    while (true)
    {
      return;
      if (this.c != null)
      {
        Iterator localIterator = paramHashtable.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          this.c.setRequestProperty((String)localEntry.getKey(), (String)localEntry.getValue());
        }
      }
    }
  }

  // ERROR //
  private static byte[] a(InputStream paramInputStream)
    throws eq
  {
    // Byte code:
    //   0: new 339	java/io/BufferedInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 342	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   8: astore_1
    //   9: sipush 2048
    //   12: newarray byte
    //   14: astore_2
    //   15: new 344	java/io/ByteArrayOutputStream
    //   18: dup
    //   19: invokespecial 345	java/io/ByteArrayOutputStream:<init>	()V
    //   22: astore_3
    //   23: aload_0
    //   24: aload_2
    //   25: invokevirtual 351	java/io/InputStream:read	([B)I
    //   28: istore 8
    //   30: iload 8
    //   32: iconst_m1
    //   33: if_icmpne +20 -> 53
    //   36: aload_3
    //   37: invokevirtual 355	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   40: astore 9
    //   42: aload_1
    //   43: invokevirtual 358	java/io/BufferedInputStream:close	()V
    //   46: aload_3
    //   47: invokevirtual 359	java/io/ByteArrayOutputStream:close	()V
    //   50: aload 9
    //   52: areturn
    //   53: aload_3
    //   54: aload_2
    //   55: iconst_0
    //   56: iload 8
    //   58: invokevirtual 363	java/io/ByteArrayOutputStream:write	([BII)V
    //   61: goto -38 -> 23
    //   64: astore 7
    //   66: new 79	eq
    //   69: dup
    //   70: bipush 200
    //   72: new 304	java/lang/StringBuilder
    //   75: dup
    //   76: ldc_w 365
    //   79: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   82: aload 7
    //   84: invokevirtual 326	java/io/IOException:getMessage	()Ljava/lang/String;
    //   87: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: invokevirtual 317	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   93: invokespecial 100	eq:<init>	(ILjava/lang/String;)V
    //   96: athrow
    //   97: astore 4
    //   99: aload_1
    //   100: invokevirtual 358	java/io/BufferedInputStream:close	()V
    //   103: aload_3
    //   104: invokevirtual 359	java/io/ByteArrayOutputStream:close	()V
    //   107: aload 4
    //   109: athrow
    //   110: astore 5
    //   112: aload 5
    //   114: invokevirtual 368	java/lang/Exception:printStackTrace	()V
    //   117: goto -14 -> 103
    //   120: astore 6
    //   122: aload 6
    //   124: invokevirtual 368	java/lang/Exception:printStackTrace	()V
    //   127: goto -20 -> 107
    //   130: astore 10
    //   132: aload 10
    //   134: invokevirtual 368	java/lang/Exception:printStackTrace	()V
    //   137: goto -91 -> 46
    //   140: astore 11
    //   142: aload 11
    //   144: invokevirtual 368	java/lang/Exception:printStackTrace	()V
    //   147: goto -97 -> 50
    //
    // Exception table:
    //   from	to	target	type
    //   23	42	64	java/io/IOException
    //   53	61	64	java/io/IOException
    //   23	42	97	finally
    //   53	61	97	finally
    //   66	97	97	finally
    //   99	103	110	java/lang/Exception
    //   103	107	120	java/lang/Exception
    //   42	46	130	java/lang/Exception
    //   46	50	140	java/lang/Exception
  }

  private String c(String paramString)
    throws eq
  {
    try
    {
      String str = this.c.getHeaderField(paramString);
      return str;
    }
    catch (Exception localException)
    {
      throw new eq(-56, "get header field: " + localException.getMessage());
    }
  }

  private static String[] d(String paramString)
  {
    String[] arrayOfString = new String[2];
    int i1 = paramString.indexOf("://");
    if (-1 != i1)
      paramString = paramString.substring(i1 + 3);
    int i2 = paramString.indexOf("/");
    if (-1 != i2)
    {
      arrayOfString[0] = paramString.substring(0, i2);
      arrayOfString[1] = paramString.substring(i2);
    }
    while (true)
    {
      return arrayOfString;
      arrayOfString[0] = paramString;
      arrayOfString[1] = "";
    }
  }

  private int k()
    throws eq
  {
    if (this.c != null)
    {
      this.c.disconnect();
      this.c = null;
    }
    a(this.a, bk.a());
    b(this.b);
    if (("POST".equalsIgnoreCase(this.b)) && (this.d != null))
      this.d = this.d;
    a(this.f);
    return a();
  }

  private String l()
    throws eq
  {
    try
    {
      String str = this.c.getHeaderField("Content-Type");
      return str;
    }
    catch (Exception localException)
    {
      throw new eq(-56, "get content type: " + localException.getMessage());
    }
  }

  private String m()
    throws eq
  {
    try
    {
      String str = this.c.getHeaderField("Location");
      return str;
    }
    catch (Exception localException)
    {
      throw new eq(-56, "get redirect url: " + localException.getMessage());
    }
  }

  // ERROR //
  public final int a()
    throws eq
  {
    // Byte code:
    //   0: ldc_w 263
    //   3: invokestatic 184	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   6: invokevirtual 266	android/content/Context:getPackageName	()Ljava/lang/String;
    //   9: invokevirtual 270	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   12: ifeq +99 -> 111
    //   15: getstatic 261	QQPIM/ConnectType:CT_WIFI	LQQPIM/ConnectType;
    //   18: invokestatic 84	bk:a	()LQQPIM/ConnectType;
    //   21: if_acmpne +90 -> 111
    //   24: invokestatic 277	java/lang/System:currentTimeMillis	()J
    //   27: lstore 33
    //   29: getstatic 39	ev:p	Z
    //   32: ifne +35 -> 67
    //   35: getstatic 35	ev:n	Z
    //   38: ifeq +63 -> 101
    //   41: getstatic 39	ev:p	Z
    //   44: ifne +57 -> 101
    //   47: getstatic 41	ev:q	Z
    //   50: ifne +51 -> 101
    //   53: new 79	eq
    //   56: dup
    //   57: sipush -1063
    //   60: ldc_w 429
    //   63: invokespecial 100	eq:<init>	(ILjava/lang/String;)V
    //   66: athrow
    //   67: invokestatic 277	java/lang/System:currentTimeMillis	()J
    //   70: lload 33
    //   72: lsub
    //   73: ldc2_w 278
    //   76: lcmp
    //   77: ifle -48 -> 29
    //   80: invokestatic 277	java/lang/System:currentTimeMillis	()J
    //   83: lload 33
    //   85: lsub
    //   86: ldc2_w 430
    //   89: lcmp
    //   90: iflt -55 -> 35
    //   93: invokestatic 277	java/lang/System:currentTimeMillis	()J
    //   96: lstore 33
    //   98: goto -69 -> 29
    //   101: getstatic 39	ev:p	Z
    //   104: ifeq +7 -> 111
    //   107: iconst_1
    //   108: putstatic 35	ev:n	Z
    //   111: getstatic 148	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   114: invokestatic 154	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   117: bipush 8
    //   119: if_icmpge +13 -> 132
    //   122: ldc_w 433
    //   125: ldc_w 435
    //   128: invokestatic 439	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   131: pop
    //   132: aload_0
    //   133: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   136: iconst_0
    //   137: invokevirtual 442	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   140: aload_0
    //   141: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   144: ldc_w 444
    //   147: ldc_w 446
    //   150: invokevirtual 333	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   153: aload_0
    //   154: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   157: ldc_w 448
    //   160: ldc_w 446
    //   163: invokevirtual 333	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   166: aload_0
    //   167: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   170: iconst_0
    //   171: invokevirtual 451	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   174: ldc 49
    //   176: aload_0
    //   177: getfield 51	ev:b	Ljava/lang/String;
    //   180: invokevirtual 401	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   183: istore 24
    //   185: iload 24
    //   187: ifeq +85 -> 272
    //   190: sipush -3000
    //   193: istore_2
    //   194: aload_0
    //   195: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   198: ldc 49
    //   200: invokevirtual 454	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   203: aload_0
    //   204: aload_0
    //   205: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   208: invokevirtual 457	java/net/HttpURLConnection:getResponseCode	()I
    //   211: putfield 53	ev:e	I
    //   214: aload_0
    //   215: getfield 53	ev:e	I
    //   218: sipush 301
    //   221: if_icmplt +245 -> 466
    //   224: aload_0
    //   225: getfield 53	ev:e	I
    //   228: sipush 305
    //   231: if_icmpgt +235 -> 466
    //   234: aload_0
    //   235: getfield 66	ev:i	B
    //   238: istore 31
    //   240: aload_0
    //   241: iload 31
    //   243: iconst_1
    //   244: iadd
    //   245: i2b
    //   246: putfield 66	ev:i	B
    //   249: iload 31
    //   251: iconst_3
    //   252: if_icmpge +1130 -> 1382
    //   255: aload_0
    //   256: aload_0
    //   257: invokespecial 459	ev:m	()Ljava/lang/String;
    //   260: putfield 76	ev:a	Ljava/lang/String;
    //   263: aload_0
    //   264: invokespecial 461	ev:k	()I
    //   267: istore 7
    //   269: goto +1297 -> 1566
    //   272: sipush -2000
    //   275: istore_2
    //   276: aload_0
    //   277: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   280: ldc_w 397
    //   283: invokevirtual 454	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   286: aload_0
    //   287: getfield 60	ev:f	Ljava/util/Hashtable;
    //   290: ldc_w 463
    //   293: invokevirtual 466	java/util/Hashtable:containsKey	(Ljava/lang/Object;)Z
    //   296: ifne +29 -> 325
    //   299: aload_0
    //   300: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   303: ldc_w 463
    //   306: ldc_w 468
    //   309: invokevirtual 333	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   312: aload_0
    //   313: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   316: ldc_w 470
    //   319: ldc_w 472
    //   322: invokevirtual 333	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   325: aload_0
    //   326: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   329: iconst_1
    //   330: invokevirtual 475	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   333: aload_0
    //   334: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   337: iconst_1
    //   338: invokevirtual 478	java/net/HttpURLConnection:setDoInput	(Z)V
    //   341: aload_0
    //   342: getfield 107	ev:d	[B
    //   345: ifnull -142 -> 203
    //   348: aload_0
    //   349: getfield 60	ev:f	Ljava/util/Hashtable;
    //   352: ldc_w 407
    //   355: invokevirtual 466	java/util/Hashtable:containsKey	(Ljava/lang/Object;)Z
    //   358: ifne +16 -> 374
    //   361: aload_0
    //   362: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   365: ldc_w 407
    //   368: ldc_w 480
    //   371: invokevirtual 333	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   374: aload_0
    //   375: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   378: ldc_w 482
    //   381: new 304	java/lang/StringBuilder
    //   384: dup
    //   385: invokespecial 483	java/lang/StringBuilder:<init>	()V
    //   388: aload_0
    //   389: getfield 107	ev:d	[B
    //   392: arraylength
    //   393: invokevirtual 486	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   396: invokevirtual 317	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   399: invokevirtual 333	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   402: aload_0
    //   403: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   406: invokevirtual 490	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   409: astore 25
    //   411: aload 25
    //   413: aload_0
    //   414: getfield 107	ev:d	[B
    //   417: invokevirtual 495	java/io/OutputStream:write	([B)V
    //   420: aload 25
    //   422: invokevirtual 498	java/io/OutputStream:flush	()V
    //   425: aload 25
    //   427: invokevirtual 499	java/io/OutputStream:close	()V
    //   430: goto -227 -> 203
    //   433: astore_1
    //   434: aload_0
    //   435: getfield 70	ev:k	B
    //   438: istore_3
    //   439: aload_0
    //   440: iload_3
    //   441: iconst_1
    //   442: iadd
    //   443: i2b
    //   444: putfield 70	ev:k	B
    //   447: iload_3
    //   448: iconst_2
    //   449: if_icmpge +93 -> 542
    //   452: aload_0
    //   453: invokevirtual 213	ev:h	()Ljava/lang/String;
    //   456: pop
    //   457: aload_0
    //   458: invokespecial 461	ev:k	()I
    //   461: istore 7
    //   463: goto +1103 -> 1566
    //   466: aload_0
    //   467: getfield 53	ev:e	I
    //   470: sipush 200
    //   473: if_icmpne +909 -> 1382
    //   476: aload_0
    //   477: invokespecial 501	ev:l	()Ljava/lang/String;
    //   480: astore 28
    //   482: aload_0
    //   483: getfield 62	ev:g	Z
    //   486: ifeq +896 -> 1382
    //   489: aload 28
    //   491: ifnull +891 -> 1382
    //   494: aload 28
    //   496: invokevirtual 504	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   499: ldc_w 506
    //   502: invokevirtual 381	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   505: iconst_m1
    //   506: if_icmpeq +876 -> 1382
    //   509: aload_0
    //   510: getfield 68	ev:j	B
    //   513: istore 29
    //   515: aload_0
    //   516: iload 29
    //   518: iconst_1
    //   519: iadd
    //   520: i2b
    //   521: putfield 68	ev:j	B
    //   524: iload 29
    //   526: ifgt +856 -> 1382
    //   529: aload_0
    //   530: invokespecial 461	ev:k	()I
    //   533: istore 30
    //   535: iload 30
    //   537: istore 7
    //   539: goto +1027 -> 1566
    //   542: aload_0
    //   543: getfield 64	ev:h	Z
    //   546: ifeq +228 -> 774
    //   549: aload_0
    //   550: iconst_0
    //   551: putfield 64	ev:h	Z
    //   554: aload_0
    //   555: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   558: ifnull +15 -> 573
    //   561: aload_0
    //   562: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   565: invokevirtual 395	java/net/HttpURLConnection:disconnect	()V
    //   568: aload_0
    //   569: aconst_null
    //   570: putfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   573: aload_0
    //   574: getfield 62	ev:g	Z
    //   577: ifeq +68 -> 645
    //   580: aload_0
    //   581: aload_0
    //   582: getfield 76	ev:a	Ljava/lang/String;
    //   585: getstatic 509	QQPIM/ConnectType:CT_GPRS_NET	LQQPIM/ConnectType;
    //   588: invokespecial 103	ev:a	(Ljava/lang/String;LQQPIM/ConnectType;)V
    //   591: aload_0
    //   592: getfield 109	ev:c	Ljava/net/HttpURLConnection;
    //   595: ifnull +179 -> 774
    //   598: aload_0
    //   599: aload_0
    //   600: getfield 51	ev:b	Ljava/lang/String;
    //   603: invokevirtual 105	ev:b	(Ljava/lang/String;)V
    //   606: ldc_w 397
    //   609: aload_0
    //   610: getfield 51	ev:b	Ljava/lang/String;
    //   613: invokevirtual 401	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   616: ifeq +18 -> 634
    //   619: aload_0
    //   620: getfield 107	ev:d	[B
    //   623: ifnull +11 -> 634
    //   626: aload_0
    //   627: aload_0
    //   628: getfield 107	ev:d	[B
    //   631: putfield 107	ev:d	[B
    //   634: aload_0
    //   635: aload_0
    //   636: getfield 60	ev:f	Ljava/util/Hashtable;
    //   639: invokespecial 403	ev:a	(Ljava/util/Hashtable;)V
    //   642: goto -642 -> 0
    //   645: getstatic 261	QQPIM/ConnectType:CT_WIFI	LQQPIM/ConnectType;
    //   648: invokestatic 84	bk:a	()LQQPIM/ConnectType;
    //   651: if_acmpne -60 -> 591
    //   654: invokestatic 184	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   657: invokestatic 228	android/net/Proxy:getHost	(Landroid/content/Context;)Ljava/lang/String;
    //   660: astore 4
    //   662: aload 4
    //   664: ifnull +11 -> 675
    //   667: aload 4
    //   669: invokevirtual 199	java/lang/String:length	()I
    //   672: ifne +8 -> 680
    //   675: invokestatic 231	android/net/Proxy:getDefaultHost	()Ljava/lang/String;
    //   678: astore 4
    //   680: aload 4
    //   682: ifnull +48 -> 730
    //   685: aload 4
    //   687: invokevirtual 199	java/lang/String:length	()I
    //   690: ifle +40 -> 730
    //   693: invokestatic 184	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   696: invokestatic 235	android/net/Proxy:getPort	(Landroid/content/Context;)I
    //   699: istore 5
    //   701: iload 5
    //   703: ifgt +8 -> 711
    //   706: invokestatic 238	android/net/Proxy:getDefaultPort	()I
    //   709: istore 5
    //   711: iload 5
    //   713: ifle +17 -> 730
    //   716: aload_0
    //   717: aload_0
    //   718: getfield 76	ev:a	Ljava/lang/String;
    //   721: getstatic 216	QQPIM/ConnectType:CT_GPRS_WAP	LQQPIM/ConnectType;
    //   724: invokespecial 103	ev:a	(Ljava/lang/String;LQQPIM/ConnectType;)V
    //   727: goto -136 -> 591
    //   730: new 79	eq
    //   733: dup
    //   734: iload_2
    //   735: bipush 62
    //   737: isub
    //   738: new 304	java/lang/StringBuilder
    //   741: dup
    //   742: ldc_w 511
    //   745: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   748: aload_1
    //   749: invokevirtual 512	java/net/UnknownHostException:getMessage	()Ljava/lang/String;
    //   752: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   755: ldc_w 514
    //   758: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   761: invokestatic 84	bk:a	()LQQPIM/ConnectType;
    //   764: invokevirtual 517	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   767: invokevirtual 317	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   770: invokespecial 100	eq:<init>	(ILjava/lang/String;)V
    //   773: athrow
    //   774: new 79	eq
    //   777: dup
    //   778: iload_2
    //   779: bipush 62
    //   781: isub
    //   782: new 304	java/lang/StringBuilder
    //   785: dup
    //   786: ldc_w 511
    //   789: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   792: aload_1
    //   793: invokevirtual 512	java/net/UnknownHostException:getMessage	()Ljava/lang/String;
    //   796: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   799: ldc_w 514
    //   802: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   805: invokestatic 84	bk:a	()LQQPIM/ConnectType;
    //   808: invokevirtual 517	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   811: invokevirtual 317	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   814: invokespecial 100	eq:<init>	(ILjava/lang/String;)V
    //   817: athrow
    //   818: astore 22
    //   820: iconst_0
    //   821: istore_2
    //   822: aload_0
    //   823: getfield 70	ev:k	B
    //   826: istore 23
    //   828: aload_0
    //   829: iload 23
    //   831: iconst_1
    //   832: iadd
    //   833: i2b
    //   834: putfield 70	ev:k	B
    //   837: iload 23
    //   839: iconst_2
    //   840: if_icmpge +12 -> 852
    //   843: aload_0
    //   844: invokespecial 461	ev:k	()I
    //   847: istore 7
    //   849: goto +717 -> 1566
    //   852: new 79	eq
    //   855: dup
    //   856: iload_2
    //   857: bipush 60
    //   859: isub
    //   860: new 304	java/lang/StringBuilder
    //   863: dup
    //   864: ldc_w 519
    //   867: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   870: aload 22
    //   872: invokevirtual 520	java/lang/IllegalAccessError:getMessage	()Ljava/lang/String;
    //   875: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   878: invokevirtual 317	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   881: invokespecial 100	eq:<init>	(ILjava/lang/String;)V
    //   884: athrow
    //   885: astore 20
    //   887: iconst_0
    //   888: istore_2
    //   889: aload_0
    //   890: getfield 70	ev:k	B
    //   893: istore 21
    //   895: aload_0
    //   896: iload 21
    //   898: iconst_1
    //   899: iadd
    //   900: i2b
    //   901: putfield 70	ev:k	B
    //   904: iload 21
    //   906: iconst_2
    //   907: if_icmpge +12 -> 919
    //   910: aload_0
    //   911: invokespecial 461	ev:k	()I
    //   914: istore 7
    //   916: goto +650 -> 1566
    //   919: new 79	eq
    //   922: dup
    //   923: iload_2
    //   924: bipush 61
    //   926: isub
    //   927: new 304	java/lang/StringBuilder
    //   930: dup
    //   931: ldc_w 522
    //   934: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   937: aload 20
    //   939: invokevirtual 523	java/lang/IllegalStateException:getMessage	()Ljava/lang/String;
    //   942: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   945: invokevirtual 317	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   948: invokespecial 100	eq:<init>	(ILjava/lang/String;)V
    //   951: athrow
    //   952: astore 18
    //   954: iconst_0
    //   955: istore_2
    //   956: aload_0
    //   957: getfield 70	ev:k	B
    //   960: istore 19
    //   962: aload_0
    //   963: iload 19
    //   965: iconst_1
    //   966: iadd
    //   967: i2b
    //   968: putfield 70	ev:k	B
    //   971: iload 19
    //   973: iconst_2
    //   974: if_icmpge +12 -> 986
    //   977: aload_0
    //   978: invokespecial 461	ev:k	()I
    //   981: istore 7
    //   983: goto +583 -> 1566
    //   986: new 79	eq
    //   989: dup
    //   990: iload_2
    //   991: bipush 51
    //   993: isub
    //   994: new 304	java/lang/StringBuilder
    //   997: dup
    //   998: ldc_w 525
    //   1001: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1004: aload 18
    //   1006: invokevirtual 526	java/net/ProtocolException:getMessage	()Ljava/lang/String;
    //   1009: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1012: invokevirtual 317	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1015: invokespecial 100	eq:<init>	(ILjava/lang/String;)V
    //   1018: athrow
    //   1019: astore 16
    //   1021: iconst_0
    //   1022: istore_2
    //   1023: aload_0
    //   1024: getfield 70	ev:k	B
    //   1027: istore 17
    //   1029: aload_0
    //   1030: iload 17
    //   1032: iconst_1
    //   1033: iadd
    //   1034: i2b
    //   1035: putfield 70	ev:k	B
    //   1038: iload 17
    //   1040: iconst_2
    //   1041: if_icmpge +12 -> 1053
    //   1044: aload_0
    //   1045: invokespecial 461	ev:k	()I
    //   1048: istore 7
    //   1050: goto +516 -> 1566
    //   1053: new 79	eq
    //   1056: dup
    //   1057: iload_2
    //   1058: bipush 51
    //   1060: isub
    //   1061: new 304	java/lang/StringBuilder
    //   1064: dup
    //   1065: ldc_w 528
    //   1068: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1071: aload 16
    //   1073: invokevirtual 529	org/apache/http/client/ClientProtocolException:getMessage	()Ljava/lang/String;
    //   1076: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1079: invokevirtual 317	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1082: invokespecial 100	eq:<init>	(ILjava/lang/String;)V
    //   1085: athrow
    //   1086: astore 14
    //   1088: iconst_0
    //   1089: istore_2
    //   1090: aload_0
    //   1091: getfield 70	ev:k	B
    //   1094: istore 15
    //   1096: aload_0
    //   1097: iload 15
    //   1099: iconst_1
    //   1100: iadd
    //   1101: i2b
    //   1102: putfield 70	ev:k	B
    //   1105: iload 15
    //   1107: iconst_2
    //   1108: if_icmpge +12 -> 1120
    //   1111: aload_0
    //   1112: invokespecial 461	ev:k	()I
    //   1115: istore 7
    //   1117: goto +449 -> 1566
    //   1120: new 79	eq
    //   1123: dup
    //   1124: iload_2
    //   1125: bipush 54
    //   1127: isub
    //   1128: new 304	java/lang/StringBuilder
    //   1131: dup
    //   1132: ldc_w 531
    //   1135: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1138: aload 14
    //   1140: invokevirtual 532	java/net/SocketException:getMessage	()Ljava/lang/String;
    //   1143: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1146: invokevirtual 317	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1149: invokespecial 100	eq:<init>	(ILjava/lang/String;)V
    //   1152: athrow
    //   1153: astore 12
    //   1155: iconst_0
    //   1156: istore_2
    //   1157: aload_0
    //   1158: getfield 70	ev:k	B
    //   1161: istore 13
    //   1163: aload_0
    //   1164: iload 13
    //   1166: iconst_1
    //   1167: iadd
    //   1168: i2b
    //   1169: putfield 70	ev:k	B
    //   1172: iload 13
    //   1174: iconst_2
    //   1175: if_icmpge +26 -> 1201
    //   1178: aload_0
    //   1179: ldc_w 533
    //   1182: putfield 72	ev:l	I
    //   1185: aload_0
    //   1186: ldc_w 533
    //   1189: putfield 74	ev:m	I
    //   1192: aload_0
    //   1193: invokespecial 461	ev:k	()I
    //   1196: istore 7
    //   1198: goto +368 -> 1566
    //   1201: new 79	eq
    //   1204: dup
    //   1205: iload_2
    //   1206: bipush 55
    //   1208: isub
    //   1209: new 304	java/lang/StringBuilder
    //   1212: dup
    //   1213: ldc_w 535
    //   1216: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1219: aload 12
    //   1221: invokevirtual 536	java/net/SocketTimeoutException:getMessage	()Ljava/lang/String;
    //   1224: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1227: invokevirtual 317	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1230: invokespecial 100	eq:<init>	(ILjava/lang/String;)V
    //   1233: athrow
    //   1234: astore 10
    //   1236: iconst_0
    //   1237: istore_2
    //   1238: aload_0
    //   1239: getfield 70	ev:k	B
    //   1242: istore 11
    //   1244: aload_0
    //   1245: iload 11
    //   1247: iconst_1
    //   1248: iadd
    //   1249: i2b
    //   1250: putfield 70	ev:k	B
    //   1253: iload 11
    //   1255: iconst_2
    //   1256: if_icmpge +12 -> 1268
    //   1259: aload_0
    //   1260: invokespecial 461	ev:k	()I
    //   1263: istore 7
    //   1265: goto +301 -> 1566
    //   1268: new 79	eq
    //   1271: dup
    //   1272: iload_2
    //   1273: bipush 56
    //   1275: isub
    //   1276: new 304	java/lang/StringBuilder
    //   1279: dup
    //   1280: ldc_w 538
    //   1283: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1286: aload 10
    //   1288: invokevirtual 539	eq:getMessage	()Ljava/lang/String;
    //   1291: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1294: invokevirtual 317	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1297: invokespecial 100	eq:<init>	(ILjava/lang/String;)V
    //   1300: athrow
    //   1301: astore 8
    //   1303: iconst_0
    //   1304: istore_2
    //   1305: aload_0
    //   1306: getfield 70	ev:k	B
    //   1309: istore 9
    //   1311: aload_0
    //   1312: iload 9
    //   1314: iconst_1
    //   1315: iadd
    //   1316: i2b
    //   1317: putfield 70	ev:k	B
    //   1320: iload 9
    //   1322: iconst_2
    //   1323: if_icmpge +12 -> 1335
    //   1326: aload_0
    //   1327: invokespecial 461	ev:k	()I
    //   1330: istore 7
    //   1332: goto +234 -> 1566
    //   1335: new 79	eq
    //   1338: dup
    //   1339: iload_2
    //   1340: new 304	java/lang/StringBuilder
    //   1343: dup
    //   1344: ldc_w 541
    //   1347: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1350: aload 8
    //   1352: invokevirtual 545	java/lang/Object:getClass	()Ljava/lang/Class;
    //   1355: invokevirtual 550	java/lang/Class:getName	()Ljava/lang/String;
    //   1358: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1361: ldc_w 552
    //   1364: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1367: aload 8
    //   1369: invokevirtual 375	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1372: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1375: invokevirtual 317	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1378: invokespecial 100	eq:<init>	(ILjava/lang/String;)V
    //   1381: athrow
    //   1382: aload_0
    //   1383: getfield 53	ev:e	I
    //   1386: sipush 206
    //   1389: if_icmpeq +122 -> 1511
    //   1392: aload_0
    //   1393: getfield 53	ev:e	I
    //   1396: sipush 200
    //   1399: if_icmpeq +112 -> 1511
    //   1402: aload_0
    //   1403: getfield 70	ev:k	B
    //   1406: istore 26
    //   1408: aload_0
    //   1409: iload 26
    //   1411: iconst_1
    //   1412: iadd
    //   1413: i2b
    //   1414: putfield 70	ev:k	B
    //   1417: iload 26
    //   1419: iconst_2
    //   1420: if_icmpge +42 -> 1462
    //   1423: iload_2
    //   1424: iconst_m1
    //   1425: if_icmpne +28 -> 1453
    //   1428: ldc_w 554
    //   1431: ldc_w 433
    //   1434: invokestatic 557	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   1437: invokevirtual 270	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1440: ifeq +13 -> 1453
    //   1443: ldc_w 433
    //   1446: ldc_w 435
    //   1449: invokestatic 439	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1452: pop
    //   1453: aload_0
    //   1454: invokespecial 461	ev:k	()I
    //   1457: istore 7
    //   1459: goto +107 -> 1566
    //   1462: new 79	eq
    //   1465: dup
    //   1466: iload_2
    //   1467: aload_0
    //   1468: getfield 53	ev:e	I
    //   1471: iadd
    //   1472: new 304	java/lang/StringBuilder
    //   1475: dup
    //   1476: ldc_w 559
    //   1479: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1482: aload_0
    //   1483: getfield 53	ev:e	I
    //   1486: invokevirtual 486	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1489: ldc_w 561
    //   1492: invokevirtual 314	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1495: getstatic 148	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   1498: invokestatic 154	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   1501: invokevirtual 486	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1504: invokevirtual 317	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1507: invokespecial 100	eq:<init>	(ILjava/lang/String;)V
    //   1510: athrow
    //   1511: aload_0
    //   1512: getfield 53	ev:e	I
    //   1515: istore 7
    //   1517: goto +49 -> 1566
    //   1520: astore 8
    //   1522: goto -217 -> 1305
    //   1525: astore 10
    //   1527: goto -289 -> 1238
    //   1530: astore 12
    //   1532: goto -375 -> 1157
    //   1535: astore 14
    //   1537: goto -447 -> 1090
    //   1540: astore 16
    //   1542: goto -519 -> 1023
    //   1545: astore 18
    //   1547: goto -591 -> 956
    //   1550: astore 20
    //   1552: goto -663 -> 889
    //   1555: astore 22
    //   1557: goto -735 -> 822
    //   1560: astore_1
    //   1561: iconst_0
    //   1562: istore_2
    //   1563: goto -1129 -> 434
    //   1566: iload 7
    //   1568: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   194	430	433	java/net/UnknownHostException
    //   466	535	433	java/net/UnknownHostException
    //   111	185	818	java/lang/IllegalAccessError
    //   111	185	885	java/lang/IllegalStateException
    //   111	185	952	java/net/ProtocolException
    //   111	185	1019	org/apache/http/client/ClientProtocolException
    //   111	185	1086	java/net/SocketException
    //   111	185	1153	java/net/SocketTimeoutException
    //   111	185	1234	eq
    //   111	185	1301	java/lang/Exception
    //   194	430	1520	java/lang/Exception
    //   466	535	1520	java/lang/Exception
    //   194	430	1525	eq
    //   466	535	1525	eq
    //   194	430	1530	java/net/SocketTimeoutException
    //   466	535	1530	java/net/SocketTimeoutException
    //   194	430	1535	java/net/SocketException
    //   466	535	1535	java/net/SocketException
    //   194	430	1540	org/apache/http/client/ClientProtocolException
    //   466	535	1540	org/apache/http/client/ClientProtocolException
    //   194	430	1545	java/net/ProtocolException
    //   466	535	1545	java/net/ProtocolException
    //   194	430	1550	java/lang/IllegalStateException
    //   466	535	1550	java/lang/IllegalStateException
    //   194	430	1555	java/lang/IllegalAccessError
    //   466	535	1555	java/lang/IllegalAccessError
    //   111	185	1560	java/net/UnknownHostException
  }

  public final int a(AtomicReference<byte[]> paramAtomicReference)
    throws eq
  {
    int i2;
    int i1;
    if (this.c != null)
    {
      if ((this.e != 200) && (this.e != 206))
      {
        i2 = 0;
        if (i2 != 0)
          break label44;
      }
    }
    else
      i1 = -4000;
    while (true)
    {
      return i1;
      i2 = 1;
      break;
      try
      {
        label44: byte[] arrayOfByte = a(this.c.getInputStream());
        paramAtomicReference.set(arrayOfByte);
        i1 = 0;
      }
      catch (eq localeq)
      {
        throw new eq(-4000 + localeq.a(), "get response exception : " + localeq.getMessage());
      }
      catch (Exception localException)
      {
        throw new eq(-4002, "get response exception : " + localException.getMessage());
      }
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null));
    while (true)
    {
      return;
      if (this.c != null)
      {
        this.c.setRequestProperty(paramString1, paramString2);
        this.f.put(paramString1, paramString2);
      }
    }
  }

  public final void a(byte[] paramArrayOfByte)
  {
    this.d = paramArrayOfByte;
  }

  public final InputStream b()
    throws eq
  {
    try
    {
      InputStream localInputStream = this.c.getInputStream();
      return localInputStream;
    }
    catch (Exception localException)
    {
      throw new eq(-56, "get inputStream: " + localException.getMessage());
    }
  }

  public final void b(String paramString)
  {
    this.b = paramString;
    if ("GET".equalsIgnoreCase(paramString))
      this.b = "GET";
    while (true)
    {
      return;
      if ("POST".equalsIgnoreCase(paramString))
        this.b = "POST";
    }
  }

  public final int c()
  {
    return this.e;
  }

  public final void d()
  {
    if (this.c != null)
    {
      this.c.disconnect();
      this.c = null;
    }
  }

  public final long e()
    throws eq
  {
    long l1 = -1L;
    String str = c("Content-Range");
    if (str != null);
    try
    {
      long l2 = Long.parseLong(str.substring(1 + str.lastIndexOf('/')).trim());
      l1 = l2;
      return l1;
    }
    catch (Exception localException)
    {
      throw new eq(-56, "get breakpoint total size: " + localException.getMessage());
    }
  }

  public final long f()
    throws eq
  {
    long l1 = -1L;
    String str = c("content-length");
    if (str != null);
    try
    {
      long l2 = Long.parseLong(str.trim());
      l1 = l2;
      return l1;
    }
    catch (Exception localException)
    {
      throw new eq(-56, "get content length: " + localException.getMessage());
    }
  }

  public final String g()
  {
    HttpURLConnection localHttpURLConnection = this.c;
    String str = null;
    if (localHttpURLConnection != null)
      str = this.c.getURL().toString();
    if ((str != null) && (str.length() != 0))
      this.a = str;
    return this.a;
  }

  public final String h()
  {
    String str1;
    if (this.c != null)
      str1 = this.c.getURL().getHost();
    while (true)
    {
      if (((str1 == null) || (str1.length() == 0)) && (this.c == null))
        str1 = d(this.a)[0];
      try
      {
        InetAddress localInetAddress = InetAddress.getByName(str1);
        if (localInetAddress != null)
        {
          String str3 = localInetAddress.getHostAddress();
          str2 = str3;
          return str2;
          str1 = d(this.a)[0];
        }
      }
      catch (UnknownHostException localUnknownHostException)
      {
        while (true)
        {
          localUnknownHostException.printStackTrace();
          String str2 = "";
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ev
 * JD-Core Version:    0.6.2
 */