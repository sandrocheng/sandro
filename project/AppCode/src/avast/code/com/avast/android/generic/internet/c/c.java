package com.avast.android.generic.internet.c;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import com.avast.android.generic.ae;
import com.avast.android.generic.c.b;
import com.avast.android.generic.util.al;
import com.avast.android.generic.util.aw;
import com.avast.android.generic.util.e;
import com.avast.android.generic.util.l;
import com.avast.android.generic.y;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.apache.http.client.CookieStore;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.BasicCookieStore;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

@TargetApi(8)
public class c
{
  private String A;
  private String B;
  private final byte[] a = { -69, -44, 61, -101, -93, 79, -116, 29, -104, -56, 85, 64, 98, -100, -4, -5 };
  private final String b = "https://pair.ff.avast.com";
  private final String c = "/F/";
  private final String d = "/unpair";
  private final String e = "http://ai.ff.avast.com";
  private final String f = "/F/";
  private final byte[] g = { 0, 4 };
  private final byte[] h = { 0, -1 };
  private final int i = 1;
  private final int j = 2;
  private final int k = 1;
  private final int l = 2;
  private final int m = 3;
  private final int n = 4;
  private final int o = 5;
  private final int p = 6;
  private android.b.a.a q;
  private HttpContext r;
  private aw s;
  private String t;
  private CookieStore u;
  private HttpParams v;
  private String w;
  private ae x;
  private boolean y;
  private String z;

  public c(Context paramContext, Bundle paramBundle)
  {
    a(paramContext);
    if (this.q == null)
      throw new InstantiationException("Secure SSL client couldn't be created");
    this.u = new BasicCookieStore();
    this.r = new BasicHttpContext();
    this.r.setAttribute("http.cookie-store", this.u);
    this.v = this.q.getParams();
    this.v.setBooleanParameter("http.protocol.handle-redirects", true);
    this.x = ((ae)com.avast.android.generic.ad.a(paramContext, ae.class));
    this.w = this.x.r();
    if (l.a(paramContext))
      this.w = "00000000-0000-0000-0000-000000000000";
    this.y = al.a(paramContext);
    this.s = aw.a(paramContext, y.c);
    if (this.s == null)
      throw new InstantiationException("Can not read comm framework version");
    this.t = com.avast.android.generic.f.b.a.f(paramContext);
    if (TextUtils.isEmpty(this.t))
      throw new InstantiationException("Can not read device ID");
    a(paramBundle);
  }

  private String a(byte[] paramArrayOfByte, String paramString)
  {
    return new String(b.a(e.a(paramArrayOfByte, paramString.replace("-", "")))).replace('+', '-').replace('/', '_');
  }

  private void a(Context paramContext)
  {
    try
    {
      this.q = android.b.a.a.a("avast! Mobile Security");
      SchemeRegistry localSchemeRegistry = this.q.getConnectionManager().getSchemeRegistry();
      if (Build.VERSION.SDK_INT < 8)
        localSchemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
      else
        f.a(paramContext, localSchemeRegistry);
    }
    catch (Exception localException)
    {
      a();
    }
  }

  private void a(Bundle paramBundle)
  {
    this.z = "https://pair.ff.avast.com/F/";
    this.A = "https://pair.ff.avast.com/unpair";
    this.B = "http://ai.ff.avast.com/F/";
    if (paramBundle != null)
    {
      if (paramBundle.containsKey("my_avast_pairing_server_address"))
        this.z = paramBundle.getString("my_avast_pairing_server_address");
      if (paramBundle.containsKey("my_avast_unpairing_server_address"))
        this.A = paramBundle.getString("my_avast_unpairing_server_address");
      if (paramBundle.containsKey("my_avast_status_server_address"))
        this.B = paramBundle.getString("my_avast_status_server_address");
    }
  }

