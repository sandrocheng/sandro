package com.avg.toolkit.a;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.avg.toolkit.e;
import com.avg.toolkit.f;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import junit.framework.Assert;

public class a
  implements e
{
  private static c i = null;
  private final int a = 3;
  private final int b = 1024;
  private final String c = "csr_erl.obj";
  private final int d = 100;
  private com.avg.toolkit.RecurringTasks.b e;
  private Context f;
  private com.avg.toolkit.e.a g;
  private com.avg.toolkit.UID.a h;
  private LinkedList j;

  public a(Context paramContext, com.avg.toolkit.e.a parama, Properties paramProperties, com.avg.toolkit.UID.a parama1)
  {
    this.f = paramContext;
    this.g = parama;
    this.h = parama1;
    String str = paramProperties.getProperty("productID");
    Assert.assertNotNull("productID not found in Cloud Services properties file", str);
    int k = Integer.parseInt(str);
    c[] arrayOfc = c.values();
    int m = arrayOfc.length;
    int n = 0;
    while (true)
    {
      if (n < m)
      {
        c localc = arrayOfc[n];
        if (k == localc.a())
          i = localc;
      }
      else
      {
        Assert.assertNotNull("unkown productID in Cloud Services properties file", i);
      }
      try
      {
        this.j = ((LinkedList)new ObjectInputStream(this.f.openFileInput("csr_erl.obj")).readObject());
        return;
        n++;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        while (true)
          if (this.j == null)
            this.j = new LinkedList();
      }
      catch (Exception localException)
      {
        while (true)
        {
          com.avg.toolkit.f.a.a(localException);
          if (this.j == null)
            this.j = new LinkedList();
        }
      }
      finally
      {
        if (this.j == null)
          this.j = new LinkedList();
      }
    }
  }

  // ERROR //
  private int a(Context paramContext, int paramInt, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 113	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   10: ldc 116
    //   12: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: getstatic 28	com/avg/toolkit/a/a:i	Lcom/avg/toolkit/a/c;
    //   18: invokevirtual 123	com/avg/toolkit/a/c:b	()Ljava/lang/String;
    //   21: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   27: astore 7
    //   29: aload_0
    //   30: getfield 52	com/avg/toolkit/a/a:h	Lcom/avg/toolkit/UID/a;
    //   33: invokevirtual 130	com/avg/toolkit/UID/a:a	()Ljava/lang/String;
    //   36: invokevirtual 136	java/lang/String:getBytes	()[B
    //   39: invokestatic 141	a/a/a/a/b/a:e	([B)Ljava/lang/String;
    //   42: astore 8
    //   44: aload 8
    //   46: bipush 32
    //   48: invokevirtual 145	java/lang/String:substring	(I)Ljava/lang/String;
    //   51: astore 9
    //   53: aload 8
    //   55: iconst_0
    //   56: bipush 32
    //   58: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   61: astore 10
    //   63: aload_0
    //   64: getfield 50	com/avg/toolkit/a/a:g	Lcom/avg/toolkit/e/a;
    //   67: invokevirtual 153	com/avg/toolkit/e/a:b	()Z
    //   70: ifeq +531 -> 601
    //   73: iconst_1
    //   74: istore 11
    //   76: getstatic 158	android/os/Build:MODEL	Ljava/lang/String;
    //   79: ifnull +528 -> 607
    //   82: getstatic 158	android/os/Build:MODEL	Ljava/lang/String;
    //   85: astore 12
    //   87: aload 12
    //   89: ldc 160
    //   91: invokestatic 166	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   94: astore 13
    //   96: ldc 168
    //   98: astore 14
    //   100: getstatic 173	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   103: invokestatic 74	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   106: iconst_3
    //   107: if_icmple +23 -> 130
    //   110: ldc 155
    //   112: ldc 175
    //   114: invokevirtual 181	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   117: aconst_null
    //   118: invokevirtual 187	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   121: invokevirtual 188	java/lang/Object:toString	()Ljava/lang/String;
    //   124: astore 48
    //   126: aload 48
    //   128: astore 14
    //   130: aload 14
    //   132: ldc 160
    //   134: invokestatic 166	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   137: astore 16
    //   139: new 190	com/avg/toolkit/e/g
    //   142: dup
    //   143: aload_1
    //   144: invokespecial 193	com/avg/toolkit/e/g:<init>	(Landroid/content/Context;)V
    //   147: invokevirtual 195	com/avg/toolkit/e/g:c	()Ljava/lang/String;
    //   150: astore 17
    //   152: aload 17
    //   154: invokevirtual 198	java/lang/String:length	()I
    //   157: iconst_4
    //   158: if_icmple +711 -> 869
    //   161: aload 17
    //   163: iconst_0
    //   164: bipush 252
    //   166: aload 17
    //   168: invokevirtual 198	java/lang/String:length	()I
    //   171: iadd
    //   172: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   175: astore 18
    //   177: aload_1
    //   178: ldc 200
    //   180: invokevirtual 204	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   183: checkcast 206	android/telephony/TelephonyManager
    //   186: astore 19
    //   188: aload 19
    //   190: invokevirtual 209	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   193: astore 47
    //   195: aload 47
    //   197: astore 21
    //   199: aload 21
    //   201: ldc 160
    //   203: invokestatic 166	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   206: astore 22
    //   208: aload_3
    //   209: ldc 160
    //   211: invokestatic 166	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   214: astore 23
    //   216: aload_1
    //   217: invokevirtual 213	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   220: aload_1
    //   221: invokevirtual 216	android/content/Context:getPackageName	()Ljava/lang/String;
    //   224: iconst_0
    //   225: invokevirtual 222	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   228: astore 24
    //   230: aconst_null
    //   231: checkcast 224	java/util/Locale
    //   234: astore 25
    //   236: bipush 17
    //   238: anewarray 4	java/lang/Object
    //   241: astore 26
    //   243: aload 26
    //   245: iconst_0
    //   246: iconst_3
    //   247: invokestatic 228	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   250: aastore
    //   251: aload 26
    //   253: iconst_1
    //   254: getstatic 28	com/avg/toolkit/a/a:i	Lcom/avg/toolkit/a/c;
    //   257: invokevirtual 83	com/avg/toolkit/a/c:a	()I
    //   260: invokestatic 228	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   263: aastore
    //   264: aload 26
    //   266: iconst_2
    //   267: aload 24
    //   269: getfield 233	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   272: aastore
    //   273: aload 26
    //   275: iconst_3
    //   276: aload 24
    //   278: getfield 236	android/content/pm/PackageInfo:versionCode	I
    //   281: invokestatic 228	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   284: aastore
    //   285: aload 26
    //   287: iconst_4
    //   288: aload 10
    //   290: aastore
    //   291: aload 26
    //   293: iconst_5
    //   294: aload 9
    //   296: aastore
    //   297: aload 26
    //   299: bipush 6
    //   301: iload 11
    //   303: invokestatic 228	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   306: aastore
    //   307: aload 26
    //   309: bipush 7
    //   311: ldc 168
    //   313: aastore
    //   314: aload 26
    //   316: bipush 8
    //   318: iload_2
    //   319: invokestatic 228	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   322: aastore
    //   323: aload 26
    //   325: bipush 9
    //   327: aload 23
    //   329: aastore
    //   330: aload 26
    //   332: bipush 10
    //   334: iconst_0
    //   335: invokestatic 228	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   338: aastore
    //   339: aload 26
    //   341: bipush 11
    //   343: new 113	java/lang/StringBuilder
    //   346: dup
    //   347: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   350: ldc 238
    //   352: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   355: getstatic 173	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   358: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   364: aastore
    //   365: aload 26
    //   367: bipush 12
    //   369: aload 16
    //   371: aastore
    //   372: aload 26
    //   374: bipush 13
    //   376: aload 13
    //   378: aastore
    //   379: aload 26
    //   381: bipush 14
    //   383: aload 18
    //   385: aastore
    //   386: aload 26
    //   388: bipush 15
    //   390: aload 22
    //   392: aastore
    //   393: aload 26
    //   395: bipush 16
    //   397: aload_0
    //   398: getfield 50	com/avg/toolkit/a/a:g	Lcom/avg/toolkit/e/a;
    //   401: getfield 241	com/avg/toolkit/e/a:o	I
    //   404: invokestatic 228	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   407: aastore
    //   408: new 132	java/lang/String
    //   411: dup
    //   412: aload 25
    //   414: ldc 243
    //   416: aload 26
    //   418: invokestatic 247	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   421: invokevirtual 136	java/lang/String:getBytes	()[B
    //   424: iconst_0
    //   425: invokestatic 252	a/a/a/a/a/a:a	([BZ)[B
    //   428: invokespecial 255	java/lang/String:<init>	([B)V
    //   431: astore 27
    //   433: new 113	java/lang/StringBuilder
    //   436: dup
    //   437: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   440: aload 27
    //   442: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   445: ldc_w 257
    //   448: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   451: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   454: invokevirtual 136	java/lang/String:getBytes	()[B
    //   457: invokestatic 259	a/a/a/a/b/a:f	([B)Ljava/lang/String;
    //   460: astore 28
    //   462: new 261	java/net/URL
    //   465: dup
    //   466: new 113	java/lang/StringBuilder
    //   469: dup
    //   470: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   473: aload 7
    //   475: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   478: ldc_w 263
    //   481: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   484: aload 27
    //   486: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   489: ldc_w 265
    //   492: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   495: aload 28
    //   497: invokevirtual 120	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   500: invokevirtual 126	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   503: invokespecial 268	java/net/URL:<init>	(Ljava/lang/String;)V
    //   506: invokevirtual 272	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   509: checkcast 274	java/net/HttpURLConnection
    //   512: astore 29
    //   514: aload 29
    //   516: iconst_0
    //   517: invokevirtual 278	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   520: aload 29
    //   522: ldc_w 280
    //   525: ldc_w 282
    //   528: invokevirtual 286	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   531: aload 29
    //   533: ldc_w 288
    //   536: ldc_w 282
    //   539: invokevirtual 286	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   542: aload 29
    //   544: ldc_w 290
    //   547: invokevirtual 293	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   550: aload 29
    //   552: ldc_w 295
    //   555: getstatic 28	com/avg/toolkit/a/a:i	Lcom/avg/toolkit/a/c;
    //   558: invokevirtual 123	com/avg/toolkit/a/c:b	()Ljava/lang/String;
    //   561: invokevirtual 286	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   564: aload 29
    //   566: invokevirtual 298	java/net/HttpURLConnection:connect	()V
    //   569: aload 29
    //   571: invokevirtual 301	java/net/HttpURLConnection:getResponseCode	()I
    //   574: istore 31
    //   576: aload 29
    //   578: invokevirtual 304	java/net/HttpURLConnection:getContentLength	()I
    //   581: pop
    //   582: iload 31
    //   584: sipush 200
    //   587: if_icmpeq +64 -> 651
    //   590: aload 29
    //   592: invokevirtual 307	java/net/HttpURLConnection:disconnect	()V
    //   595: iconst_2
    //   596: istore 6
    //   598: iload 6
    //   600: ireturn
    //   601: iconst_3
    //   602: istore 11
    //   604: goto -528 -> 76
    //   607: ldc 168
    //   609: astore 12
    //   611: goto -524 -> 87
    //   614: astore 20
    //   616: aload 20
    //   618: invokestatic 110	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   621: ldc 168
    //   623: astore 21
    //   625: goto -426 -> 199
    //   628: astore 5
    //   630: aload 4
    //   632: ifnull +8 -> 640
    //   635: aload 4
    //   637: invokevirtual 307	java/net/HttpURLConnection:disconnect	()V
    //   640: aload 5
    //   642: invokestatic 110	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   645: iconst_1
    //   646: istore 6
    //   648: goto -50 -> 598
    //   651: aload 29
    //   653: invokevirtual 311	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   656: astore 36
    //   658: sipush 1024
    //   661: newarray char
    //   663: astore 37
    //   665: new 313	java/io/StringWriter
    //   668: dup
    //   669: invokespecial 314	java/io/StringWriter:<init>	()V
    //   672: astore 38
    //   674: new 316	java/io/InputStreamReader
    //   677: dup
    //   678: aload 36
    //   680: invokestatic 322	java/nio/charset/Charset:defaultCharset	()Ljava/nio/charset/Charset;
    //   683: invokespecial 325	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   686: astore 39
    //   688: aload 39
    //   690: aload 37
    //   692: invokevirtual 329	java/io/InputStreamReader:read	([C)I
    //   695: istore 40
    //   697: iload 40
    //   699: iconst_m1
    //   700: if_icmpeq +47 -> 747
    //   703: aload 38
    //   705: aload 37
    //   707: iconst_0
    //   708: iload 40
    //   710: invokevirtual 335	java/io/Writer:write	([CII)V
    //   713: goto -25 -> 688
    //   716: astore 33
    //   718: aload 29
    //   720: astore 34
    //   722: aload 33
    //   724: astore 35
    //   726: aload 34
    //   728: ifnull +8 -> 736
    //   731: aload 34
    //   733: invokevirtual 307	java/net/HttpURLConnection:disconnect	()V
    //   736: aload 35
    //   738: invokestatic 110	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   741: iconst_0
    //   742: istore 6
    //   744: goto -146 -> 598
    //   747: aload 36
    //   749: invokevirtual 340	java/io/InputStream:close	()V
    //   752: aload 29
    //   754: invokevirtual 307	java/net/HttpURLConnection:disconnect	()V
    //   757: aload 38
    //   759: invokevirtual 188	java/lang/Object:toString	()Ljava/lang/String;
    //   762: astore 41
    //   764: aload 41
    //   766: ldc_w 342
    //   769: invokevirtual 345	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   772: istore 42
    //   774: iload 42
    //   776: iconst_m1
    //   777: if_icmpne +9 -> 786
    //   780: iconst_0
    //   781: istore 6
    //   783: goto -185 -> 598
    //   786: iload 42
    //   788: bipush 9
    //   790: iadd
    //   791: istore 43
    //   793: aload 41
    //   795: invokevirtual 198	java/lang/String:length	()I
    //   798: istore 44
    //   800: iload 43
    //   802: istore 45
    //   804: iload 45
    //   806: iload 44
    //   808: if_icmpge +68 -> 876
    //   811: aload 41
    //   813: iload 45
    //   815: invokevirtual 349	java/lang/String:charAt	(I)C
    //   818: invokestatic 355	java/lang/Character:isDigit	(C)Z
    //   821: ifeq +55 -> 876
    //   824: iinc 45 1
    //   827: goto -23 -> 804
    //   830: aload 41
    //   832: iload 43
    //   834: iload 45
    //   836: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   839: pop
    //   840: goto -99 -> 741
    //   843: astore 35
    //   845: aconst_null
    //   846: astore 34
    //   848: goto -122 -> 726
    //   851: astore 30
    //   853: aload 29
    //   855: astore 4
    //   857: aload 30
    //   859: astore 5
    //   861: goto -231 -> 630
    //   864: astore 15
    //   866: goto -736 -> 130
    //   869: aload 17
    //   871: astore 18
    //   873: goto -696 -> 177
    //   876: iload 43
    //   878: iload 45
    //   880: if_icmpne -50 -> 830
    //   883: iconst_0
    //   884: istore 6
    //   886: goto -288 -> 598
    //
    // Exception table:
    //   from	to	target	type
    //   188	195	614	java/lang/Exception
    //   3	100	628	java/lang/Exception
    //   130	188	628	java/lang/Exception
    //   199	514	628	java/lang/Exception
    //   607	621	628	java/lang/Exception
    //   651	713	716	java/lang/Exception
    //   747	757	716	java/lang/Exception
    //   757	840	843	java/lang/Exception
    //   514	595	851	java/lang/Exception
    //   100	126	864	java/lang/Exception
  }

  public static c a()
  {
    return i;
  }

  private String a(String paramString)
  {
    String str1;
    if ((paramString == null) || (paramString.length() > 600))
      str1 = "";
    while (true)
    {
      return str1;
      String[] arrayOfString1 = paramString.split("&");
      HashMap localHashMap = new HashMap();
      int k = arrayOfString1.length;
      int m = 0;
      if (m < k)
      {
        String[] arrayOfString2 = arrayOfString1[m].split("=");
        if (arrayOfString2.length != 2);
        while (true)
        {
          m++;
          break;
          localHashMap.put(arrayOfString2[0], arrayOfString2[1]);
        }
      }
      StringBuilder localStringBuilder = new StringBuilder();
      String str2 = (String)localHashMap.get("utm_source");
      if (TextUtils.isEmpty(str2))
      {
        str1 = "";
      }
      else
      {
        localStringBuilder.append(str2);
        String str3 = (String)localHashMap.get("utm_medium");
        if (TextUtils.isEmpty(str3))
        {
          str1 = "";
        }
        else
        {
          localStringBuilder.append("&");
          localStringBuilder.append(str3);
          String str4 = (String)localHashMap.get("utm_campaign");
          if (TextUtils.isEmpty(str4))
          {
            str1 = "";
          }
          else
          {
            localStringBuilder.append("&");
            localStringBuilder.append(str4);
            localStringBuilder.append("&");
            String str5 = (String)localHashMap.get("utm_term");
            if ((str5 != null) && (!str5.equals("")))
              localStringBuilder.append(str5);
            localStringBuilder.append("&");
            String str6 = (String)localHashMap.get("utm_content");
            if ((str6 != null) && (!str6.equals("")))
              localStringBuilder.append(str6);
            str1 = localStringBuilder.toString();
          }
        }
      }
    }
  }

  private void c()
  {
    Iterator localIterator = this.j.iterator();
    while (true)
    {
      int k;
      if (localIterator.hasNext())
      {
        d locald = (d)localIterator.next();
        k = a(this.f, locald.a, locald.b);
        if (k != 1);
      }
      else
      {
        return;
      }
      if (k == 2)
      {
        localIterator.remove();
        e();
      }
      else
      {
        localIterator.remove();
        e();
      }
    }
  }

  private void d()
  {
    if (a(this.f, b.a(b.g), "") == 0)
      this.e.a(this.f);
    c();
  }

  private void e()
  {
    try
    {
      FileOutputStream localFileOutputStream = this.f.openFileOutput("csr_erl.obj", 0);
      ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localFileOutputStream);
      localObjectOutputStream.writeObject(this.j);
      localObjectOutputStream.close();
      localFileOutputStream.close();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public void a(Bundle paramBundle)
  {
    if ((!this.e.a(this.f, paramBundle)) || (this.h.a() == null));
    while (true)
    {
      return;
      d();
    }
  }

  public void a(com.avg.toolkit.e.a parama)
  {
  }

  public void a(List paramList)
  {
  }

  public void a(boolean paramBoolean)
  {
    this.e = new com.avg.toolkit.RecurringTasks.b(this.f, "CSR", 86400000L, true, true, 8000, true);
  }

  public int b()
  {
    return 8000;
  }

  // ERROR //
  public void b(Bundle paramBundle)
  {
    // Byte code:
    //   0: ldc 168
    //   2: astore_2
    //   3: aload_1
    //   4: ifnull +166 -> 170
    //   7: aload_1
    //   8: ldc_w 468
    //   11: iconst_m1
    //   12: invokevirtual 474	android/os/Bundle:getInt	(Ljava/lang/String;I)I
    //   15: istore 11
    //   17: iload 11
    //   19: istore_3
    //   20: aload_1
    //   21: ldc_w 476
    //   24: invokevirtual 479	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   27: astore_2
    //   28: aload_2
    //   29: ifnonnull +6 -> 35
    //   32: ldc 168
    //   34: astore_2
    //   35: iload_3
    //   36: istore 4
    //   38: iload 4
    //   40: iconst_m1
    //   41: if_icmpne +31 -> 72
    //   44: return
    //   45: astore 7
    //   47: iconst_m1
    //   48: istore 4
    //   50: aload_2
    //   51: astore 8
    //   53: aload 7
    //   55: astore 9
    //   57: aload 8
    //   59: astore 10
    //   61: aload 9
    //   63: invokestatic 110	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   66: aload 10
    //   68: astore_2
    //   69: goto -31 -> 38
    //   72: iload 4
    //   74: getstatic 481	com/avg/toolkit/a/b:b	Lcom/avg/toolkit/a/b;
    //   77: invokestatic 426	com/avg/toolkit/a/b:a	(Lcom/avg/toolkit/a/b;)I
    //   80: if_icmpne +13 -> 93
    //   83: aload_0
    //   84: aload_2
    //   85: invokespecial 483	com/avg/toolkit/a/a:a	(Ljava/lang/String;)Ljava/lang/String;
    //   88: astore_2
    //   89: aload_2
    //   90: ifnull -46 -> 44
    //   93: aload_0
    //   94: getfield 104	com/avg/toolkit/a/a:j	Ljava/util/LinkedList;
    //   97: invokevirtual 486	java/util/LinkedList:size	()I
    //   100: bipush 100
    //   102: if_icmplt +11 -> 113
    //   105: aload_0
    //   106: getfield 104	com/avg/toolkit/a/a:j	Ljava/util/LinkedList;
    //   109: invokevirtual 489	java/util/LinkedList:removeFirst	()Ljava/lang/Object;
    //   112: pop
    //   113: new 408	com/avg/toolkit/a/d
    //   116: dup
    //   117: iload 4
    //   119: aload_2
    //   120: invokespecial 492	com/avg/toolkit/a/d:<init>	(ILjava/lang/String;)V
    //   123: astore 5
    //   125: aload_0
    //   126: getfield 104	com/avg/toolkit/a/a:j	Ljava/util/LinkedList;
    //   129: aload 5
    //   131: invokevirtual 495	java/util/LinkedList:addLast	(Ljava/lang/Object;)V
    //   134: aload_0
    //   135: invokespecial 418	com/avg/toolkit/a/a:e	()V
    //   138: aload_0
    //   139: getfield 52	com/avg/toolkit/a/a:h	Lcom/avg/toolkit/UID/a;
    //   142: invokevirtual 130	com/avg/toolkit/UID/a:a	()Ljava/lang/String;
    //   145: ifnull -101 -> 44
    //   148: aload_0
    //   149: invokespecial 434	com/avg/toolkit/a/a:c	()V
    //   152: goto -108 -> 44
    //   155: astore 12
    //   157: iload_3
    //   158: istore 4
    //   160: aload_2
    //   161: astore 10
    //   163: aload 12
    //   165: astore 9
    //   167: goto -106 -> 61
    //   170: iconst_m1
    //   171: istore_3
    //   172: goto -137 -> 35
    //
    // Exception table:
    //   from	to	target	type
    //   7	17	45	java/lang/Exception
    //   20	35	155	java/lang/Exception
  }

  public void b(com.avg.toolkit.e.a parama)
  {
    this.g = parama;
    f.a(this.f, 8000, b.e.a(), null);
  }

  public void onDestroy()
  {
    this.e.b(this.f);
    e();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.a.a
 * JD-Core Version:    0.6.2
 */