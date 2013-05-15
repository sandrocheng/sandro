package com.avast.android.generic.internet.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.g.d;
import com.avast.android.generic.g.e;
import com.avast.android.generic.g.g;
import com.avast.android.generic.g.i;
import java.util.Locale;

public class a
{
  private static final byte[] a = { 0, 7 };

  public static com.avast.android.generic.g.c a(e parame, Context paramContext, Bundle paramBundle)
  {
    d locald = a(paramContext, paramBundle);
    if (parame != null)
      locald.a(parame);
    if (a(paramContext))
      a(locald, paramContext);
    return locald.c();
  }

  private static d a(Context paramContext, Bundle paramBundle)
  {
    d locald = com.avast.android.generic.g.c.H();
    PackageManager localPackageManager;
    if (paramContext != null)
    {
      localPackageManager = paramContext.getPackageManager();
      if (localPackageManager == null);
    }
    try
    {
      PackageInfo localPackageInfo3 = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0);
      if (localPackageInfo3 != null)
        locald.b(com.google.a.c.a(localPackageInfo3.versionName));
      try
      {
        label49: PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo("com.avast.android.antitheft", 0);
        if (localPackageInfo2 != null)
          locald.c(com.google.a.c.a(localPackageInfo2.versionName));
        locald.a(com.google.a.c.a(((ae)ad.a(paramContext, ae.class)).r()));
        if (paramBundle != null)
        {
          String str = paramBundle.getString("vps_version");
          if (str != null)
            locald.d(com.google.a.c.a(str));
          int i = paramBundle.getInt("update_result", -1);
          if (i != -1)
            locald.a(i.a(i));
          int j = paramBundle.getInt("update_check_result", -1);
          if (j != -1)
            locald.a(g.a(j));
        }
        return locald;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        while (true)
          try
          {
            PackageInfo localPackageInfo1 = localPackageManager.getPackageInfo("com.avast.android.at_play", 0);
            if (localPackageInfo1 != null)
              locald.c(com.google.a.c.a(localPackageInfo1.versionName));
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException3)
          {
          }
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException1)
    {
      break label49;
    }
  }