  // ERROR //
  private boolean a(String paramString, byte[] paramArrayOfByte, com.avast.android.generic.internet.c.a.ad paramad)
  {
    // Byte code:
    //   0: ldc_w 322
    //   3: ldc_w 324
    //   6: invokestatic 329	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   9: pop
    //   10: ldc_w 331
    //   13: astore 5
    //   15: aload_2
    //   16: ifnull +10 -> 26
    //   19: aload_2
    //   20: arraylength
    //   21: bipush 16
    //   23: if_icmpge +23 -> 46
    //   26: ldc_w 322
    //   29: ldc_w 333
    //   32: invokestatic 329	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   35: pop
    //   36: ldc_w 335
    //   39: astore 5
    //   41: aload_0
    //   42: getfield 68	com/avast/android/generic/internet/c/c:a	[B
    //   45: astore_2
    //   46: aconst_null
    //   47: astore 7
    //   49: aload_0
    //   50: aload_0
    //   51: getfield 93	com/avast/android/generic/internet/c/c:h	[B
    //   54: aload_0
    //   55: getfield 169	com/avast/android/generic/internet/c/c:w	Ljava/lang/String;
    //   58: invokespecial 337	com/avast/android/generic/internet/c/c:a	([BLjava/lang/String;)Ljava/lang/String;
    //   61: astore 14
    //   63: new 339	org/apache/http/client/methods/HttpPost
    //   66: dup
    //   67: new 341	java/lang/StringBuilder
    //   70: dup
    //   71: invokespecial 342	java/lang/StringBuilder:<init>	()V
    //   74: aload_0
    //   75: getfield 299	com/avast/android/generic/internet/c/c:B	Ljava/lang/String;
    //   78: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: aload 14
    //   83: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: invokespecial 350	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   92: astore 15
    //   94: ldc_w 322
    //   97: new 341	java/lang/StringBuilder
    //   100: dup
    //   101: invokespecial 342	java/lang/StringBuilder:<init>	()V
    //   104: ldc_w 352
    //   107: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: aload_0
    //   111: getfield 169	com/avast/android/generic/internet/c/c:w	Ljava/lang/String;
    //   114: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: ldc_w 354
    //   120: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: aload_1
    //   124: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: invokestatic 329	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   133: pop
    //   134: ldc_w 322
    //   137: new 341	java/lang/StringBuilder
    //   140: dup
    //   141: invokespecial 342	java/lang/StringBuilder:<init>	()V
    //   144: ldc_w 356
    //   147: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: aload 15
    //   152: invokevirtual 360	org/apache/http/client/methods/HttpPost:getURI	()Ljava/net/URI;
    //   155: invokevirtual 363	java/net/URI:toString	()Ljava/lang/String;
    //   158: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   164: invokestatic 329	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   167: pop
    //   168: aload 15
    //   170: new 365	org/apache/http/entity/ByteArrayEntity
    //   173: dup
    //   174: aload_0
    //   175: aload_2
    //   176: aload_3
    //   177: invokevirtual 371	com/avast/android/generic/internet/c/a/ad:bo	()[B
    //   180: invokespecial 374	com/avast/android/generic/internet/c/c:a	([B[B)[B
    //   183: invokespecial 377	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   186: invokevirtual 381	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   189: aload 15
    //   191: ldc_w 383
    //   194: aload 5
    //   196: invokevirtual 387	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   199: aload_0
    //   200: getfield 114	com/avast/android/generic/internet/c/c:q	Landroid/b/a/a;
    //   203: aload 15
    //   205: aload_0
    //   206: getfield 131	com/avast/android/generic/internet/c/c:r	Lorg/apache/http/protocol/HttpContext;
    //   209: invokevirtual 391	android/b/a/a:execute	(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    //   212: astore 18
    //   214: aconst_null
    //   215: astore 7
    //   217: aload 18
    //   219: ifnull +42 -> 261
    //   222: aload 18
    //   224: invokeinterface 397 1 0
    //   229: astore 21
    //   231: aconst_null
    //   232: astore 7
    //   234: aload 21
    //   236: ifnull +25 -> 261
    //   239: aload 18
    //   241: invokeinterface 397 1 0
    //   246: invokeinterface 403 1 0
    //   251: istore 22
    //   253: iload 22
    //   255: sipush 200
    //   258: if_icmpeq +19 -> 277
    //   261: iconst_0
    //   262: ifeq +9 -> 271
    //   265: aconst_null
    //   266: invokeinterface 408 1 0
    //   271: iconst_0
    //   272: istore 19
    //   274: iload 19
    //   276: ireturn
    //   277: aload 18
    //   279: invokeinterface 412 1 0
    //   284: astore 23
    //   286: aload 23
    //   288: astore 7
    //   290: ldc_w 414
    //   293: aload 7
    //   295: invokestatic 419	org/apache/http/util/EntityUtils:toString	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   298: invokevirtual 423	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   301: istore 24
    //   303: iload 24
    //   305: ifeq +26 -> 331
    //   308: iconst_1
    //   309: istore 19
    //   311: aload 7
    //   313: ifnull -39 -> 274
    //   316: aload 7
    //   318: invokeinterface 408 1 0
    //   323: goto -49 -> 274
    //   326: astore 26
    //   328: goto -54 -> 274
    //   331: aload 7
    //   333: ifnull +10 -> 343
    //   336: aload 7
    //   338: invokeinterface 408 1 0
    //   343: iconst_0
    //   344: istore 19
    //   346: goto -72 -> 274
    //   349: astore 12
    //   351: aconst_null
    //   352: astore 13
    //   354: new 425	com/avast/android/generic/internet/c/g
    //   357: dup
    //   358: aload 12
    //   360: invokespecial 428	com/avast/android/generic/internet/c/g:<init>	(Ljava/lang/Throwable;)V
    //   363: athrow
    //   364: astore 9
    //   366: aload 13
    //   368: astore 7
    //   370: aload 7
    //   372: ifnull +10 -> 382
    //   375: aload 7
    //   377: invokeinterface 408 1 0
    //   382: aload 9
    //   384: athrow
    //   385: astore 11
    //   387: new 425	com/avast/android/generic/internet/c/g
    //   390: dup
    //   391: aload 11
    //   393: invokespecial 428	com/avast/android/generic/internet/c/g:<init>	(Ljava/lang/Throwable;)V
    //   396: athrow
    //   397: astore 8
    //   399: new 425	com/avast/android/generic/internet/c/g
    //   402: dup
    //   403: aload 8
    //   405: invokespecial 428	com/avast/android/generic/internet/c/g:<init>	(Ljava/lang/Throwable;)V
    //   408: athrow
    //   409: astore 20
    //   411: goto -140 -> 271
    //   414: astore 25
    //   416: goto -73 -> 343
    //   419: astore 10
    //   421: goto -39 -> 382
    //   424: astore 12
    //   426: aload 7
    //   428: astore 13
    //   430: goto -76 -> 354
    //   433: astore 9
    //   435: goto -65 -> 370
    //
    // Exception table:
    //   from	to	target	type
    //   316	323	326	java/io/IOException
    //   49	253	349	org/apache/http/client/ClientProtocolException
    //   277	286	349	org/apache/http/client/ClientProtocolException
    //   354	364	364	finally
    //   49	253	385	java/io/IOException
    //   277	286	385	java/io/IOException
    //   290	303	385	java/io/IOException
    //   49	253	397	java/lang/Exception
    //   277	286	397	java/lang/Exception
    //   290	303	397	java/lang/Exception
    //   265	271	409	java/io/IOException
    //   336	343	414	java/io/IOException
    //   375	382	419	java/io/IOException
    //   290	303	424	org/apache/http/client/ClientProtocolException
    //   49	253	433	finally
    //   277	286	433	finally
    //   290	303	433	finally
    //   387	409	433	finally
  }

