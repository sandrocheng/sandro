package com.avast.android.generic.app.about;

import android.annotation.TargetApi;
import android.b.a.a;
import android.content.Context;
import android.os.Build.VERSION;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;

@TargetApi(8)
public class o
{
  private Context a;
  private String b;
  private a c;

  public o(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    this.b = ((ae)ad.a(paramContext, ae.class)).r();
  }

  private void a()
  {
    if (this.c != null)
      this.c.a();
    this.c = null;
  }

  private void a(Context paramContext)
  {
    this.c = a.a("avast! Mobile Security");
    SchemeRegistry localSchemeRegistry = this.c.getConnectionManager().getSchemeRegistry();
    if (Build.VERSION.SDK_INT < 8)
      localSchemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
    while (true)
    {
      return;
      q.a(paramContext, localSchemeRegistry);
    }
  }

  // ERROR //
  public boolean a(String paramString1, String paramString2, String paramString3, com.avast.android.generic.g.q paramq, com.avast.android.generic.g.c paramc, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 8
    //   3: aload_0
    //   4: aload_0
    //   5: getfield 26	com/avast/android/generic/app/about/o:a	Landroid/content/Context;
    //   8: invokespecial 99	com/avast/android/generic/app/about/o:a	(Landroid/content/Context;)V
    //   11: aconst_null
    //   12: astore 9
    //   14: invokestatic 104	com/avast/android/generic/g/n:r	()Lcom/avast/android/generic/g/o;
    //   17: astore 15
    //   19: aload 15
    //   21: aload_0
    //   22: getfield 39	com/avast/android/generic/app/about/o:b	Ljava/lang/String;
    //   25: invokestatic 109	com/avast/android/generic/util/e:a	(Ljava/lang/String;)[B
    //   28: invokestatic 114	com/google/a/c:a	([B)Lcom/google/a/c;
    //   31: invokevirtual 119	com/avast/android/generic/g/o:a	(Lcom/google/a/c;)Lcom/avast/android/generic/g/o;
    //   34: pop
    //   35: aload_1
    //   36: invokestatic 125	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   39: istore 17
    //   41: aconst_null
    //   42: astore 9
    //   44: iload 17
    //   46: ifne +10 -> 56
    //   49: aload 15
    //   51: aload_1
    //   52: invokevirtual 128	com/avast/android/generic/g/o:a	(Ljava/lang/String;)Lcom/avast/android/generic/g/o;
    //   55: pop
    //   56: aload_2
    //   57: invokestatic 125	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   60: istore 18
    //   62: aconst_null
    //   63: astore 9
    //   65: iload 18
    //   67: ifne +10 -> 77
    //   70: aload 15
    //   72: aload_2
    //   73: invokevirtual 130	com/avast/android/generic/g/o:b	(Ljava/lang/String;)Lcom/avast/android/generic/g/o;
    //   76: pop
    //   77: aload_3
    //   78: invokestatic 125	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   81: istore 19
    //   83: aconst_null
    //   84: astore 9
    //   86: iload 19
    //   88: ifeq +6 -> 94
    //   91: ldc 132
    //   93: astore_3
    //   94: aload 15
    //   96: aload_3
    //   97: invokevirtual 134	com/avast/android/generic/g/o:c	(Ljava/lang/String;)Lcom/avast/android/generic/g/o;
    //   100: pop
    //   101: aload 15
    //   103: aload 4
    //   105: invokevirtual 137	com/avast/android/generic/g/o:a	(Lcom/avast/android/generic/g/q;)Lcom/avast/android/generic/g/o;
    //   108: pop
    //   109: aconst_null
    //   110: astore 9
    //   112: aload 5
    //   114: ifnull +11 -> 125
    //   117: aload 15
    //   119: aload 5
    //   121: invokevirtual 140	com/avast/android/generic/g/o:a	(Lcom/avast/android/generic/g/c;)Lcom/avast/android/generic/g/o;
    //   124: pop
    //   125: aconst_null
    //   126: astore 9
    //   128: aload 6
    //   130: ifnull +14 -> 144
    //   133: aload 15
    //   135: aload 6
    //   137: invokestatic 114	com/google/a/c:a	([B)Lcom/google/a/c;
    //   140: invokevirtual 142	com/avast/android/generic/g/o:b	(Lcom/google/a/c;)Lcom/avast/android/generic/g/o;
    //   143: pop
    //   144: aconst_null
    //   145: astore 9
    //   147: aload 7
    //   149: ifnull +14 -> 163
    //   152: aload 15
    //   154: aload 7
    //   156: invokestatic 114	com/google/a/c:a	([B)Lcom/google/a/c;
    //   159: invokevirtual 144	com/avast/android/generic/g/o:c	(Lcom/google/a/c;)Lcom/avast/android/generic/g/o;
    //   162: pop
    //   163: new 146	org/apache/http/client/methods/HttpPost
    //   166: dup
    //   167: ldc 148
    //   169: invokespecial 151	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   172: astore 22
    //   174: ldc 153
    //   176: new 155	java/lang/StringBuilder
    //   179: dup
    //   180: invokespecial 156	java/lang/StringBuilder:<init>	()V
    //   183: ldc 158
    //   185: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   188: aload_0
    //   189: getfield 39	com/avast/android/generic/app/about/o:b	Ljava/lang/String;
    //   192: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: invokevirtual 165	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   198: invokestatic 170	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/String;)I
    //   201: pop
    //   202: aload 22
    //   204: new 172	org/apache/http/entity/ByteArrayEntity
    //   207: dup
    //   208: aload 15
    //   210: invokevirtual 175	com/avast/android/generic/g/o:c	()Lcom/avast/android/generic/g/n;
    //   213: invokevirtual 179	com/avast/android/generic/g/n:bo	()[B
    //   216: invokespecial 182	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   219: invokevirtual 186	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   222: aload_0
    //   223: getfield 41	com/avast/android/generic/app/about/o:c	Landroid/b/a/a;
    //   226: aload 22
    //   228: invokevirtual 190	android/b/a/a:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   231: astore 24
    //   233: aconst_null
    //   234: astore 9
    //   236: aload 24
    //   238: ifnull +45 -> 283
    //   241: aload 24
    //   243: invokeinterface 196 1 0
    //   248: astore 27
    //   250: aconst_null
    //   251: astore 9
    //   253: aload 27
    //   255: ifnull +28 -> 283
    //   258: aload 24
    //   260: invokeinterface 196 1 0
    //   265: invokeinterface 202 1 0
    //   270: istore 28
    //   272: aconst_null
    //   273: astore 9
    //   275: iload 28
    //   277: sipush 200
    //   280: if_icmpeq +56 -> 336
    //   283: ldc 153
    //   285: new 155	java/lang/StringBuilder
    //   288: dup
    //   289: invokespecial 156	java/lang/StringBuilder:<init>	()V
    //   292: ldc 204
    //   294: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: aload 24
    //   299: invokeinterface 196 1 0
    //   304: invokeinterface 202 1 0
    //   309: invokevirtual 207	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   312: invokevirtual 165	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   315: invokestatic 210	com/avast/android/generic/util/m:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   318: pop
    //   319: iconst_0
    //   320: ifeq +9 -> 329
    //   323: aconst_null
    //   324: invokeinterface 215 1 0
    //   329: aload_0
    //   330: invokespecial 216	com/avast/android/generic/app/about/o:a	()V
    //   333: iload 8
    //   335: ireturn
    //   336: aload 24
    //   338: invokeinterface 220 1 0
    //   343: astore 9
    //   345: ldc 222
    //   347: aload 9
    //   349: invokestatic 227	org/apache/http/util/EntityUtils:toString	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   352: invokevirtual 233	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   355: istore 29
    //   357: iload 29
    //   359: ifeq +25 -> 384
    //   362: iconst_1
    //   363: istore 8
    //   365: aload 9
    //   367: ifnull +10 -> 377
    //   370: aload 9
    //   372: invokeinterface 215 1 0
    //   377: aload_0
    //   378: invokespecial 216	com/avast/android/generic/app/about/o:a	()V
    //   381: goto -48 -> 333
    //   384: ldc 153
    //   386: new 155	java/lang/StringBuilder
    //   389: dup
    //   390: invokespecial 156	java/lang/StringBuilder:<init>	()V
    //   393: ldc 235
    //   395: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   398: aload 9
    //   400: invokestatic 227	org/apache/http/util/EntityUtils:toString	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   403: invokevirtual 162	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   406: invokevirtual 165	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   409: invokestatic 210	com/avast/android/generic/util/m:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   412: pop
    //   413: aload 9
    //   415: ifnull +10 -> 425
    //   418: aload 9
    //   420: invokeinterface 215 1 0
    //   425: aload_0
    //   426: invokespecial 216	com/avast/android/generic/app/about/o:a	()V
    //   429: iconst_0
    //   430: istore 8
    //   432: goto -99 -> 333
    //   435: astore 14
    //   437: new 237	com/avast/android/generic/app/about/p
    //   440: dup
    //   441: aload 14
    //   443: invokespecial 240	com/avast/android/generic/app/about/p:<init>	(Ljava/lang/Throwable;)V
    //   446: athrow
    //   447: astore 11
    //   449: aload 9
    //   451: ifnull +10 -> 461
    //   454: aload 9
    //   456: invokeinterface 215 1 0
    //   461: aload_0
    //   462: invokespecial 216	com/avast/android/generic/app/about/o:a	()V
    //   465: aload 11
    //   467: athrow
    //   468: astore 13
    //   470: new 237	com/avast/android/generic/app/about/p
    //   473: dup
    //   474: aload 13
    //   476: invokespecial 240	com/avast/android/generic/app/about/p:<init>	(Ljava/lang/Throwable;)V
    //   479: athrow
    //   480: astore 10
    //   482: new 237	com/avast/android/generic/app/about/p
    //   485: dup
    //   486: aload 10
    //   488: invokespecial 240	com/avast/android/generic/app/about/p:<init>	(Ljava/lang/Throwable;)V
    //   491: athrow
    //   492: astore 26
    //   494: goto -165 -> 329
    //   497: astore 32
    //   499: goto -122 -> 377
    //   502: astore 31
    //   504: goto -79 -> 425
    //   507: astore 12
    //   509: goto -48 -> 461
    //
    // Exception table:
    //   from	to	target	type
    //   14	319	435	org/apache/http/client/ClientProtocolException
    //   336	357	435	org/apache/http/client/ClientProtocolException
    //   384	413	435	org/apache/http/client/ClientProtocolException
    //   14	319	447	finally
    //   336	357	447	finally
    //   384	413	447	finally
    //   437	447	447	finally
    //   470	492	447	finally
    //   14	319	468	java/io/IOException
    //   336	357	468	java/io/IOException
    //   384	413	468	java/io/IOException
    //   14	319	480	java/lang/Exception
    //   336	357	480	java/lang/Exception
    //   384	413	480	java/lang/Exception
    //   323	329	492	java/io/IOException
    //   370	377	497	java/io/IOException
    //   418	425	502	java/io/IOException
    //   454	461	507	java/io/IOException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.about.o
 * JD-Core Version:    0.6.2
 */