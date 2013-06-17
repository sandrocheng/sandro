package com.antivirus.core.d.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import com.antivirus.core.b;
import com.avg.toolkit.b.e;
import java.io.Serializable;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class f extends com.avg.toolkit.b.g
{
  public boolean a = true;
  private final int b = 2;
  private final int c = 10000;
  private final int d = 15000;
  private final String e = "droid.cloud.avg.com";
  private final int j = 1024;
  private final int k = 3;
  private final int l = 50000;
  private int m = 0;
  private com.avg.toolkit.UID.a n;
  private boolean o = false;
  private List p = null;

  public f()
  {
  }

  public f(boolean paramBoolean)
  {
    this.o = paramBoolean;
  }

  public static StringBuilder a(List paramList, Map paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localStringBuilder.append("dex=").append(((com.antivirus.core.scanners.f)paramMap.get(str)).a).append("&man=").append(((com.antivirus.core.scanners.f)paramMap.get(str)).b).append("&base=");
      localStringBuilder.append(URLEncoder.encode(str, "UTF-8")).append("&sig=").append(URLEncoder.encode(((com.antivirus.core.scanners.f)paramMap.get(str)).c, "UTF-8"));
      localStringBuilder.append("&loc=").append(((com.antivirus.core.scanners.f)paramMap.get(str)).d.a()).append("&cat=").append(((com.antivirus.core.scanners.f)paramMap.get(str)).e);
      localStringBuilder.append("&drywet=").append(((com.antivirus.core.scanners.f)paramMap.get(str)).f).append('&');
    }
    return localStringBuilder;
  }

  // ERROR //
  private void a(String paramString)
  {
    // Byte code:
    //   0: new 136	java/io/StringReader
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 138	java/io/StringReader:<init>	(Ljava/lang/String;)V
    //   8: astore_2
    //   9: invokestatic 144	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   12: astore 6
    //   14: aload 6
    //   16: aload_2
    //   17: invokeinterface 150 2 0
    //   22: aload_0
    //   23: new 152	java/util/LinkedList
    //   26: dup
    //   27: invokespecial 153	java/util/LinkedList:<init>	()V
    //   30: putfield 48	com/antivirus/core/d/a/f:p	Ljava/util/List;
    //   33: aload_0
    //   34: getfield 50	com/antivirus/core/d/a/f:a	Z
    //   37: ifeq +153 -> 190
    //   40: aload 6
    //   42: invokeinterface 155 1 0
    //   47: iconst_1
    //   48: if_icmpeq +142 -> 190
    //   51: aload 6
    //   53: invokeinterface 158 1 0
    //   58: iconst_2
    //   59: if_icmpne -26 -> 33
    //   62: aload 6
    //   64: invokeinterface 162 1 0
    //   69: invokevirtual 165	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   72: ldc 167
    //   74: invokevirtual 171	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   77: ifeq -44 -> 33
    //   80: aload 6
    //   82: aconst_null
    //   83: ldc 173
    //   85: invokeinterface 176 3 0
    //   90: astore 7
    //   92: aload 7
    //   94: ifnonnull +32 -> 126
    //   97: ldc 178
    //   99: invokestatic 182	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   102: goto -69 -> 33
    //   105: astore 4
    //   107: aload_2
    //   108: astore 5
    //   110: aload 4
    //   112: invokestatic 185	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   115: aload 5
    //   117: ifnull +8 -> 125
    //   120: aload 5
    //   122: invokevirtual 188	java/io/StringReader:close	()V
    //   125: return
    //   126: aload 6
    //   128: aconst_null
    //   129: ldc 190
    //   131: invokeinterface 176 3 0
    //   136: astore 8
    //   138: aload 8
    //   140: ifnonnull +22 -> 162
    //   143: ldc 192
    //   145: invokestatic 182	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   148: goto -115 -> 33
    //   151: astore_3
    //   152: aload_2
    //   153: ifnull +7 -> 160
    //   156: aload_2
    //   157: invokevirtual 188	java/io/StringReader:close	()V
    //   160: aload_3
    //   161: athrow
    //   162: aload_0
    //   163: getfield 48	com/antivirus/core/d/a/f:p	Ljava/util/List;
    //   166: new 87	com/antivirus/core/scanners/f
    //   169: dup
    //   170: aload 7
    //   172: aload 8
    //   174: aconst_null
    //   175: aconst_null
    //   176: aconst_null
    //   177: aconst_null
    //   178: invokespecial 195	com/antivirus/core/scanners/f:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/core/scanners/g;Ljava/lang/String;Ljava/lang/String;)V
    //   181: invokeinterface 198 2 0
    //   186: pop
    //   187: goto -154 -> 33
    //   190: aload_2
    //   191: ifnull -66 -> 125
    //   194: aload_2
    //   195: invokevirtual 188	java/io/StringReader:close	()V
    //   198: goto -73 -> 125
    //   201: astore_3
    //   202: aconst_null
    //   203: astore_2
    //   204: goto -52 -> 152
    //   207: astore_3
    //   208: aload 5
    //   210: astore_2
    //   211: goto -59 -> 152
    //   214: astore 4
    //   216: aconst_null
    //   217: astore 5
    //   219: goto -109 -> 110
    //
    // Exception table:
    //   from	to	target	type
    //   9	102	105	java/lang/Exception
    //   126	148	105	java/lang/Exception
    //   162	187	105	java/lang/Exception
    //   9	102	151	finally
    //   126	148	151	finally
    //   162	187	151	finally
    //   0	9	201	finally
    //   110	115	207	finally
    //   0	9	214	java/lang/Exception
  }

  private int c(Context paramContext)
  {
    b localb = new b(paramContext);
    int i = localb.q() + localb.s();
    StringBuilder localStringBuilder = new StringBuilder(localb.p());
    String str = localb.r();
    if ((localStringBuilder.length() > 0) && (str.length() > 0))
      localStringBuilder.append('&');
    localStringBuilder.append(str);
    return a(paramContext, i, localStringBuilder.toString());
  }

  // ERROR //
  public int a(Context paramContext, int paramInt, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getfield 228	com/antivirus/core/d/a/f:n	Lcom/avg/toolkit/UID/a;
    //   7: astore 9
    //   9: aconst_null
    //   10: astore 4
    //   12: aload 9
    //   14: ifnonnull +15 -> 29
    //   17: aload_0
    //   18: new 230	com/avg/toolkit/UID/a
    //   21: dup
    //   22: aload_1
    //   23: invokespecial 231	com/avg/toolkit/UID/a:<init>	(Landroid/content/Context;)V
    //   26: putfield 228	com/antivirus/core/d/a/f:n	Lcom/avg/toolkit/UID/a;
    //   29: aload_0
    //   30: getfield 228	com/antivirus/core/d/a/f:n	Lcom/avg/toolkit/UID/a;
    //   33: invokevirtual 233	com/avg/toolkit/UID/a:a	()Ljava/lang/String;
    //   36: astore 10
    //   38: aload 10
    //   40: ifnonnull +17 -> 57
    //   43: iconst_1
    //   44: istore 7
    //   46: iconst_0
    //   47: ifeq +7 -> 54
    //   50: aconst_null
    //   51: invokevirtual 238	java/net/HttpURLConnection:disconnect	()V
    //   54: iload 7
    //   56: ireturn
    //   57: aload_0
    //   58: getfield 228	com/antivirus/core/d/a/f:n	Lcom/avg/toolkit/UID/a;
    //   61: invokevirtual 233	com/avg/toolkit/UID/a:a	()Ljava/lang/String;
    //   64: astore 11
    //   66: aload 11
    //   68: invokevirtual 242	java/lang/String:getBytes	()[B
    //   71: invokestatic 247	a/a/a/a/b/a:e	([B)Ljava/lang/String;
    //   74: astore 12
    //   76: aload 12
    //   78: bipush 32
    //   80: invokevirtual 251	java/lang/String:substring	(I)Ljava/lang/String;
    //   83: astore 13
    //   85: aload 12
    //   87: iconst_0
    //   88: bipush 32
    //   90: invokevirtual 254	java/lang/String:substring	(II)Ljava/lang/String;
    //   93: astore 14
    //   95: aload_0
    //   96: getfield 258	com/antivirus/core/d/a/f:h	Lcom/avg/toolkit/e/a;
    //   99: astore 15
    //   101: aconst_null
    //   102: astore 4
    //   104: aload 15
    //   106: ifnull +1147 -> 1253
    //   109: aload_0
    //   110: getfield 258	com/antivirus/core/d/a/f:h	Lcom/avg/toolkit/e/a;
    //   113: invokevirtual 262	com/avg/toolkit/e/a:b	()Z
    //   116: istore 67
    //   118: aconst_null
    //   119: astore 4
    //   121: iload 67
    //   123: ifeq +569 -> 692
    //   126: iconst_1
    //   127: istore 68
    //   129: aconst_null
    //   130: astore 4
    //   132: goto +1127 -> 1259
    //   135: getstatic 267	android/os/Build:MODEL	Ljava/lang/String;
    //   138: astore 17
    //   140: aconst_null
    //   141: astore 4
    //   143: aload 17
    //   145: ifnull +553 -> 698
    //   148: getstatic 267	android/os/Build:MODEL	Ljava/lang/String;
    //   151: astore 18
    //   153: aload 18
    //   155: ldc 97
    //   157: invokestatic 103	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   160: astore 19
    //   162: ldc_w 269
    //   165: astore 20
    //   167: getstatic 274	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   170: invokestatic 280	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   173: istore 65
    //   175: aconst_null
    //   176: astore 4
    //   178: iload 65
    //   180: iconst_3
    //   181: if_icmple +25 -> 206
    //   184: ldc_w 264
    //   187: ldc_w 282
    //   190: invokevirtual 288	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   193: aconst_null
    //   194: invokevirtual 291	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   197: invokevirtual 294	java/lang/Object:toString	()Ljava/lang/String;
    //   200: astore 66
    //   202: aload 66
    //   204: astore 20
    //   206: aload 20
    //   208: ldc 97
    //   210: invokestatic 103	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   213: astore 22
    //   215: new 296	com/avg/toolkit/e/g
    //   218: dup
    //   219: aload_1
    //   220: invokespecial 297	com/avg/toolkit/e/g:<init>	(Landroid/content/Context;)V
    //   223: invokevirtual 299	com/avg/toolkit/e/g:c	()Ljava/lang/String;
    //   226: astore 23
    //   228: aload 23
    //   230: invokevirtual 220	java/lang/String:length	()I
    //   233: istore 24
    //   235: aconst_null
    //   236: astore 4
    //   238: iload 24
    //   240: iconst_4
    //   241: if_icmple +18 -> 259
    //   244: aload 23
    //   246: iconst_0
    //   247: bipush 252
    //   249: aload 23
    //   251: invokevirtual 220	java/lang/String:length	()I
    //   254: iadd
    //   255: invokevirtual 254	java/lang/String:substring	(II)Ljava/lang/String;
    //   258: pop
    //   259: aload_1
    //   260: ldc_w 301
    //   263: invokevirtual 307	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   266: checkcast 309	android/telephony/TelephonyManager
    //   269: astore 25
    //   271: aload 25
    //   273: invokevirtual 312	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   276: astore 63
    //   278: aload 63
    //   280: astore 27
    //   282: aload 25
    //   284: invokevirtual 315	android/telephony/TelephonyManager:getNetworkCountryIso	()Ljava/lang/String;
    //   287: astore 62
    //   289: aload 62
    //   291: astore 29
    //   293: aload 27
    //   295: ldc 97
    //   297: invokestatic 103	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   300: astore 30
    //   302: aload_1
    //   303: invokevirtual 319	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   306: aload_1
    //   307: invokevirtual 322	android/content/Context:getPackageName	()Ljava/lang/String;
    //   310: iconst_0
    //   311: invokevirtual 328	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   314: astore 61
    //   316: aload 61
    //   318: astore 32
    //   320: invokestatic 333	com/avg/toolkit/a/a:a	()Lcom/avg/toolkit/a/c;
    //   323: astore 33
    //   325: aconst_null
    //   326: astore 4
    //   328: aload 33
    //   330: ifnull +428 -> 758
    //   333: aload 33
    //   335: invokevirtual 336	com/avg/toolkit/a/c:a	()I
    //   338: istore 34
    //   340: aconst_null
    //   341: checkcast 338	java/util/Locale
    //   344: astore 35
    //   346: bipush 15
    //   348: anewarray 293	java/lang/Object
    //   351: astore 36
    //   353: aload 36
    //   355: iconst_0
    //   356: iconst_2
    //   357: invokestatic 342	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   360: aastore
    //   361: aload 36
    //   363: iconst_1
    //   364: aload 14
    //   366: aastore
    //   367: aload 36
    //   369: iconst_2
    //   370: aload 13
    //   372: aastore
    //   373: aload 36
    //   375: iconst_3
    //   376: aload 11
    //   378: aastore
    //   379: aload 36
    //   381: iconst_4
    //   382: aload 19
    //   384: aastore
    //   385: aload 36
    //   387: iconst_5
    //   388: aload 22
    //   390: aastore
    //   391: aload 36
    //   393: bipush 6
    //   395: getstatic 345	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   398: aastore
    //   399: aload 36
    //   401: bipush 7
    //   403: aload 30
    //   405: aastore
    //   406: aload 36
    //   408: bipush 8
    //   410: iload 16
    //   412: invokestatic 342	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   415: aastore
    //   416: aload 36
    //   418: bipush 9
    //   420: iload 34
    //   422: invokestatic 342	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   425: aastore
    //   426: aload 36
    //   428: bipush 10
    //   430: aload 32
    //   432: getfield 350	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   435: aastore
    //   436: aload 36
    //   438: bipush 11
    //   440: aload 32
    //   442: getfield 353	android/content/pm/PackageInfo:versionCode	I
    //   445: invokestatic 342	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   448: aastore
    //   449: aload 36
    //   451: bipush 12
    //   453: aload 29
    //   455: aastore
    //   456: aload 36
    //   458: bipush 13
    //   460: iload_2
    //   461: invokestatic 342	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   464: aastore
    //   465: aload 36
    //   467: bipush 14
    //   469: aload_3
    //   470: aastore
    //   471: aload 35
    //   473: ldc_w 355
    //   476: aload 36
    //   478: invokestatic 359	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   481: astore 37
    //   483: new 54	java/lang/StringBuilder
    //   486: dup
    //   487: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   490: aload 37
    //   492: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   495: ldc_w 361
    //   498: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   501: invokevirtual 223	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   504: invokevirtual 242	java/lang/String:getBytes	()[B
    //   507: invokestatic 363	a/a/a/a/b/a:f	([B)Ljava/lang/String;
    //   510: astore 38
    //   512: new 365	java/net/URL
    //   515: dup
    //   516: ldc_w 367
    //   519: invokespecial 368	java/net/URL:<init>	(Ljava/lang/String;)V
    //   522: invokevirtual 372	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   525: checkcast 235	java/net/HttpURLConnection
    //   528: astore 39
    //   530: aload 39
    //   532: iconst_0
    //   533: invokevirtual 375	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   536: aload 39
    //   538: ldc_w 377
    //   541: ldc_w 379
    //   544: invokevirtual 383	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   547: aload 39
    //   549: ldc_w 385
    //   552: ldc_w 379
    //   555: invokevirtual 383	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   558: aload 39
    //   560: ldc_w 387
    //   563: invokevirtual 390	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   566: aload 39
    //   568: ldc_w 392
    //   571: ldc 33
    //   573: invokevirtual 383	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   576: aload 39
    //   578: iconst_1
    //   579: invokevirtual 395	java/net/HttpURLConnection:setDoInput	(Z)V
    //   582: aload 39
    //   584: iconst_1
    //   585: invokevirtual 398	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   588: aload 39
    //   590: sipush 10000
    //   593: invokevirtual 402	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   596: aload 39
    //   598: invokevirtual 405	java/net/HttpURLConnection:connect	()V
    //   601: new 407	java/io/DataOutputStream
    //   604: dup
    //   605: aload 39
    //   607: invokevirtual 411	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   610: invokespecial 414	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   613: astore 41
    //   615: aload 41
    //   617: aload 37
    //   619: invokevirtual 417	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   622: aload 41
    //   624: ldc_w 419
    //   627: invokevirtual 417	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   630: aload 41
    //   632: aload 38
    //   634: invokevirtual 417	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   637: aload 41
    //   639: invokevirtual 422	java/io/DataOutputStream:flush	()V
    //   642: aload 41
    //   644: invokevirtual 423	java/io/DataOutputStream:close	()V
    //   647: aload 39
    //   649: sipush 15000
    //   652: invokevirtual 426	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   655: aload 39
    //   657: invokevirtual 429	java/net/HttpURLConnection:getResponseCode	()I
    //   660: istore 42
    //   662: aload 39
    //   664: invokevirtual 432	java/net/HttpURLConnection:getContentLength	()I
    //   667: pop
    //   668: iload 42
    //   670: sipush 200
    //   673: if_icmpeq +91 -> 764
    //   676: aload 39
    //   678: ifnull +8 -> 686
    //   681: aload 39
    //   683: invokevirtual 238	java/net/HttpURLConnection:disconnect	()V
    //   686: iconst_2
    //   687: istore 7
    //   689: goto -635 -> 54
    //   692: iconst_3
    //   693: istore 68
    //   695: goto +564 -> 1259
    //   698: ldc_w 269
    //   701: astore 18
    //   703: aconst_null
    //   704: astore 4
    //   706: goto -553 -> 153
    //   709: astore 26
    //   711: aload 26
    //   713: invokestatic 185	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   716: ldc_w 269
    //   719: astore 27
    //   721: aconst_null
    //   722: astore 4
    //   724: goto -442 -> 282
    //   727: astore 28
    //   729: aload 28
    //   731: invokestatic 185	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   734: ldc_w 269
    //   737: astore 29
    //   739: aconst_null
    //   740: astore 4
    //   742: goto -449 -> 293
    //   745: astore 31
    //   747: aload 31
    //   749: invokestatic 185	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   752: aconst_null
    //   753: astore 32
    //   755: goto -435 -> 320
    //   758: iconst_0
    //   759: istore 34
    //   761: goto -421 -> 340
    //   764: aload_0
    //   765: getfield 50	com/antivirus/core/d/a/f:a	Z
    //   768: ifeq +478 -> 1246
    //   771: aload_0
    //   772: getfield 46	com/antivirus/core/d/a/f:o	Z
    //   775: ifeq +471 -> 1246
    //   778: aload_0
    //   779: aconst_null
    //   780: putfield 48	com/antivirus/core/d/a/f:p	Ljava/util/List;
    //   783: sipush 1024
    //   786: newarray char
    //   788: astore 50
    //   790: new 434	java/io/StringWriter
    //   793: dup
    //   794: invokespecial 435	java/io/StringWriter:<init>	()V
    //   797: astore 51
    //   799: new 437	java/io/InputStreamReader
    //   802: dup
    //   803: aload 39
    //   805: invokevirtual 441	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   808: invokestatic 447	java/nio/charset/Charset:defaultCharset	()Ljava/nio/charset/Charset;
    //   811: invokespecial 450	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   814: astore 52
    //   816: aload_0
    //   817: getfield 50	com/antivirus/core/d/a/f:a	Z
    //   820: ifeq +99 -> 919
    //   823: aload 52
    //   825: aload 50
    //   827: invokevirtual 454	java/io/InputStreamReader:read	([C)I
    //   830: istore 59
    //   832: iload 59
    //   834: iconst_m1
    //   835: if_icmpeq +84 -> 919
    //   838: aload 51
    //   840: aload 50
    //   842: iconst_0
    //   843: iload 59
    //   845: invokevirtual 460	java/io/Writer:write	([CII)V
    //   848: goto -32 -> 816
    //   851: astore 53
    //   853: aload 51
    //   855: astore 47
    //   857: aload 52
    //   859: astore 48
    //   861: aload 39
    //   863: astore 4
    //   865: aload 53
    //   867: astore 46
    //   869: aload 48
    //   871: ifnull +8 -> 879
    //   874: aload 48
    //   876: invokevirtual 461	java/io/InputStreamReader:close	()V
    //   879: aload 47
    //   881: ifnull +8 -> 889
    //   884: aload 47
    //   886: invokevirtual 462	java/io/Writer:close	()V
    //   889: aload 46
    //   891: athrow
    //   892: astore 49
    //   894: aload 49
    //   896: astore 6
    //   898: iconst_0
    //   899: istore 7
    //   901: aload 6
    //   903: invokestatic 185	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   906: aload 4
    //   908: ifnull -854 -> 54
    //   911: aload 4
    //   913: invokevirtual 238	java/net/HttpURLConnection:disconnect	()V
    //   916: goto -862 -> 54
    //   919: aload 52
    //   921: invokevirtual 461	java/io/InputStreamReader:close	()V
    //   924: aload 39
    //   926: invokevirtual 238	java/net/HttpURLConnection:disconnect	()V
    //   929: aload 51
    //   931: invokevirtual 463	java/io/Writer:flush	()V
    //   934: aload 51
    //   936: invokevirtual 294	java/lang/Object:toString	()Ljava/lang/String;
    //   939: astore 55
    //   941: aload 51
    //   943: invokevirtual 462	java/io/Writer:close	()V
    //   946: aload_0
    //   947: getfield 50	com/antivirus/core/d/a/f:a	Z
    //   950: ifeq +78 -> 1028
    //   953: aload 55
    //   955: ldc_w 465
    //   958: iconst_2
    //   959: invokevirtual 469	java/lang/String:split	(Ljava/lang/String;I)[Ljava/lang/String;
    //   962: astore 57
    //   964: aload 57
    //   966: arraylength
    //   967: iconst_2
    //   968: if_icmpne +60 -> 1028
    //   971: new 54	java/lang/StringBuilder
    //   974: dup
    //   975: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   978: aload 57
    //   980: iconst_1
    //   981: aaload
    //   982: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   985: ldc_w 361
    //   988: invokevirtual 79	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   991: invokevirtual 223	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   994: invokevirtual 242	java/lang/String:getBytes	()[B
    //   997: invokestatic 363	a/a/a/a/b/a:f	([B)Ljava/lang/String;
    //   1000: astore 58
    //   1002: aload 57
    //   1004: iconst_0
    //   1005: aaload
    //   1006: invokevirtual 165	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1009: aload 58
    //   1011: invokevirtual 165	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   1014: invokevirtual 171	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1017: ifeq +11 -> 1028
    //   1020: aload_0
    //   1021: aload 57
    //   1023: iconst_1
    //   1024: aaload
    //   1025: invokespecial 470	com/antivirus/core/d/a/f:a	(Ljava/lang/String;)V
    //   1028: iconst_0
    //   1029: ifeq +7 -> 1036
    //   1032: aconst_null
    //   1033: invokevirtual 461	java/io/InputStreamReader:close	()V
    //   1036: aconst_null
    //   1037: astore 44
    //   1039: iconst_0
    //   1040: ifeq +7 -> 1047
    //   1043: aconst_null
    //   1044: invokevirtual 462	java/io/Writer:close	()V
    //   1047: aload 44
    //   1049: ifnull +8 -> 1057
    //   1052: aload 44
    //   1054: invokevirtual 238	java/net/HttpURLConnection:disconnect	()V
    //   1057: iconst_0
    //   1058: istore 7
    //   1060: goto -1006 -> 54
    //   1063: astore 8
    //   1065: aload 4
    //   1067: ifnull +8 -> 1075
    //   1070: aload 4
    //   1072: invokevirtual 238	java/net/HttpURLConnection:disconnect	()V
    //   1075: aload 8
    //   1077: athrow
    //   1078: astore 40
    //   1080: aload 39
    //   1082: astore 4
    //   1084: aload 40
    //   1086: astore 8
    //   1088: goto -23 -> 1065
    //   1091: astore 8
    //   1093: aconst_null
    //   1094: astore 4
    //   1096: goto -31 -> 1065
    //   1099: astore 5
    //   1101: aload 5
    //   1103: astore 6
    //   1105: iconst_1
    //   1106: istore 7
    //   1108: aconst_null
    //   1109: astore 4
    //   1111: goto -210 -> 901
    //   1114: astore 6
    //   1116: aload 39
    //   1118: astore 4
    //   1120: iconst_1
    //   1121: istore 7
    //   1123: goto -222 -> 901
    //   1126: astore 6
    //   1128: aload 39
    //   1130: astore 4
    //   1132: iconst_0
    //   1133: istore 7
    //   1135: goto -234 -> 901
    //   1138: astore 56
    //   1140: aload 56
    //   1142: astore 6
    //   1144: iconst_0
    //   1145: istore 7
    //   1147: aconst_null
    //   1148: astore 4
    //   1150: goto -249 -> 901
    //   1153: astore 45
    //   1155: aload 39
    //   1157: astore 4
    //   1159: aload 45
    //   1161: astore 46
    //   1163: aconst_null
    //   1164: astore 47
    //   1166: aconst_null
    //   1167: astore 48
    //   1169: goto -300 -> 869
    //   1172: astore 60
    //   1174: aload 39
    //   1176: astore 4
    //   1178: aload 60
    //   1180: astore 46
    //   1182: aload 51
    //   1184: astore 47
    //   1186: aconst_null
    //   1187: astore 48
    //   1189: goto -320 -> 869
    //   1192: astore 54
    //   1194: aload 51
    //   1196: astore 47
    //   1198: aload 39
    //   1200: astore 4
    //   1202: aload 54
    //   1204: astore 46
    //   1206: aconst_null
    //   1207: astore 48
    //   1209: goto -340 -> 869
    //   1212: astore 46
    //   1214: aload 51
    //   1216: astore 47
    //   1218: aconst_null
    //   1219: astore 48
    //   1221: aconst_null
    //   1222: astore 4
    //   1224: goto -355 -> 869
    //   1227: astore 46
    //   1229: aconst_null
    //   1230: astore 47
    //   1232: aconst_null
    //   1233: astore 48
    //   1235: aconst_null
    //   1236: astore 4
    //   1238: goto -369 -> 869
    //   1241: astore 21
    //   1243: goto -1037 -> 206
    //   1246: aload 39
    //   1248: astore 44
    //   1250: goto -203 -> 1047
    //   1253: iconst_0
    //   1254: istore 16
    //   1256: goto -1121 -> 135
    //   1259: iload 68
    //   1261: istore 16
    //   1263: goto -1128 -> 135
    //
    // Exception table:
    //   from	to	target	type
    //   271	278	709	java/lang/Exception
    //   282	289	727	java/lang/Exception
    //   302	316	745	java/lang/Exception
    //   816	848	851	finally
    //   919	924	851	finally
    //   874	892	892	java/lang/Exception
    //   3	38	1063	finally
    //   57	167	1063	finally
    //   167	202	1063	finally
    //   206	271	1063	finally
    //   271	278	1063	finally
    //   282	289	1063	finally
    //   293	302	1063	finally
    //   302	316	1063	finally
    //   320	530	1063	finally
    //   698	752	1063	finally
    //   874	892	1063	finally
    //   901	906	1063	finally
    //   530	668	1078	finally
    //   764	783	1078	finally
    //   1032	1047	1091	finally
    //   3	38	1099	java/lang/Exception
    //   57	167	1099	java/lang/Exception
    //   206	271	1099	java/lang/Exception
    //   293	302	1099	java/lang/Exception
    //   320	530	1099	java/lang/Exception
    //   698	752	1099	java/lang/Exception
    //   530	668	1114	java/lang/Exception
    //   764	783	1126	java/lang/Exception
    //   1032	1047	1138	java/lang/Exception
    //   783	799	1153	finally
    //   799	816	1172	finally
    //   924	929	1192	finally
    //   929	946	1212	finally
    //   946	1028	1227	finally
    //   167	202	1241	java/lang/Exception
  }

  public e a()
  {
    return e.b;
  }

  public boolean a(Context paramContext)
  {
    b localb = new b(paramContext);
    if ((localb.q() > 0) || (localb.s() > 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean a(Context paramContext, Message paramMessage)
  {
    Bundle localBundle = (Bundle)paramMessage.obj;
    ArrayList localArrayList = localBundle.getStringArrayList("basenames");
    Serializable localSerializable = localBundle.getSerializable("detection_info");
    boolean bool;
    if ((localArrayList == null) || (localSerializable == null))
    {
      com.avg.toolkit.f.a.a();
      bool = false;
    }
    TreeMap localTreeMap;
    while (true)
    {
      return bool;
      if (!(localSerializable instanceof TreeMap))
      {
        com.avg.toolkit.f.a.a();
        bool = false;
      }
      else
      {
        localTreeMap = (TreeMap)localSerializable;
        if (localTreeMap.size() <= 0)
        {
          com.avg.toolkit.f.a.a();
          bool = false;
        }
        else
        {
          Object localObject = localTreeMap.firstKey();
          if ((!(localObject instanceof String)) || (!(localTreeMap.get(localObject) instanceof com.antivirus.core.scanners.f)))
          {
            com.avg.toolkit.f.a.a();
            bool = false;
          }
          else if ((localArrayList.size() == 0) || (localArrayList.size() != localTreeMap.size()))
          {
            com.avg.toolkit.f.a.a();
            bool = false;
          }
          else
          {
            Iterator localIterator = localTreeMap.values().iterator();
            com.antivirus.core.scanners.f localf;
            do
            {
              if (!localIterator.hasNext())
                break;
              localf = (com.antivirus.core.scanners.f)localIterator.next();
            }
            while (((localf.a.equals("")) || (localf.a.matches("[0-9a-fA-F]{40}"))) && ((localf.b.equals("")) || (localf.b.matches("[0-9a-fA-F]{40}"))));
            com.avg.toolkit.f.a.a();
            bool = false;
          }
        }
      }
    }
    while (true)
    {
      StringBuilder localStringBuilder;
      b localb;
      String str2;
      try
      {
        localStringBuilder = a(localArrayList, localTreeMap);
        localb = new b(paramContext);
        i = localb.t();
        String str1 = localb.p();
        str2 = localb.r();
        int i1;
        if (i == 0)
        {
          i1 = str1.length();
          if (i1 + localStringBuilder.length() > 50000)
          {
            if (i != 0)
              break label541;
            i = 1;
            localb.d(i);
            if (i == 0)
            {
              localb.j("");
              localb.b(0);
            }
          }
          else
          {
            if (i != 0)
              break label467;
            if (str1.equals(""))
              localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
            localb.j(localStringBuilder.toString() + str1);
            localb.b(localb.q() + localArrayList.size());
            break label535;
          }
        }
        else
        {
          i1 = str2.length();
          continue;
        }
        localb.k("");
        localb.c(0);
        continue;
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
        bool = false;
      }
      break;
      label467: if (str2.equals(""))
        localStringBuilder.deleteCharAt(-1 + localStringBuilder.length());
      localb.k(localStringBuilder.toString() + str2);
      localb.c(localb.s() + localArrayList.size());
      label535: bool = true;
      break;
      label541: int i = 0;
    }
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    return true;
  }

  public boolean b(Context paramContext)
  {
    int i = c(paramContext);
    boolean bool = false;
    if (i == 1);
    while (true)
    {
      return bool;
      if (i == 2)
      {
        this.m = (1 + this.m);
        int i1 = this.m;
        bool = false;
        if (i1 < 3);
      }
      else
      {
        this.m = 0;
        b localb = new b(paramContext);
        localb.j("");
        localb.b(0);
        localb.k("");
        localb.c(0);
        bool = true;
      }
    }
  }

  public int b_()
  {
    return 2006;
  }

  public String c()
  {
    return null;
  }

  public List e()
  {
    return this.p;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.d.a.f
 * JD-Core Version:    0.6.2
 */