  private byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[16];
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 0, 16);
    Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
    localCipher.init(1, new SecretKeySpec(arrayOfByte, "AES/CBC/PKCS5Padding"), new IvParameterSpec(new byte[] { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }));
    return localCipher.doFinal(paramArrayOfByte2);
  }

  // ERROR //
  public e a(String paramString1, String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, String paramString4)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: getfield 90	com/avast/android/generic/internet/c/c:g	[B
    //   5: aload_0
    //   6: getfield 169	com/avast/android/generic/internet/c/c:w	Ljava/lang/String;
    //   9: invokespecial 337	com/avast/android/generic/internet/c/c:a	([BLjava/lang/String;)Ljava/lang/String;
    //   12: astore 17
    //   14: new 339	org/apache/http/client/methods/HttpPost
    //   17: dup
    //   18: new 341	java/lang/StringBuilder
    //   21: dup
    //   22: invokespecial 342	java/lang/StringBuilder:<init>	()V
    //   25: aload_0
    //   26: getfield 291	com/avast/android/generic/internet/c/c:z	Ljava/lang/String;
    //   29: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: aload 17
    //   34: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: invokespecial 350	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   43: astore 18
    //   45: ldc_w 322
    //   48: new 341	java/lang/StringBuilder
    //   51: dup
    //   52: invokespecial 342	java/lang/StringBuilder:<init>	()V
    //   55: ldc_w 463
    //   58: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: aload_0
    //   62: getfield 169	com/avast/android/generic/internet/c/c:w	Ljava/lang/String;
    //   65: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: invokestatic 329	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   74: pop
    //   75: ldc_w 322
    //   78: new 341	java/lang/StringBuilder
    //   81: dup
    //   82: invokespecial 342	java/lang/StringBuilder:<init>	()V
    //   85: ldc_w 356
    //   88: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: aload 18
    //   93: invokevirtual 360	org/apache/http/client/methods/HttpPost:getURI	()Ljava/net/URI;
    //   96: invokevirtual 363	java/net/URI:toString	()Ljava/lang/String;
    //   99: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   105: invokestatic 329	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   108: pop
    //   109: invokestatic 468	com/avast/android/generic/internet/c/a/c:x	()Lcom/avast/android/generic/internet/c/a/d;
    //   112: astore 21
    //   114: aload 21
    //   116: aload_1
    //   117: invokevirtual 473	com/avast/android/generic/internet/c/a/d:a	(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;
    //   120: pop
    //   121: aload 21
    //   123: aload_2
    //   124: invokevirtual 475	com/avast/android/generic/internet/c/a/d:b	(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;
    //   127: pop
    //   128: iload 7
    //   130: ifeq +226 -> 356
    //   133: iconst_1
    //   134: istore 24
    //   136: aload 21
    //   138: iload 24
    //   140: invokevirtual 478	com/avast/android/generic/internet/c/a/d:a	(I)Lcom/avast/android/generic/internet/c/a/d;
    //   143: pop
    //   144: aload 21
    //   146: getstatic 483	android/os/Build:MODEL	Ljava/lang/String;
    //   149: invokevirtual 485	com/avast/android/generic/internet/c/a/d:d	(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;
    //   152: pop
    //   153: aload 21
    //   155: ldc_w 487
    //   158: invokevirtual 489	com/avast/android/generic/internet/c/a/d:f	(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;
    //   161: pop
    //   162: aload_0
    //   163: getfield 181	com/avast/android/generic/internet/c/c:y	Z
    //   166: ifeq +196 -> 362
    //   169: ldc_w 491
    //   172: astore 28
    //   174: aload 21
    //   176: aload 28
    //   178: invokevirtual 493	com/avast/android/generic/internet/c/a/d:e	(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;
    //   181: pop
    //   182: invokestatic 498	com/avast/android/generic/internet/c/a/q:p	()Lcom/avast/android/generic/internet/c/a/r;
    //   185: astore 30
    //   187: aload 30
    //   189: aload_0
    //   190: getfield 192	com/avast/android/generic/internet/c/c:s	Lcom/avast/android/generic/util/aw;
    //   193: invokevirtual 500	com/avast/android/generic/util/aw:e	()Ljava/lang/String;
    //   196: invokevirtual 505	com/avast/android/generic/internet/c/a/r:c	(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;
    //   199: pop
    //   200: aload 30
    //   202: aload_0
    //   203: getfield 201	com/avast/android/generic/internet/c/c:t	Ljava/lang/String;
    //   206: invokevirtual 507	com/avast/android/generic/internet/c/a/r:b	(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;
    //   209: pop
    //   210: aload_3
    //   211: ifnull +17 -> 228
    //   214: aload_3
    //   215: invokestatic 207	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   218: ifne +10 -> 228
    //   221: aload 30
    //   223: aload_3
    //   224: invokevirtual 509	com/avast/android/generic/internet/c/a/r:a	(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;
    //   227: pop
    //   228: aload 30
    //   230: iload 4
    //   232: invokevirtual 512	com/avast/android/generic/internet/c/a/r:a	(Z)Lcom/avast/android/generic/internet/c/a/r;
    //   235: pop
    //   236: aload 30
    //   238: iload 6
    //   240: invokevirtual 514	com/avast/android/generic/internet/c/a/r:c	(Z)Lcom/avast/android/generic/internet/c/a/r;
    //   243: pop
    //   244: aload 30
    //   246: iload 5
    //   248: invokevirtual 516	com/avast/android/generic/internet/c/a/r:b	(Z)Lcom/avast/android/generic/internet/c/a/r;
    //   251: pop
    //   252: aload 30
    //   254: aload 8
    //   256: invokevirtual 518	com/avast/android/generic/internet/c/a/r:d	(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;
    //   259: pop
    //   260: aload 21
    //   262: aload 30
    //   264: invokevirtual 521	com/avast/android/generic/internet/c/a/d:a	(Lcom/avast/android/generic/internet/c/a/r;)Lcom/avast/android/generic/internet/c/a/d;
    //   267: pop
    //   268: aload 18
    //   270: new 365	org/apache/http/entity/ByteArrayEntity
    //   273: dup
    //   274: aload 21
    //   276: invokevirtual 524	com/avast/android/generic/internet/c/a/d:c	()Lcom/avast/android/generic/internet/c/a/c;
    //   279: invokevirtual 525	com/avast/android/generic/internet/c/a/c:bo	()[B
    //   282: invokespecial 377	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   285: invokevirtual 381	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   288: aload_0
    //   289: getfield 114	com/avast/android/generic/internet/c/c:q	Landroid/b/a/a;
    //   292: aload 18
    //   294: aload_0
    //   295: getfield 131	com/avast/android/generic/internet/c/c:r	Lorg/apache/http/protocol/HttpContext;
    //   298: invokevirtual 391	android/b/a/a:execute	(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    //   301: astore 38
    //   303: aload 38
    //   305: ifnull +35 -> 340
    //   308: aload 38
    //   310: invokeinterface 397 1 0
    //   315: ifnull +25 -> 340
    //   318: aload 38
    //   320: invokeinterface 397 1 0
    //   325: invokeinterface 403 1 0
    //   330: istore 41
    //   332: iload 41
    //   334: sipush 200
    //   337: if_icmpeq +33 -> 370
    //   340: aconst_null
    //   341: astore 39
    //   343: iconst_0
    //   344: ifeq +9 -> 353
    //   347: aconst_null
    //   348: invokeinterface 408 1 0
    //   353: aload 39
    //   355: areturn
    //   356: iconst_2
    //   357: istore 24
    //   359: goto -223 -> 136
    //   362: ldc_w 527
    //   365: astore 28
    //   367: goto -193 -> 174
    //   370: aload 38
    //   372: invokeinterface 412 1 0
    //   377: astore 42
    //   379: aload 42
    //   381: astore 12
    //   383: aload 12
    //   385: ifnonnull +32 -> 417
    //   388: aconst_null
    //   389: astore 39
    //   391: aload 12
    //   393: ifnull -40 -> 353
    //   396: aload 12
    //   398: invokeinterface 408 1 0
    //   403: aconst_null
    //   404: astore 39
    //   406: goto -53 -> 353
    //   409: astore 43
    //   411: aconst_null
    //   412: astore 39
    //   414: goto -61 -> 353
    //   417: aload 12
    //   419: invokeinterface 531 1 0
    //   424: invokestatic 536	com/avast/android/generic/internet/c/a/f:a	(Ljava/io/InputStream;)Lcom/avast/android/generic/internet/c/a/f;
    //   427: astore 44
    //   429: aload 44
    //   431: invokevirtual 539	com/avast/android/generic/internet/c/a/f:h	()Z
    //   434: ifeq +126 -> 560
    //   437: aload 44
    //   439: invokevirtual 541	com/avast/android/generic/internet/c/a/f:i	()Ljava/lang/String;
    //   442: astore 45
    //   444: aload 44
    //   446: invokevirtual 543	com/avast/android/generic/internet/c/a/f:f	()Z
    //   449: ifeq +290 -> 739
    //   452: aload 44
    //   454: invokevirtual 545	com/avast/android/generic/internet/c/a/f:g	()I
    //   457: tableswitch	default:+39 -> 496, 1:+110->567, 2:+131->588, 3:+157->614, 4:+180->637, 5:+193->650, 6:+206->663
    //   497: aconst_null
    //   498: ret 89
    //   500: new 341	java/lang/StringBuilder
    //   503: dup
    //   504: invokespecial 342	java/lang/StringBuilder:<init>	()V
    //   507: ldc_w 547
    //   510: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   513: aload 44
    //   515: invokevirtual 545	com/avast/android/generic/internet/c/a/f:g	()I
    //   518: invokevirtual 550	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   521: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   524: aload 45
    //   526: invokespecial 552	com/avast/android/generic/internet/c/g:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   529: athrow
    //   530: astore 9
    //   532: aload 12
    //   534: astore 10
    //   536: aload 9
    //   538: athrow
    //   539: astore 11
    //   541: aload 10
    //   543: astore 12
    //   545: aload 12
    //   547: ifnull +10 -> 557
    //   550: aload 12
    //   552: invokeinterface 408 1 0
    //   557: aload 11
    //   559: athrow
    //   560: ldc 219
    //   562: astore 45
    //   564: goto -120 -> 444
    //   567: new 554	com/avast/android/generic/internet/c/b
    //   570: dup
    //   571: aload_1
    //   572: aload 45
    //   574: invokespecial 555	com/avast/android/generic/internet/c/b:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   577: athrow
    //   578: astore 14
    //   580: aload 14
    //   582: athrow
    //   583: astore 11
    //   585: goto -40 -> 545
    //   588: new 557	com/avast/android/generic/internet/c/k
    //   591: dup
    //   592: aload_1
    //   593: aload 45
    //   595: invokespecial 558	com/avast/android/generic/internet/c/k:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   598: athrow
    //   599: astore 15
    //   601: new 320	java/io/IOException
    //   604: dup
    //   605: aload 15
    //   607: invokevirtual 561	org/apache/http/client/ClientProtocolException:getMessage	()Ljava/lang/String;
    //   610: invokespecial 562	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   613: athrow
    //   614: new 564	com/avast/android/generic/internet/c/l
    //   617: dup
    //   618: aload_1
    //   619: aload 45
    //   621: invokespecial 565	com/avast/android/generic/internet/c/l:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   624: athrow
    //   625: astore 16
    //   627: new 425	com/avast/android/generic/internet/c/g
    //   630: dup
    //   631: aload 16
    //   633: invokespecial 428	com/avast/android/generic/internet/c/g:<init>	(Ljava/lang/Throwable;)V
    //   636: athrow
    //   637: new 425	com/avast/android/generic/internet/c/g
    //   640: dup
    //   641: ldc_w 567
    //   644: aload 45
    //   646: invokespecial 552	com/avast/android/generic/internet/c/g:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   649: athrow
    //   650: new 425	com/avast/android/generic/internet/c/g
    //   653: dup
    //   654: ldc_w 569
    //   657: aload 45
    //   659: invokespecial 552	com/avast/android/generic/internet/c/g:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   662: athrow
    //   663: aload 44
    //   665: invokevirtual 571	com/avast/android/generic/internet/c/a/f:l	()Z
    //   668: ifeq +58 -> 726
    //   671: aload 44
    //   673: invokevirtual 574	com/avast/android/generic/internet/c/a/f:m	()Lcom/avast/android/generic/internet/c/a/t;
    //   676: astore 52
    //   678: aload 52
    //   680: invokevirtual 577	com/avast/android/generic/internet/c/a/t:f	()Z
    //   683: ifeq +43 -> 726
    //   686: aload 52
    //   688: invokevirtual 580	com/avast/android/generic/internet/c/a/t:g	()Lcom/avast/android/generic/internet/c/a/v;
    //   691: astore 53
    //   693: getstatic 585	com/avast/android/generic/internet/c/a/x:a	Lcom/avast/android/generic/internet/c/a/x;
    //   696: astore 54
    //   698: aload 53
    //   700: invokevirtual 589	com/avast/android/generic/internet/c/a/v:d	()Z
    //   703: ifeq +10 -> 713
    //   706: aload 53
    //   708: invokevirtual 592	com/avast/android/generic/internet/c/a/v:e	()Lcom/avast/android/generic/internet/c/a/x;
    //   711: astore 54
    //   713: new 461	com/avast/android/generic/internet/c/i
    //   716: dup
    //   717: ldc_w 594
    //   720: aload 54
    //   722: invokespecial 597	com/avast/android/generic/internet/c/i:<init>	(Ljava/lang/String;Lcom/avast/android/generic/internet/c/a/x;)V
    //   725: athrow
    //   726: new 425	com/avast/android/generic/internet/c/g
    //   729: dup
    //   730: ldc_w 599
    //   733: aload 45
    //   735: invokespecial 552	com/avast/android/generic/internet/c/g:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   738: athrow
    //   739: aload 44
    //   741: invokevirtual 602	com/avast/android/generic/internet/c/a/f:c	()Lcom/google/a/c;
    //   744: invokevirtual 606	com/google/a/c:b	()Ljava/lang/String;
    //   747: astore 46
    //   749: aload 44
    //   751: invokevirtual 608	com/avast/android/generic/internet/c/a/f:e	()Lcom/google/a/c;
    //   754: invokevirtual 606	com/google/a/c:b	()Ljava/lang/String;
    //   757: astore 47
    //   759: aload 44
    //   761: invokevirtual 574	com/avast/android/generic/internet/c/a/f:m	()Lcom/avast/android/generic/internet/c/a/t;
    //   764: invokevirtual 609	com/avast/android/generic/internet/c/a/t:c	()Lcom/google/a/c;
    //   767: invokevirtual 606	com/google/a/c:b	()Ljava/lang/String;
    //   770: astore 48
    //   772: aload 44
    //   774: invokevirtual 574	com/avast/android/generic/internet/c/a/f:m	()Lcom/avast/android/generic/internet/c/a/t;
    //   777: invokevirtual 610	com/avast/android/generic/internet/c/a/t:d	()Z
    //   780: ifeq +124 -> 904
    //   783: aload 44
    //   785: invokevirtual 574	com/avast/android/generic/internet/c/a/f:m	()Lcom/avast/android/generic/internet/c/a/t;
    //   788: invokevirtual 611	com/avast/android/generic/internet/c/a/t:e	()Ljava/lang/String;
    //   791: astore 49
    //   793: new 613	com/avast/android/generic/internet/c/e
    //   796: dup
    //   797: aload 46
    //   799: aload 47
    //   801: aload 48
    //   803: aload 49
    //   805: aconst_null
    //   806: invokespecial 616	com/avast/android/generic/internet/c/e:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/generic/internet/c/d;)V
    //   809: astore 39
    //   811: ldc_w 322
    //   814: new 341	java/lang/StringBuilder
    //   817: dup
    //   818: invokespecial 342	java/lang/StringBuilder:<init>	()V
    //   821: ldc_w 618
    //   824: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   827: aload 39
    //   829: getfield 620	com/avast/android/generic/internet/c/e:a	Ljava/lang/String;
    //   832: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   835: ldc_w 622
    //   838: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   841: aload 39
    //   843: getfield 623	com/avast/android/generic/internet/c/e:b	Ljava/lang/String;
    //   846: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   849: ldc_w 625
    //   852: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   855: aload 39
    //   857: getfield 626	com/avast/android/generic/internet/c/e:c	Ljava/lang/String;
    //   860: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   863: ldc_w 628
    //   866: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   869: aload 39
    //   871: getfield 629	com/avast/android/generic/internet/c/e:d	Ljava/lang/String;
    //   874: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   877: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   880: invokestatic 329	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   883: pop
    //   884: aload 12
    //   886: ifnull -533 -> 353
    //   889: aload 12
    //   891: invokeinterface 408 1 0
    //   896: goto -543 -> 353
    //   899: astore 51
    //   901: goto -548 -> 353
    //   904: aconst_null
    //   905: astore 49
    //   907: goto -114 -> 793
    //   910: astore 40
    //   912: aconst_null
    //   913: astore 39
    //   915: goto -562 -> 353
    //   918: astore 13
    //   920: goto -363 -> 557
    //   923: astore 11
    //   925: aconst_null
    //   926: astore 12
    //   928: goto -383 -> 545
    //   931: astore 16
    //   933: aconst_null
    //   934: astore 12
    //   936: goto -309 -> 627
    //   939: astore 15
    //   941: aconst_null
    //   942: astore 12
    //   944: goto -343 -> 601
    //   947: astore 14
    //   949: aconst_null
    //   950: astore 12
    //   952: goto -372 -> 580
    //   955: astore 9
    //   957: aconst_null
    //   958: astore 10
    //   960: goto -424 -> 536
    //
    // Exception table:
    //   from	to	target	type
    //   396	403	409	java/io/IOException
    //   417	530	530	com/avast/android/generic/internet/c/g
    //   560	578	530	com/avast/android/generic/internet/c/g
    //   588	599	530	com/avast/android/generic/internet/c/g
    //   614	625	530	com/avast/android/generic/internet/c/g
    //   637	884	530	com/avast/android/generic/internet/c/g
    //   536	539	539	finally
    //   417	530	578	com/avast/android/generic/internet/c/i
    //   560	578	578	com/avast/android/generic/internet/c/i
    //   588	599	578	com/avast/android/generic/internet/c/i
    //   614	625	578	com/avast/android/generic/internet/c/i
    //   637	884	578	com/avast/android/generic/internet/c/i
    //   417	530	583	finally
    //   560	578	583	finally
    //   580	583	583	finally
    //   588	599	583	finally
    //   601	614	583	finally
    //   614	625	583	finally
    //   627	637	583	finally
    //   637	884	583	finally
    //   417	530	599	org/apache/http/client/ClientProtocolException
    //   560	578	599	org/apache/http/client/ClientProtocolException
    //   588	599	599	org/apache/http/client/ClientProtocolException
    //   614	625	599	org/apache/http/client/ClientProtocolException
    //   637	884	599	org/apache/http/client/ClientProtocolException
    //   417	530	625	java/lang/Exception
    //   560	578	625	java/lang/Exception
    //   588	599	625	java/lang/Exception
    //   614	625	625	java/lang/Exception
    //   637	884	625	java/lang/Exception
    //   889	896	899	java/io/IOException
    //   347	353	910	java/io/IOException
    //   550	557	918	java/io/IOException
    //   0	332	923	finally
    //   362	379	923	finally
    //   0	332	931	java/lang/Exception
    //   362	379	931	java/lang/Exception
    //   0	332	939	org/apache/http/client/ClientProtocolException
    //   362	379	939	org/apache/http/client/ClientProtocolException
    //   0	332	947	com/avast/android/generic/internet/c/i
    //   362	379	947	com/avast/android/generic/internet/c/i
    //   0	332	955	com/avast/android/generic/internet/c/g
    //   362	379	955	com/avast/android/generic/internet/c/g
  }

  public void a()
  {
    if (this.q != null)
      this.q.a();
    this.q = null;
  }

  public boolean a(com.avast.android.generic.internet.c.a.ad paramad)
  {
    String str = this.x.x();
    byte[] arrayOfByte = this.x.y();
    if (TextUtils.isEmpty(str))
      throw new IllegalStateException("The AUID has to be set in the settings.");
    return a(str, arrayOfByte, paramad);
  }

  // ERROR //
  public boolean a(String paramString, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: ldc_w 331
    //   3: astore_3
    //   4: aload_2
    //   5: ifnull +10 -> 15
    //   8: aload_2
    //   9: arraylength
    //   10: bipush 16
    //   12: if_icmpge +22 -> 34
    //   15: ldc_w 322
    //   18: ldc_w 333
    //   21: invokestatic 329	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   24: pop
    //   25: ldc_w 335
    //   28: astore_3
    //   29: aload_0
    //   30: getfield 68	com/avast/android/generic/internet/c/c:a	[B
    //   33: astore_2
    //   34: aconst_null
    //   35: astore 5
    //   37: new 339	org/apache/http/client/methods/HttpPost
    //   40: dup
    //   41: aload_0
    //   42: getfield 295	com/avast/android/generic/internet/c/c:A	Ljava/lang/String;
    //   45: invokespecial 350	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   48: astore 6
    //   50: ldc_w 322
    //   53: new 341	java/lang/StringBuilder
    //   56: dup
    //   57: invokespecial 342	java/lang/StringBuilder:<init>	()V
    //   60: ldc_w 645
    //   63: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: aload_0
    //   67: getfield 169	com/avast/android/generic/internet/c/c:w	Ljava/lang/String;
    //   70: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: invokestatic 329	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   79: pop
    //   80: ldc_w 322
    //   83: new 341	java/lang/StringBuilder
    //   86: dup
    //   87: invokespecial 342	java/lang/StringBuilder:<init>	()V
    //   90: ldc_w 356
    //   93: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: aload 6
    //   98: invokevirtual 360	org/apache/http/client/methods/HttpPost:getURI	()Ljava/net/URI;
    //   101: invokevirtual 363	java/net/URI:toString	()Ljava/lang/String;
    //   104: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: invokestatic 329	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   113: pop
    //   114: invokestatic 650	com/avast/android/generic/internet/c/a/i:d	()Lcom/avast/android/generic/internet/c/a/j;
    //   117: astore 14
    //   119: aload 14
    //   121: aload_1
    //   122: invokevirtual 655	com/avast/android/generic/internet/c/a/j:a	(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/j;
    //   125: pop
    //   126: aload 6
    //   128: new 365	org/apache/http/entity/ByteArrayEntity
    //   131: dup
    //   132: aload_0
    //   133: aload_2
    //   134: aload 14
    //   136: invokevirtual 658	com/avast/android/generic/internet/c/a/j:c	()Lcom/avast/android/generic/internet/c/a/i;
    //   139: invokevirtual 659	com/avast/android/generic/internet/c/a/i:bo	()[B
    //   142: invokespecial 374	com/avast/android/generic/internet/c/c:a	([B[B)[B
    //   145: invokespecial 377	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   148: invokevirtual 381	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   151: aload 6
    //   153: ldc_w 383
    //   156: aload_3
    //   157: invokevirtual 387	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   160: aload 6
    //   162: ldc_w 661
    //   165: aload_0
    //   166: getfield 169	com/avast/android/generic/internet/c/c:w	Ljava/lang/String;
    //   169: ldc 217
    //   171: ldc 219
    //   173: invokevirtual 665	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   176: invokevirtual 387	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   179: aload_0
    //   180: getfield 114	com/avast/android/generic/internet/c/c:q	Landroid/b/a/a;
    //   183: aload 6
    //   185: aload_0
    //   186: getfield 131	com/avast/android/generic/internet/c/c:r	Lorg/apache/http/protocol/HttpContext;
    //   189: invokevirtual 391	android/b/a/a:execute	(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    //   192: astore 16
    //   194: aconst_null
    //   195: astore 5
    //   197: aload 16
    //   199: ifnull +42 -> 241
    //   202: aload 16
    //   204: invokeinterface 397 1 0
    //   209: astore 19
    //   211: aconst_null
    //   212: astore 5
    //   214: aload 19
    //   216: ifnull +25 -> 241
    //   219: aload 16
    //   221: invokeinterface 397 1 0
    //   226: invokeinterface 403 1 0
    //   231: istore 20
    //   233: iload 20
    //   235: sipush 200
    //   238: if_icmpeq +19 -> 257
    //   241: iconst_0
    //   242: ifeq +9 -> 251
    //   245: aconst_null
    //   246: invokeinterface 408 1 0
    //   251: iconst_0
    //   252: istore 17
    //   254: iload 17
    //   256: ireturn
    //   257: aload 16
    //   259: invokeinterface 412 1 0
    //   264: astore 21
    //   266: aload 21
    //   268: astore 5
    //   270: aload 5
    //   272: ifnonnull +21 -> 293
    //   275: aload 5
    //   277: ifnull +10 -> 287
    //   280: aload 5
    //   282: invokeinterface 408 1 0
    //   287: iconst_0
    //   288: istore 17
    //   290: goto -36 -> 254
    //   293: aload 5
    //   295: invokeinterface 531 1 0
    //   300: invokestatic 670	com/avast/android/generic/internet/c/a/l:a	(Ljava/io/InputStream;)Lcom/avast/android/generic/internet/c/a/l;
    //   303: astore 22
    //   305: aload 22
    //   307: invokevirtual 672	com/avast/android/generic/internet/c/a/l:b	()Z
    //   310: ifeq +223 -> 533
    //   313: getstatic 677	com/avast/android/generic/internet/c/d:a	[I
    //   316: aload 22
    //   318: invokevirtual 680	com/avast/android/generic/internet/c/a/l:c	()Lcom/avast/android/generic/internet/c/a/n;
    //   321: invokevirtual 685	com/avast/android/generic/internet/c/a/n:ordinal	()I
    //   324: iaload
    //   325: tableswitch	default:+39 -> 364, 1:+113->438, 2:+113->438, 3:+113->438, 4:+113->438, 5:+167->492, 6:+175->500
    //   365: aconst_null
    //   366: ret 89
    //   368: new 341	java/lang/StringBuilder
    //   371: dup
    //   372: invokespecial 342	java/lang/StringBuilder:<init>	()V
    //   375: ldc_w 687
    //   378: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   381: aload 22
    //   383: invokevirtual 680	com/avast/android/generic/internet/c/a/l:c	()Lcom/avast/android/generic/internet/c/a/n;
    //   386: invokevirtual 690	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   389: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   392: ldc 219
    //   394: invokespecial 552	com/avast/android/generic/internet/c/g:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   397: athrow
    //   398: astore 7
    //   400: aload 5
    //   402: astore 8
    //   404: new 320	java/io/IOException
    //   407: dup
    //   408: aload 7
    //   410: invokevirtual 561	org/apache/http/client/ClientProtocolException:getMessage	()Ljava/lang/String;
    //   413: invokespecial 562	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   416: athrow
    //   417: astore 9
    //   419: aload 8
    //   421: astore 5
    //   423: aload 5
    //   425: ifnull +10 -> 435
    //   428: aload 5
    //   430: invokeinterface 408 1 0
    //   435: aload 9
    //   437: athrow
    //   438: new 425	com/avast/android/generic/internet/c/g
    //   441: dup
    //   442: new 341	java/lang/StringBuilder
    //   445: dup
    //   446: invokespecial 342	java/lang/StringBuilder:<init>	()V
    //   449: ldc_w 692
    //   452: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   455: aload 22
    //   457: invokevirtual 680	com/avast/android/generic/internet/c/a/l:c	()Lcom/avast/android/generic/internet/c/a/n;
    //   460: invokevirtual 693	com/avast/android/generic/internet/c/a/n:toString	()Ljava/lang/String;
    //   463: invokevirtual 346	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   466: invokevirtual 349	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   469: ldc 219
    //   471: invokespecial 552	com/avast/android/generic/internet/c/g:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   474: athrow
    //   475: astore 11
    //   477: new 425	com/avast/android/generic/internet/c/g
    //   480: dup
    //   481: aload 11
    //   483: invokespecial 428	com/avast/android/generic/internet/c/g:<init>	(Ljava/lang/Throwable;)V
    //   486: athrow
    //   487: astore 9
    //   489: goto -66 -> 423
    //   492: new 554	com/avast/android/generic/internet/c/b
    //   495: dup
    //   496: invokespecial 694	com/avast/android/generic/internet/c/b:<init>	()V
    //   499: athrow
    //   500: ldc_w 322
    //   503: ldc_w 696
    //   506: invokestatic 329	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   509: pop
    //   510: iconst_1
    //   511: istore 17
    //   513: aload 5
    //   515: ifnull -261 -> 254
    //   518: aload 5
    //   520: invokeinterface 408 1 0
    //   525: goto -271 -> 254
    //   528: astore 24
    //   530: goto -276 -> 254
    //   533: new 425	com/avast/android/generic/internet/c/g
    //   536: dup
    //   537: ldc_w 698
    //   540: ldc 219
    //   542: invokespecial 552	com/avast/android/generic/internet/c/g:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   545: athrow
    //   546: astore 18
    //   548: goto -297 -> 251
    //   551: astore 25
    //   553: goto -266 -> 287
    //   556: astore 10
    //   558: goto -123 -> 435
    //   561: astore 7
    //   563: aconst_null
    //   564: astore 8
    //   566: goto -162 -> 404
    //
    // Exception table:
    //   from	to	target	type
    //   293	398	398	org/apache/http/client/ClientProtocolException
    //   438	475	398	org/apache/http/client/ClientProtocolException
    //   492	510	398	org/apache/http/client/ClientProtocolException
    //   533	546	398	org/apache/http/client/ClientProtocolException
    //   404	417	417	finally
    //   37	233	475	java/lang/Exception
    //   257	266	475	java/lang/Exception
    //   293	398	475	java/lang/Exception
    //   438	475	475	java/lang/Exception
    //   492	510	475	java/lang/Exception
    //   533	546	475	java/lang/Exception
    //   37	233	487	finally
    //   257	266	487	finally
    //   293	398	487	finally
    //   438	475	487	finally
    //   477	487	487	finally
    //   492	510	487	finally
    //   533	546	487	finally
    //   518	525	528	java/io/IOException
    //   245	251	546	java/io/IOException
    //   280	287	551	java/io/IOException
    //   428	435	556	java/io/IOException
    //   37	233	561	org/apache/http/client/ClientProtocolException
    //   257	266	561	org/apache/http/client/ClientProtocolException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.c
 * JD-Core Version:    0.6.2
 */