  private static void a(d paramd, Context paramContext)
  {
    paramd.e(com.google.a.c.a(Build.VERSION.RELEASE));
    paramd.f(com.google.a.c.a(Build.ID));
    paramd.i(com.google.a.c.a(Build.BRAND));
    paramd.k(com.google.a.c.a(Build.MANUFACTURER));
    paramd.j(com.google.a.c.a(Locale.getDefault().getDisplayName(Locale.US)));
    paramd.g(com.google.a.c.a(Build.MODEL));
    if (paramContext != null)
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if ((localTelephonyManager != null) && (localTelephonyManager.getSimOperatorName() != null))
        paramd.h(com.google.a.c.a(localTelephonyManager.getSimOperatorName()));
    }
  }

  private static boolean a(Context paramContext)
  {
    return ((ae)ad.a(paramContext, ae.class)).p();
  }

  // ERROR //
  @android.annotation.SuppressLint({"NewApi"})
  private static boolean a(Context paramContext, com.avast.android.generic.g.c paramc, java.net.URI paramURI)
  {
    // Byte code:
    //   0: ldc 202
    //   2: invokestatic 207	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   5: pop
    //   6: ldc 209
    //   8: invokestatic 214	android/b/a/a:a	(Ljava/lang/String;)Landroid/b/a/a;
    //   11: astore 4
    //   13: new 216	org/apache/http/client/methods/HttpPost
    //   16: dup
    //   17: aload_2
    //   18: invokespecial 220	org/apache/http/client/methods/HttpPost:<init>	(Ljava/net/URI;)V
    //   21: astore 5
    //   23: new 222	org/apache/http/entity/ByteArrayEntity
    //   26: dup
    //   27: aload_1
    //   28: invokevirtual 226	com/avast/android/generic/g/c:bo	()[B
    //   31: invokespecial 229	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   34: astore 6
    //   36: aload 6
    //   38: ldc 231
    //   40: invokevirtual 235	org/apache/http/entity/ByteArrayEntity:setContentType	(Ljava/lang/String;)V
    //   43: aload 5
    //   45: aload 6
    //   47: invokevirtual 239	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   50: new 241	java/lang/StringBuilder
    //   53: dup
    //   54: invokespecial 243	java/lang/StringBuilder:<init>	()V
    //   57: ldc 245
    //   59: invokevirtual 249	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: aload 5
    //   64: invokevirtual 253	org/apache/http/client/methods/HttpPost:getURI	()Ljava/net/URI;
    //   67: invokevirtual 256	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 259	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokestatic 207	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   76: pop
    //   77: aload 4
    //   79: aload 5
    //   81: invokevirtual 263	android/b/a/a:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   84: astore 17
    //   86: aload 17
    //   88: ifnull +15 -> 103
    //   91: aload 17
    //   93: invokeinterface 269 1 0
    //   98: invokeinterface 274 1 0
    //   103: aload 4
    //   105: ifnull +8 -> 113
    //   108: aload 4
    //   110: invokevirtual 276	android/b/a/a:a	()V
    //   113: iconst_1
    //   114: istore 11
    //   116: iload 11
    //   118: ireturn
    //   119: astore 13
    //   121: new 241	java/lang/StringBuilder
    //   124: dup
    //   125: invokespecial 243	java/lang/StringBuilder:<init>	()V
    //   128: aload 13
    //   130: invokevirtual 256	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   133: ldc_w 278
    //   136: invokevirtual 249	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: invokevirtual 259	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   142: invokestatic 207	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   145: pop
    //   146: iconst_0
    //   147: ifeq +14 -> 161
    //   150: aconst_null
    //   151: invokeinterface 269 1 0
    //   156: invokeinterface 274 1 0
    //   161: iconst_0
    //   162: istore 11
    //   164: aload 4
    //   166: ifnull -50 -> 116
    //   169: aload 4
    //   171: invokevirtual 276	android/b/a/a:a	()V
    //   174: iconst_0
    //   175: istore 11
    //   177: goto -61 -> 116
    //   180: astore 9
    //   182: new 241	java/lang/StringBuilder
    //   185: dup
    //   186: invokespecial 243	java/lang/StringBuilder:<init>	()V
    //   189: aload 9
    //   191: invokevirtual 256	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   194: ldc_w 278
    //   197: invokevirtual 249	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: invokevirtual 259	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   203: invokestatic 207	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   206: pop
    //   207: iconst_0
    //   208: ifeq +14 -> 222
    //   211: aconst_null
    //   212: invokeinterface 269 1 0
    //   217: invokeinterface 274 1 0
    //   222: iconst_0
    //   223: istore 11
    //   225: aload 4
    //   227: ifnull -111 -> 116
    //   230: goto -61 -> 169
    //   233: astore 7
    //   235: iconst_0
    //   236: ifeq +14 -> 250
    //   239: aconst_null
    //   240: invokeinterface 269 1 0
    //   245: invokeinterface 274 1 0
    //   250: aload 4
    //   252: ifnull +8 -> 260
    //   255: aload 4
    //   257: invokevirtual 276	android/b/a/a:a	()V
    //   260: aload 7
    //   262: athrow
    //   263: astore 18
    //   265: goto -162 -> 103
    //   268: astore 12
    //   270: goto -48 -> 222
    //   273: astore 15
    //   275: goto -114 -> 161
    //   278: astore 8
    //   280: goto -30 -> 250
    //
    // Exception table:
    //   from	to	target	type
    //   50	86	119	org/apache/http/client/ClientProtocolException
    //   50	86	180	java/io/IOException
    //   50	86	233	finally
    //   121	146	233	finally
    //   182	207	233	finally
    //   91	103	263	java/io/IOException
    //   211	222	268	java/io/IOException
    //   150	161	273	java/io/IOException
    //   239	250	278	java/io/IOException
  }

  // ERROR //
  public static boolean b(e parame, Context paramContext, Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +11 -> 12
    //   4: aload_1
    //   5: ifnull +7 -> 12
    //   8: aload_2
    //   9: ifnonnull +53 -> 62
    //   12: new 241	java/lang/StringBuilder
    //   15: dup
    //   16: invokespecial 243	java/lang/StringBuilder:<init>	()V
    //   19: ldc_w 283
    //   22: invokevirtual 249	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: aload_0
    //   26: invokevirtual 256	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   29: ldc_w 285
    //   32: invokevirtual 249	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: aload_1
    //   36: invokevirtual 256	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   39: ldc_w 287
    //   42: invokevirtual 249	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: aload_2
    //   46: invokevirtual 256	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   49: invokevirtual 259	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: invokestatic 207	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   55: pop
    //   56: iconst_0
    //   57: istore 4
    //   59: iload 4
    //   61: ireturn
    //   62: aload_0
    //   63: aload_1
    //   64: aload_2
    //   65: invokestatic 289	com/avast/android/generic/internet/a/a:a	(Lcom/avast/android/generic/g/e;Landroid/content/Context;Landroid/os/Bundle;)Lcom/avast/android/generic/g/c;
    //   68: astore 5
    //   70: aload 5
    //   72: invokevirtual 292	com/avast/android/generic/g/c:t	()Z
    //   75: ifeq +45 -> 120
    //   78: aload 5
    //   80: invokevirtual 296	com/avast/android/generic/g/c:u	()Lcom/avast/android/generic/g/g;
    //   83: astore 17
    //   85: getstatic 299	com/avast/android/generic/g/g:b	Lcom/avast/android/generic/g/g;
    //   88: aload 17
    //   90: invokevirtual 303	com/avast/android/generic/g/g:equals	(Ljava/lang/Object;)Z
    //   93: ifne +14 -> 107
    //   96: getstatic 305	com/avast/android/generic/g/g:a	Lcom/avast/android/generic/g/g;
    //   99: aload 17
    //   101: invokevirtual 303	com/avast/android/generic/g/g:equals	(Ljava/lang/Object;)Z
    //   104: ifeq +16 -> 120
    //   107: ldc_w 307
    //   110: invokestatic 207	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   113: pop
    //   114: iconst_1
    //   115: istore 4
    //   117: goto -58 -> 59
    //   120: aload_2
    //   121: ldc_w 309
    //   124: invokevirtual 94	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   127: astore 6
    //   129: aload 6
    //   131: ifnonnull +16 -> 147
    //   134: ldc_w 311
    //   137: invokestatic 207	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   140: pop
    //   141: iconst_0
    //   142: istore 4
    //   144: goto -85 -> 59
    //   147: aload_1
    //   148: ldc 76
    //   150: invokestatic 81	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   153: checkcast 76	com/avast/android/generic/ae
    //   156: invokevirtual 84	com/avast/android/generic/ae:r	()Ljava/lang/String;
    //   159: astore 7
    //   161: aload_1
    //   162: invokestatic 314	com/avast/android/generic/util/l:a	(Landroid/content/Context;)Z
    //   165: ifeq +8 -> 173
    //   168: ldc_w 316
    //   171: astore 7
    //   173: new 241	java/lang/StringBuilder
    //   176: dup
    //   177: invokespecial 243	java/lang/StringBuilder:<init>	()V
    //   180: ldc_w 318
    //   183: invokevirtual 249	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: aload 7
    //   188: invokevirtual 249	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: invokevirtual 259	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokestatic 207	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   197: pop
    //   198: aload 7
    //   200: ldc_w 320
    //   203: ldc_w 278
    //   206: invokevirtual 326	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   209: astore 9
    //   211: getstatic 12	com/avast/android/generic/internet/a/a:a	[B
    //   214: aload 9
    //   216: invokestatic 331	com/avast/android/generic/util/e:a	([BLjava/lang/String;)[B
    //   219: astore 11
    //   221: new 322	java/lang/String
    //   224: dup
    //   225: aload 11
    //   227: invokestatic 336	com/avast/android/generic/c/b:a	([B)[C
    //   230: invokespecial 339	java/lang/String:<init>	([C)V
    //   233: bipush 43
    //   235: bipush 45
    //   237: invokevirtual 342	java/lang/String:replace	(CC)Ljava/lang/String;
    //   240: bipush 47
    //   242: bipush 95
    //   244: invokevirtual 342	java/lang/String:replace	(CC)Ljava/lang/String;
    //   247: astore 12
    //   249: new 344	java/net/URI
    //   252: dup
    //   253: new 241	java/lang/StringBuilder
    //   256: dup
    //   257: invokespecial 243	java/lang/StringBuilder:<init>	()V
    //   260: aload 6
    //   262: invokevirtual 249	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: aload 12
    //   267: invokevirtual 249	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: invokevirtual 259	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: invokespecial 346	java/net/URI:<init>	(Ljava/lang/String;)V
    //   276: astore 13
    //   278: aload_1
    //   279: aload 5
    //   281: aload 13
    //   283: invokestatic 348	com/avast/android/generic/internet/a/a:a	(Landroid/content/Context;Lcom/avast/android/generic/g/c;Ljava/net/URI;)Z
    //   286: istore 4
    //   288: goto -229 -> 59
    //   291: astore 10
    //   293: iconst_0
    //   294: istore 4
    //   296: goto -237 -> 59
    //   299: astore 14
    //   301: ldc_w 350
    //   304: invokestatic 207	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   307: pop
    //   308: iconst_0
    //   309: istore 4
    //   311: goto -252 -> 59
    //
    // Exception table:
    //   from	to	target	type
    //   211	221	291	java/io/IOException
    //   249	278	299	java/net/URISyntaxException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.a.a
 * JD-Core Version:    0.6.2
 */