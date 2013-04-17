import QQPIM.ConnectType;
import android.content.Context;
import android.os.Looper;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.exception.NetWorkException;
import com.tencent.tmsecure.exception.NetworkOnMainThreadException;
import com.tencent.tmsecure.utils.NetworkUtil;
import com.tencent.tmsecure.utils.WifiUtil;
import com.tencent.tmsecure.utils.WifiUtil.IWifiApproveCheckCallBack;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

public final class btg
{
  private static volatile boolean r = false;
  private static volatile String s = null;
  private static volatile boolean t = false;
  private static volatile boolean u = false;
  private static volatile long v = 0L;
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
  private boolean n;
  private boolean o;
  private String p;
  private int q;

  private btg(String paramString)
  {
    this.a = paramString;
  }

  public static btg a(btg parambtg)
    throws NetWorkException
  {
    ConnectType localConnectType = NetworkUtil.getNetworkType();
    btg localbtg = new btg(parambtg.g());
    localbtg.n = false;
    if (ConnectType.CT_NONE == localConnectType)
      throw new NetWorkException(-1052, "no connection!");
    localbtg.a(localbtg.a, localConnectType);
    localbtg.b(parambtg.b);
    localbtg.d = parambtg.d;
    Hashtable localHashtable = parambtg.f;
    Iterator localIterator;
    if ((localbtg.c != null) && (localHashtable != null))
      localIterator = localHashtable.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localbtg;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localbtg.a((String)localEntry.getKey(), (String)localEntry.getValue());
    }
  }

  public static btg a(String paramString)
    throws NetWorkException
  {
    if ((!NetworkUtil.canNetworkOnMainThread()) && (Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId()))
      throw new NetworkOnMainThreadException();
    if ((paramString == null) || (paramString.length() == 0))
      throw new NetWorkException(-1000, "url is null!");
    btg localbtg = new btg(paramString);
    localbtg.n = false;
    ConnectType localConnectType = NetworkUtil.getNetworkType();
    if (ConnectType.CT_NONE == localConnectType)
      throw new NetWorkException(-1052, "no connecition!");
    localbtg.a(localbtg.a, localConnectType);
    return localbtg;
  }

  public static btg a(String paramString1, boolean paramBoolean, String paramString2, int paramInt)
    throws NetWorkException
  {
    if ((!NetworkUtil.canNetworkOnMainThread()) && (Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId()))
      throw new NetworkOnMainThreadException();
    if ((paramString1 == null) || (paramString1.length() == 0))
      throw new NetWorkException(-1000, "url is null!");
    btg localbtg = new btg(paramString1);
    localbtg.n = true;
    localbtg.o = paramBoolean;
    localbtg.p = paramString2;
    localbtg.q = paramInt;
    localbtg.b(paramString1, paramBoolean, paramString2, paramInt);
    return localbtg;
  }

  private void a(String paramString, ConnectType paramConnectType)
    throws NetWorkException
  {
    try
    {
      h();
      if (ConnectType.CT_NONE != paramConnectType)
        if (ConnectType.CT_GPRS_WAP == paramConnectType)
        {
          Proxy localProxy = new Proxy(Proxy.Type.HTTP, InetSocketAddress.createUnresolved(NetworkUtil.getProxyHost(), NetworkUtil.getProxyPort()));
          this.c = ((HttpURLConnection)new URL(paramString).openConnection(localProxy));
          this.g = true;
        }
        else if ((ConnectType.CT_WIFI == paramConnectType) && ("com.tencent.qqpimsecure".equals(TMSApplication.getApplicaionContext().getPackageName())))
        {
          String str = WifiUtil.getSSID();
          if ((s == null) || (!s.equals(str)) || ((System.currentTimeMillis() - v > 5000L) && (!t)))
          {
            r = false;
            t = true;
            s = str;
            WifiUtil.needWifiApprove(new btg.a());
            v = System.currentTimeMillis();
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
      while (true)
      {
        throw new NetWorkException(-1057, "IllegalArgumentException : " + localIllegalArgumentException.getMessage());
        if ((r) && (!t))
        {
          t = true;
          WifiUtil.needWifiApprove(new btg.a());
        }
      }
    }
    catch (SecurityException localSecurityException)
    {
      throw new NetWorkException(-1058, "SecurityException: " + localSecurityException.getMessage());
    }
    catch (UnsupportedOperationException localUnsupportedOperationException)
    {
      throw new NetWorkException(-1059, "UnsupportedOperationException: " + localUnsupportedOperationException.getMessage());
    }
    catch (IOException localIOException)
    {
      throw new NetWorkException(-1056, "IOException : " + localIOException.getMessage());
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
    throws NetWorkException
  {
    // Byte code:
    //   0: new 325	java/io/BufferedInputStream
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 328	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   8: astore_1
    //   9: sipush 2048
    //   12: newarray byte
    //   14: astore_2
    //   15: new 330	java/io/ByteArrayOutputStream
    //   18: dup
    //   19: invokespecial 331	java/io/ByteArrayOutputStream:<init>	()V
    //   22: astore_3
    //   23: aload_0
    //   24: aload_2
    //   25: invokevirtual 337	java/io/InputStream:read	([B)I
    //   28: istore 8
    //   30: iload 8
    //   32: iconst_m1
    //   33: if_icmpne +20 -> 53
    //   36: aload_3
    //   37: invokevirtual 341	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   40: astore 9
    //   42: aload_1
    //   43: invokevirtual 344	java/io/BufferedInputStream:close	()V
    //   46: aload_3
    //   47: invokevirtual 345	java/io/ByteArrayOutputStream:close	()V
    //   50: aload 9
    //   52: areturn
    //   53: aload_3
    //   54: aload_2
    //   55: iconst_0
    //   56: iload 8
    //   58: invokevirtual 349	java/io/ByteArrayOutputStream:write	([BII)V
    //   61: goto -38 -> 23
    //   64: astore 7
    //   66: new 83	com/tencent/tmsecure/exception/NetWorkException
    //   69: dup
    //   70: bipush 200
    //   72: new 290	java/lang/StringBuilder
    //   75: dup
    //   76: ldc_w 351
    //   79: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   82: aload 7
    //   84: invokevirtual 312	java/io/IOException:getMessage	()Ljava/lang/String;
    //   87: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: invokevirtual 303	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   93: invokespecial 107	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   96: athrow
    //   97: astore 4
    //   99: aload_1
    //   100: invokevirtual 344	java/io/BufferedInputStream:close	()V
    //   103: aload_3
    //   104: invokevirtual 345	java/io/ByteArrayOutputStream:close	()V
    //   107: aload 4
    //   109: athrow
    //   110: astore 5
    //   112: aload 5
    //   114: invokevirtual 354	java/lang/Exception:printStackTrace	()V
    //   117: goto -14 -> 103
    //   120: astore 6
    //   122: aload 6
    //   124: invokevirtual 354	java/lang/Exception:printStackTrace	()V
    //   127: goto -20 -> 107
    //   130: astore 10
    //   132: aload 10
    //   134: invokevirtual 354	java/lang/Exception:printStackTrace	()V
    //   137: goto -91 -> 46
    //   140: astore 11
    //   142: aload 11
    //   144: invokevirtual 354	java/lang/Exception:printStackTrace	()V
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

  private void b(String paramString1, boolean paramBoolean, String paramString2, int paramInt)
    throws NetWorkException
  {
    while (true)
    {
      try
      {
        h();
        if (paramBoolean)
        {
          if (paramString2 == null)
          {
            paramString2 = "10.0.0.172";
            break label247;
            Proxy localProxy = new Proxy(Proxy.Type.HTTP, InetSocketAddress.createUnresolved(paramString2, paramInt));
            this.c = ((HttpURLConnection)new URL(paramString1).openConnection(localProxy));
            this.g = true;
            this.c.setReadTimeout(30000);
            this.c.setConnectTimeout(this.l);
          }
        }
        else
        {
          this.c = ((HttpURLConnection)new URL(paramString1).openConnection());
          this.g = false;
          continue;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw new NetWorkException(-1057, "IllegalArgumentException : " + localIllegalArgumentException.getMessage());
      }
      catch (SecurityException localSecurityException)
      {
        throw new NetWorkException(-1058, "SecurityException: " + localSecurityException.getMessage());
      }
      catch (UnsupportedOperationException localUnsupportedOperationException)
      {
        throw new NetWorkException(-1059, "UnsupportedOperationException: " + localUnsupportedOperationException.getMessage());
      }
      catch (IOException localIOException)
      {
        throw new NetWorkException(-1056, "IOException : " + localIOException.getMessage());
      }
      label247: if (paramInt < 0)
        paramInt = 80;
    }
  }

  private String c(String paramString)
    throws NetWorkException
  {
    try
    {
      String str = this.c.getHeaderField(paramString);
      return str;
    }
    catch (Exception localException)
    {
      throw new NetWorkException(-56, "get header field: " + localException.getMessage());
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
    throws NetWorkException
  {
    if (this.c != null)
    {
      this.c.disconnect();
      this.c = null;
    }
    if (!this.n)
      a(this.a, NetworkUtil.getNetworkType());
    while (true)
    {
      b(this.b);
      if (("POST".equalsIgnoreCase(this.b)) && (this.d != null))
        this.d = this.d;
      a(this.f);
      return a();
      b(this.a, this.o, this.p, this.q);
    }
  }

  private String l()
    throws NetWorkException
  {
    try
    {
      String str = this.c.getHeaderField("Content-Type");
      return str;
    }
    catch (Exception localException)
    {
      throw new NetWorkException(-56, "get content type: " + localException.getMessage());
    }
  }

  private String m()
    throws NetWorkException
  {
    try
    {
      String str = this.c.getHeaderField("Location");
      return str;
    }
    catch (Exception localException)
    {
      throw new NetWorkException(-56, "get redirect url: " + localException.getMessage());
    }
  }

  // ERROR //
  public final int a()
    throws NetWorkException
  {
    // Byte code:
    //   0: ldc 243
    //   2: invokestatic 249	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   5: invokevirtual 254	android/content/Context:getPackageName	()Ljava/lang/String;
    //   8: invokevirtual 258	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   11: ifeq +99 -> 110
    //   14: getstatic 241	QQPIM/ConnectType:CT_WIFI	LQQPIM/ConnectType;
    //   17: invokestatic 89	com/tencent/tmsecure/utils/NetworkUtil:getNetworkType	()LQQPIM/ConnectType;
    //   20: if_acmpne +90 -> 110
    //   23: invokestatic 268	java/lang/System:currentTimeMillis	()J
    //   26: lstore 32
    //   28: getstatic 43	btg:t	Z
    //   31: ifne +35 -> 66
    //   34: getstatic 39	btg:r	Z
    //   37: ifeq +63 -> 100
    //   40: getstatic 43	btg:t	Z
    //   43: ifne +57 -> 100
    //   46: getstatic 45	btg:u	Z
    //   49: ifne +51 -> 100
    //   52: new 83	com/tencent/tmsecure/exception/NetWorkException
    //   55: dup
    //   56: sipush -1063
    //   59: ldc_w 418
    //   62: invokespecial 107	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   65: athrow
    //   66: invokestatic 268	java/lang/System:currentTimeMillis	()J
    //   69: lload 32
    //   71: lsub
    //   72: ldc2_w 269
    //   75: lcmp
    //   76: ifle -48 -> 28
    //   79: invokestatic 268	java/lang/System:currentTimeMillis	()J
    //   82: lload 32
    //   84: lsub
    //   85: ldc2_w 419
    //   88: lcmp
    //   89: iflt -55 -> 34
    //   92: invokestatic 268	java/lang/System:currentTimeMillis	()J
    //   95: lstore 32
    //   97: goto -69 -> 28
    //   100: getstatic 43	btg:t	Z
    //   103: ifeq +7 -> 110
    //   106: iconst_1
    //   107: putstatic 39	btg:r	Z
    //   110: invokestatic 425	com/tencent/tmsecure/utils/SDKUtil:getSDKVersion	()I
    //   113: bipush 8
    //   115: if_icmpge +13 -> 128
    //   118: ldc_w 427
    //   121: ldc_w 429
    //   124: invokestatic 433	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   127: pop
    //   128: aload_0
    //   129: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   132: iconst_0
    //   133: invokevirtual 436	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   136: aload_0
    //   137: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   140: ldc_w 438
    //   143: ldc_w 440
    //   146: invokevirtual 319	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   149: aload_0
    //   150: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   153: ldc_w 442
    //   156: ldc_w 440
    //   159: invokevirtual 319	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   162: aload_0
    //   163: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   166: iconst_0
    //   167: invokevirtual 445	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   170: ldc 53
    //   172: aload_0
    //   173: getfield 55	btg:b	Ljava/lang/String;
    //   176: invokevirtual 390	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   179: istore 23
    //   181: iload 23
    //   183: ifeq +85 -> 268
    //   186: sipush -3000
    //   189: istore_2
    //   190: aload_0
    //   191: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   194: ldc 53
    //   196: invokevirtual 448	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   199: aload_0
    //   200: aload_0
    //   201: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   204: invokevirtual 451	java/net/HttpURLConnection:getResponseCode	()I
    //   207: putfield 57	btg:e	I
    //   210: aload_0
    //   211: getfield 57	btg:e	I
    //   214: sipush 301
    //   217: if_icmplt +245 -> 462
    //   220: aload_0
    //   221: getfield 57	btg:e	I
    //   224: sipush 305
    //   227: if_icmpgt +235 -> 462
    //   230: aload_0
    //   231: getfield 70	btg:i	B
    //   234: istore 30
    //   236: aload_0
    //   237: iload 30
    //   239: iconst_1
    //   240: iadd
    //   241: i2b
    //   242: putfield 70	btg:i	B
    //   245: iload 30
    //   247: iconst_3
    //   248: if_icmpge +1092 -> 1340
    //   251: aload_0
    //   252: aload_0
    //   253: invokespecial 453	btg:m	()Ljava/lang/String;
    //   256: putfield 80	btg:a	Ljava/lang/String;
    //   259: aload_0
    //   260: invokespecial 455	btg:k	()I
    //   263: istore 6
    //   265: goto +1256 -> 1521
    //   268: sipush -2000
    //   271: istore_2
    //   272: aload_0
    //   273: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   276: ldc_w 386
    //   279: invokevirtual 448	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   282: aload_0
    //   283: getfield 64	btg:f	Ljava/util/Hashtable;
    //   286: ldc_w 457
    //   289: invokevirtual 460	java/util/Hashtable:containsKey	(Ljava/lang/Object;)Z
    //   292: ifne +29 -> 321
    //   295: aload_0
    //   296: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   299: ldc_w 457
    //   302: ldc_w 462
    //   305: invokevirtual 319	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   308: aload_0
    //   309: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   312: ldc_w 464
    //   315: ldc_w 466
    //   318: invokevirtual 319	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   321: aload_0
    //   322: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   325: iconst_1
    //   326: invokevirtual 469	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   329: aload_0
    //   330: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   333: iconst_1
    //   334: invokevirtual 472	java/net/HttpURLConnection:setDoInput	(Z)V
    //   337: aload_0
    //   338: getfield 114	btg:d	[B
    //   341: ifnull -142 -> 199
    //   344: aload_0
    //   345: getfield 64	btg:f	Ljava/util/Hashtable;
    //   348: ldc_w 396
    //   351: invokevirtual 460	java/util/Hashtable:containsKey	(Ljava/lang/Object;)Z
    //   354: ifne +16 -> 370
    //   357: aload_0
    //   358: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   361: ldc_w 396
    //   364: ldc_w 474
    //   367: invokevirtual 319	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   370: aload_0
    //   371: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   374: ldc_w 476
    //   377: new 290	java/lang/StringBuilder
    //   380: dup
    //   381: invokespecial 477	java/lang/StringBuilder:<init>	()V
    //   384: aload_0
    //   385: getfield 114	btg:d	[B
    //   388: arraylength
    //   389: invokevirtual 480	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   392: invokevirtual 303	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   395: invokevirtual 319	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   398: aload_0
    //   399: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   402: invokevirtual 484	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   405: astore 24
    //   407: aload 24
    //   409: aload_0
    //   410: getfield 114	btg:d	[B
    //   413: invokevirtual 489	java/io/OutputStream:write	([B)V
    //   416: aload 24
    //   418: invokevirtual 492	java/io/OutputStream:flush	()V
    //   421: aload 24
    //   423: invokevirtual 493	java/io/OutputStream:close	()V
    //   426: goto -227 -> 199
    //   429: astore_1
    //   430: aload_0
    //   431: getfield 74	btg:k	B
    //   434: istore_3
    //   435: aload_0
    //   436: iload_3
    //   437: iconst_1
    //   438: iadd
    //   439: i2b
    //   440: putfield 74	btg:k	B
    //   443: iload_3
    //   444: iconst_2
    //   445: if_icmpge +93 -> 538
    //   448: aload_0
    //   449: invokevirtual 203	btg:h	()Ljava/lang/String;
    //   452: pop
    //   453: aload_0
    //   454: invokespecial 455	btg:k	()I
    //   457: istore 6
    //   459: goto +1062 -> 1521
    //   462: aload_0
    //   463: getfield 57	btg:e	I
    //   466: sipush 200
    //   469: if_icmpne +871 -> 1340
    //   472: aload_0
    //   473: invokespecial 495	btg:l	()Ljava/lang/String;
    //   476: astore 27
    //   478: aload_0
    //   479: getfield 66	btg:g	Z
    //   482: ifeq +858 -> 1340
    //   485: aload 27
    //   487: ifnull +853 -> 1340
    //   490: aload 27
    //   492: invokevirtual 498	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   495: ldc_w 500
    //   498: invokevirtual 370	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   501: iconst_m1
    //   502: if_icmpeq +838 -> 1340
    //   505: aload_0
    //   506: getfield 72	btg:j	B
    //   509: istore 28
    //   511: aload_0
    //   512: iload 28
    //   514: iconst_1
    //   515: iadd
    //   516: i2b
    //   517: putfield 72	btg:j	B
    //   520: iload 28
    //   522: ifgt +818 -> 1340
    //   525: aload_0
    //   526: invokespecial 455	btg:k	()I
    //   529: istore 29
    //   531: iload 29
    //   533: istore 6
    //   535: goto +986 -> 1521
    //   538: aload_0
    //   539: getfield 68	btg:h	Z
    //   542: ifeq +190 -> 732
    //   545: aload_0
    //   546: iconst_0
    //   547: putfield 68	btg:h	Z
    //   550: aload_0
    //   551: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   554: ifnull +15 -> 569
    //   557: aload_0
    //   558: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   561: invokevirtual 384	java/net/HttpURLConnection:disconnect	()V
    //   564: aload_0
    //   565: aconst_null
    //   566: putfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   569: aload_0
    //   570: getfield 66	btg:g	Z
    //   573: ifeq +68 -> 641
    //   576: aload_0
    //   577: aload_0
    //   578: getfield 80	btg:a	Ljava/lang/String;
    //   581: getstatic 503	QQPIM/ConnectType:CT_GPRS_NET	LQQPIM/ConnectType;
    //   584: invokespecial 110	btg:a	(Ljava/lang/String;LQQPIM/ConnectType;)V
    //   587: aload_0
    //   588: getfield 116	btg:c	Ljava/net/HttpURLConnection;
    //   591: ifnull +141 -> 732
    //   594: aload_0
    //   595: aload_0
    //   596: getfield 55	btg:b	Ljava/lang/String;
    //   599: invokevirtual 112	btg:b	(Ljava/lang/String;)V
    //   602: ldc_w 386
    //   605: aload_0
    //   606: getfield 55	btg:b	Ljava/lang/String;
    //   609: invokevirtual 390	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   612: ifeq +18 -> 630
    //   615: aload_0
    //   616: getfield 114	btg:d	[B
    //   619: ifnull +11 -> 630
    //   622: aload_0
    //   623: aload_0
    //   624: getfield 114	btg:d	[B
    //   627: putfield 114	btg:d	[B
    //   630: aload_0
    //   631: aload_0
    //   632: getfield 64	btg:f	Ljava/util/Hashtable;
    //   635: invokespecial 392	btg:a	(Ljava/util/Hashtable;)V
    //   638: goto -638 -> 0
    //   641: getstatic 241	QQPIM/ConnectType:CT_WIFI	LQQPIM/ConnectType;
    //   644: invokestatic 89	com/tencent/tmsecure/utils/NetworkUtil:getNetworkType	()LQQPIM/ConnectType;
    //   647: if_acmpne -60 -> 587
    //   650: invokestatic 217	com/tencent/tmsecure/utils/NetworkUtil:getProxyHost	()Ljava/lang/String;
    //   653: astore 4
    //   655: aload 4
    //   657: ifnull +31 -> 688
    //   660: aload 4
    //   662: invokevirtual 179	java/lang/String:length	()I
    //   665: ifle +23 -> 688
    //   668: invokestatic 220	com/tencent/tmsecure/utils/NetworkUtil:getProxyPort	()I
    //   671: ifle +17 -> 688
    //   674: aload_0
    //   675: aload_0
    //   676: getfield 80	btg:a	Ljava/lang/String;
    //   679: getstatic 206	QQPIM/ConnectType:CT_GPRS_WAP	LQQPIM/ConnectType;
    //   682: invokespecial 110	btg:a	(Ljava/lang/String;LQQPIM/ConnectType;)V
    //   685: goto -98 -> 587
    //   688: new 83	com/tencent/tmsecure/exception/NetWorkException
    //   691: dup
    //   692: iload_2
    //   693: bipush 62
    //   695: isub
    //   696: new 290	java/lang/StringBuilder
    //   699: dup
    //   700: ldc_w 505
    //   703: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   706: aload_1
    //   707: invokevirtual 506	java/net/UnknownHostException:getMessage	()Ljava/lang/String;
    //   710: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   713: ldc_w 508
    //   716: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   719: invokestatic 89	com/tencent/tmsecure/utils/NetworkUtil:getNetworkType	()LQQPIM/ConnectType;
    //   722: invokevirtual 511	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   725: invokevirtual 303	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   728: invokespecial 107	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   731: athrow
    //   732: new 83	com/tencent/tmsecure/exception/NetWorkException
    //   735: dup
    //   736: iload_2
    //   737: bipush 62
    //   739: isub
    //   740: new 290	java/lang/StringBuilder
    //   743: dup
    //   744: ldc_w 505
    //   747: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   750: aload_1
    //   751: invokevirtual 506	java/net/UnknownHostException:getMessage	()Ljava/lang/String;
    //   754: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   757: ldc_w 508
    //   760: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   763: invokestatic 89	com/tencent/tmsecure/utils/NetworkUtil:getNetworkType	()LQQPIM/ConnectType;
    //   766: invokevirtual 511	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   769: invokevirtual 303	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   772: invokespecial 107	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   775: athrow
    //   776: astore 21
    //   778: iconst_0
    //   779: istore_2
    //   780: aload_0
    //   781: getfield 74	btg:k	B
    //   784: istore 22
    //   786: aload_0
    //   787: iload 22
    //   789: iconst_1
    //   790: iadd
    //   791: i2b
    //   792: putfield 74	btg:k	B
    //   795: iload 22
    //   797: iconst_2
    //   798: if_icmpge +12 -> 810
    //   801: aload_0
    //   802: invokespecial 455	btg:k	()I
    //   805: istore 6
    //   807: goto +714 -> 1521
    //   810: new 83	com/tencent/tmsecure/exception/NetWorkException
    //   813: dup
    //   814: iload_2
    //   815: bipush 60
    //   817: isub
    //   818: new 290	java/lang/StringBuilder
    //   821: dup
    //   822: ldc_w 513
    //   825: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   828: aload 21
    //   830: invokevirtual 514	java/lang/IllegalAccessError:getMessage	()Ljava/lang/String;
    //   833: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   836: invokevirtual 303	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   839: invokespecial 107	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   842: athrow
    //   843: astore 19
    //   845: iconst_0
    //   846: istore_2
    //   847: aload_0
    //   848: getfield 74	btg:k	B
    //   851: istore 20
    //   853: aload_0
    //   854: iload 20
    //   856: iconst_1
    //   857: iadd
    //   858: i2b
    //   859: putfield 74	btg:k	B
    //   862: iload 20
    //   864: iconst_2
    //   865: if_icmpge +12 -> 877
    //   868: aload_0
    //   869: invokespecial 455	btg:k	()I
    //   872: istore 6
    //   874: goto +647 -> 1521
    //   877: new 83	com/tencent/tmsecure/exception/NetWorkException
    //   880: dup
    //   881: iload_2
    //   882: bipush 61
    //   884: isub
    //   885: new 290	java/lang/StringBuilder
    //   888: dup
    //   889: ldc_w 516
    //   892: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   895: aload 19
    //   897: invokevirtual 517	java/lang/IllegalStateException:getMessage	()Ljava/lang/String;
    //   900: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   903: invokevirtual 303	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   906: invokespecial 107	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   909: athrow
    //   910: astore 17
    //   912: iconst_0
    //   913: istore_2
    //   914: aload_0
    //   915: getfield 74	btg:k	B
    //   918: istore 18
    //   920: aload_0
    //   921: iload 18
    //   923: iconst_1
    //   924: iadd
    //   925: i2b
    //   926: putfield 74	btg:k	B
    //   929: iload 18
    //   931: iconst_2
    //   932: if_icmpge +12 -> 944
    //   935: aload_0
    //   936: invokespecial 455	btg:k	()I
    //   939: istore 6
    //   941: goto +580 -> 1521
    //   944: new 83	com/tencent/tmsecure/exception/NetWorkException
    //   947: dup
    //   948: iload_2
    //   949: bipush 51
    //   951: isub
    //   952: new 290	java/lang/StringBuilder
    //   955: dup
    //   956: ldc_w 519
    //   959: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   962: aload 17
    //   964: invokevirtual 520	java/net/ProtocolException:getMessage	()Ljava/lang/String;
    //   967: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   970: invokevirtual 303	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   973: invokespecial 107	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   976: athrow
    //   977: astore 15
    //   979: iconst_0
    //   980: istore_2
    //   981: aload_0
    //   982: getfield 74	btg:k	B
    //   985: istore 16
    //   987: aload_0
    //   988: iload 16
    //   990: iconst_1
    //   991: iadd
    //   992: i2b
    //   993: putfield 74	btg:k	B
    //   996: iload 16
    //   998: iconst_2
    //   999: if_icmpge +12 -> 1011
    //   1002: aload_0
    //   1003: invokespecial 455	btg:k	()I
    //   1006: istore 6
    //   1008: goto +513 -> 1521
    //   1011: new 83	com/tencent/tmsecure/exception/NetWorkException
    //   1014: dup
    //   1015: iload_2
    //   1016: bipush 51
    //   1018: isub
    //   1019: new 290	java/lang/StringBuilder
    //   1022: dup
    //   1023: ldc_w 522
    //   1026: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1029: aload 15
    //   1031: invokevirtual 523	org/apache/http/client/ClientProtocolException:getMessage	()Ljava/lang/String;
    //   1034: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1037: invokevirtual 303	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1040: invokespecial 107	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   1043: athrow
    //   1044: astore 13
    //   1046: iconst_0
    //   1047: istore_2
    //   1048: aload_0
    //   1049: getfield 74	btg:k	B
    //   1052: istore 14
    //   1054: aload_0
    //   1055: iload 14
    //   1057: iconst_1
    //   1058: iadd
    //   1059: i2b
    //   1060: putfield 74	btg:k	B
    //   1063: iload 14
    //   1065: iconst_2
    //   1066: if_icmpge +12 -> 1078
    //   1069: aload_0
    //   1070: invokespecial 455	btg:k	()I
    //   1073: istore 6
    //   1075: goto +446 -> 1521
    //   1078: new 83	com/tencent/tmsecure/exception/NetWorkException
    //   1081: dup
    //   1082: iload_2
    //   1083: bipush 54
    //   1085: isub
    //   1086: new 290	java/lang/StringBuilder
    //   1089: dup
    //   1090: ldc_w 525
    //   1093: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1096: aload 13
    //   1098: invokevirtual 526	java/net/SocketException:getMessage	()Ljava/lang/String;
    //   1101: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1104: invokevirtual 303	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1107: invokespecial 107	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   1110: athrow
    //   1111: astore 11
    //   1113: iconst_0
    //   1114: istore_2
    //   1115: aload_0
    //   1116: getfield 74	btg:k	B
    //   1119: istore 12
    //   1121: aload_0
    //   1122: iload 12
    //   1124: iconst_1
    //   1125: iadd
    //   1126: i2b
    //   1127: putfield 74	btg:k	B
    //   1130: iload 12
    //   1132: iconst_2
    //   1133: if_icmpge +26 -> 1159
    //   1136: aload_0
    //   1137: ldc_w 527
    //   1140: putfield 76	btg:l	I
    //   1143: aload_0
    //   1144: ldc_w 527
    //   1147: putfield 78	btg:m	I
    //   1150: aload_0
    //   1151: invokespecial 455	btg:k	()I
    //   1154: istore 6
    //   1156: goto +365 -> 1521
    //   1159: new 83	com/tencent/tmsecure/exception/NetWorkException
    //   1162: dup
    //   1163: iload_2
    //   1164: bipush 55
    //   1166: isub
    //   1167: new 290	java/lang/StringBuilder
    //   1170: dup
    //   1171: ldc_w 529
    //   1174: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1177: aload 11
    //   1179: invokevirtual 530	java/net/SocketTimeoutException:getMessage	()Ljava/lang/String;
    //   1182: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1185: invokevirtual 303	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1188: invokespecial 107	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   1191: athrow
    //   1192: astore 9
    //   1194: iconst_0
    //   1195: istore_2
    //   1196: aload_0
    //   1197: getfield 74	btg:k	B
    //   1200: istore 10
    //   1202: aload_0
    //   1203: iload 10
    //   1205: iconst_1
    //   1206: iadd
    //   1207: i2b
    //   1208: putfield 74	btg:k	B
    //   1211: iload 10
    //   1213: iconst_2
    //   1214: if_icmpge +12 -> 1226
    //   1217: aload_0
    //   1218: invokespecial 455	btg:k	()I
    //   1221: istore 6
    //   1223: goto +298 -> 1521
    //   1226: new 83	com/tencent/tmsecure/exception/NetWorkException
    //   1229: dup
    //   1230: iload_2
    //   1231: bipush 56
    //   1233: isub
    //   1234: new 290	java/lang/StringBuilder
    //   1237: dup
    //   1238: ldc_w 532
    //   1241: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1244: aload 9
    //   1246: invokevirtual 533	com/tencent/tmsecure/exception/NetWorkException:getMessage	()Ljava/lang/String;
    //   1249: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1252: invokevirtual 303	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1255: invokespecial 107	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   1258: athrow
    //   1259: astore 7
    //   1261: iconst_0
    //   1262: istore_2
    //   1263: aload_0
    //   1264: getfield 74	btg:k	B
    //   1267: istore 8
    //   1269: aload_0
    //   1270: iload 8
    //   1272: iconst_1
    //   1273: iadd
    //   1274: i2b
    //   1275: putfield 74	btg:k	B
    //   1278: iload 8
    //   1280: iconst_2
    //   1281: if_icmpge +12 -> 1293
    //   1284: aload_0
    //   1285: invokespecial 455	btg:k	()I
    //   1288: istore 6
    //   1290: goto +231 -> 1521
    //   1293: new 83	com/tencent/tmsecure/exception/NetWorkException
    //   1296: dup
    //   1297: iload_2
    //   1298: new 290	java/lang/StringBuilder
    //   1301: dup
    //   1302: ldc_w 535
    //   1305: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1308: aload 7
    //   1310: invokevirtual 539	java/lang/Object:getClass	()Ljava/lang/Class;
    //   1313: invokevirtual 544	java/lang/Class:getName	()Ljava/lang/String;
    //   1316: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1319: ldc_w 546
    //   1322: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1325: aload 7
    //   1327: invokevirtual 363	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1330: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1333: invokevirtual 303	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1336: invokespecial 107	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   1339: athrow
    //   1340: aload_0
    //   1341: getfield 57	btg:e	I
    //   1344: sipush 206
    //   1347: if_icmpeq +119 -> 1466
    //   1350: aload_0
    //   1351: getfield 57	btg:e	I
    //   1354: sipush 200
    //   1357: if_icmpeq +109 -> 1466
    //   1360: aload_0
    //   1361: getfield 74	btg:k	B
    //   1364: istore 25
    //   1366: aload_0
    //   1367: iload 25
    //   1369: iconst_1
    //   1370: iadd
    //   1371: i2b
    //   1372: putfield 74	btg:k	B
    //   1375: iload 25
    //   1377: iconst_2
    //   1378: if_icmpge +42 -> 1420
    //   1381: iload_2
    //   1382: iconst_m1
    //   1383: if_icmpne +28 -> 1411
    //   1386: ldc_w 548
    //   1389: ldc_w 427
    //   1392: invokestatic 551	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   1395: invokevirtual 258	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1398: ifeq +13 -> 1411
    //   1401: ldc_w 427
    //   1404: ldc_w 429
    //   1407: invokestatic 433	java/lang/System:setProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1410: pop
    //   1411: aload_0
    //   1412: invokespecial 455	btg:k	()I
    //   1415: istore 6
    //   1417: goto +104 -> 1521
    //   1420: new 83	com/tencent/tmsecure/exception/NetWorkException
    //   1423: dup
    //   1424: iload_2
    //   1425: aload_0
    //   1426: getfield 57	btg:e	I
    //   1429: iadd
    //   1430: new 290	java/lang/StringBuilder
    //   1433: dup
    //   1434: ldc_w 553
    //   1437: invokespecial 293	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1440: aload_0
    //   1441: getfield 57	btg:e	I
    //   1444: invokevirtual 480	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1447: ldc_w 555
    //   1450: invokevirtual 300	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1453: invokestatic 425	com/tencent/tmsecure/utils/SDKUtil:getSDKVersion	()I
    //   1456: invokevirtual 480	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1459: invokevirtual 303	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1462: invokespecial 107	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   1465: athrow
    //   1466: aload_0
    //   1467: getfield 57	btg:e	I
    //   1470: istore 6
    //   1472: goto +49 -> 1521
    //   1475: astore 7
    //   1477: goto -214 -> 1263
    //   1480: astore 9
    //   1482: goto -286 -> 1196
    //   1485: astore 11
    //   1487: goto -372 -> 1115
    //   1490: astore 13
    //   1492: goto -444 -> 1048
    //   1495: astore 15
    //   1497: goto -516 -> 981
    //   1500: astore 17
    //   1502: goto -588 -> 914
    //   1505: astore 19
    //   1507: goto -660 -> 847
    //   1510: astore 21
    //   1512: goto -732 -> 780
    //   1515: astore_1
    //   1516: iconst_0
    //   1517: istore_2
    //   1518: goto -1088 -> 430
    //   1521: iload 6
    //   1523: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   190	426	429	java/net/UnknownHostException
    //   462	531	429	java/net/UnknownHostException
    //   110	181	776	java/lang/IllegalAccessError
    //   110	181	843	java/lang/IllegalStateException
    //   110	181	910	java/net/ProtocolException
    //   110	181	977	org/apache/http/client/ClientProtocolException
    //   110	181	1044	java/net/SocketException
    //   110	181	1111	java/net/SocketTimeoutException
    //   110	181	1192	com/tencent/tmsecure/exception/NetWorkException
    //   110	181	1259	java/lang/Exception
    //   190	426	1475	java/lang/Exception
    //   462	531	1475	java/lang/Exception
    //   190	426	1480	com/tencent/tmsecure/exception/NetWorkException
    //   462	531	1480	com/tencent/tmsecure/exception/NetWorkException
    //   190	426	1485	java/net/SocketTimeoutException
    //   462	531	1485	java/net/SocketTimeoutException
    //   190	426	1490	java/net/SocketException
    //   462	531	1490	java/net/SocketException
    //   190	426	1495	org/apache/http/client/ClientProtocolException
    //   462	531	1495	org/apache/http/client/ClientProtocolException
    //   190	426	1500	java/net/ProtocolException
    //   462	531	1500	java/net/ProtocolException
    //   190	426	1505	java/lang/IllegalStateException
    //   462	531	1505	java/lang/IllegalStateException
    //   190	426	1510	java/lang/IllegalAccessError
    //   462	531	1510	java/lang/IllegalAccessError
    //   110	181	1515	java/net/UnknownHostException
  }

  public final int a(AtomicReference<byte[]> paramAtomicReference)
    throws NetWorkException
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
      catch (NetWorkException localNetWorkException)
      {
        throw new NetWorkException(-4000 + localNetWorkException.getErrCode(), "get response exception : " + localNetWorkException.getMessage());
      }
      catch (Exception localException)
      {
        throw new NetWorkException(-4002, "get response exception : " + localException.getMessage());
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
    throws NetWorkException
  {
    try
    {
      InputStream localInputStream = this.c.getInputStream();
      return localInputStream;
    }
    catch (Exception localException)
    {
      throw new NetWorkException(-56, "get inputStream: " + localException.getMessage());
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
    throws NetWorkException
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
      throw new NetWorkException(-56, "get breakpoint total size: " + localException.getMessage());
    }
  }

  public final long f()
    throws NetWorkException
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
      throw new NetWorkException(-56, "get content length: " + localException.getMessage());
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

  final class a
    implements WifiUtil.IWifiApproveCheckCallBack
  {
    public final void onWifiApproveCheckFinished(boolean paramBoolean1, boolean paramBoolean2)
    {
      if ((btg.i() != null) && (btg.i().equals(WifiUtil.getSSID())))
      {
        if (paramBoolean2)
          break label34;
        btg.a(paramBoolean1);
      }
      while (true)
      {
        btg.b(paramBoolean2);
        btg.j();
        return;
        label34: btg.a(true);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     btg
 * JD-Core Version:    0.6.2
 */