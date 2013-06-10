package org.antivirus.core.a;

import android.os.Build;
import android.os.Build.VERSION;
import android.util.Xml;
import java.net.URI;
import org.a.a.a.b.a;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.xmlpull.v1.XmlSerializer;

public final class ab
{
  private final String a = "methodCall";
  private final String b = "methodName";
  private final String c = "methodResponse";
  private final String d = "params";
  private final String e = "param";
  private final String f = "fault";
  private final String g = "faultCode";
  private final String h = "faultString";
  private final String i = "d5544fG==*%877hT--==QQUPWeeY89904469==";
  private HttpClient j;
  private HttpPost k;
  private XmlSerializer l;

  public ab(URI paramURI, int paramInt, String paramString)
  {
    this.k = new HttpPost(paramURI);
    this.k.addHeader("Content-Type", "text/xml");
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = Build.VERSION.RELEASE;
    arrayOfObject[1] = Build.DEVICE;
    arrayOfObject[2] = Integer.toString(paramInt);
    arrayOfObject[3] = "3.0.3";
    arrayOfObject[4] = "3.0.3";
    arrayOfObject[5] = "174757";
    arrayOfObject[6] = "Antivirus Pro";
    String str = String.format("Mozilla/5.0 (Linux; U; Android %s; en-us; %s) %s/%s (KHTML, like Gecko) Version/%s.%s/%s", arrayOfObject);
    this.k.addHeader("User-Agent", str);
    this.k.addHeader("x-auth-token", a.b(paramString + "d5544fG==*%877hT--==QQUPWeeY89904469=="));
    HttpParams localHttpParams = this.k.getParams();
    HttpProtocolParams.setUseExpectContinue(localHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localHttpParams, 10000);
    HttpConnectionParams.setSoTimeout(localHttpParams, 15000);
    this.j = new DefaultHttpClient();
    this.l = Xml.newSerializer();
  }

  public static String a(String paramString)
  {
    if (paramString == null);
    StringBuilder localStringBuilder;
    for (String str = ""; ; str = localStringBuilder.toString())
    {
      return str;
      localStringBuilder = new StringBuilder();
      for (int m = 0; m < paramString.length(); m++)
      {
        char c1 = paramString.charAt(m);
        if ((c1 >= ' ') || (c1 == '\t') || (c1 == '\n'))
          localStringBuilder.append(c1);
      }
    }
  }

  // ERROR //
  public final Object a(String paramString1, Object[] paramArrayOfObject, java.util.HashMap paramHashMap, String paramString2, java.io.File paramFile)
  {
    // Byte code:
    //   0: new 185	java/io/StringWriter
    //   3: dup
    //   4: invokespecial 186	java/io/StringWriter:<init>	()V
    //   7: astore 6
    //   9: aload_0
    //   10: getfield 157	org/antivirus/core/a/ab:l	Lorg/xmlpull/v1/XmlSerializer;
    //   13: aload 6
    //   15: invokeinterface 192 2 0
    //   20: aload_0
    //   21: getfield 157	org/antivirus/core/a/ab:l	Lorg/xmlpull/v1/XmlSerializer;
    //   24: aconst_null
    //   25: aconst_null
    //   26: invokeinterface 196 3 0
    //   31: aload_0
    //   32: getfield 157	org/antivirus/core/a/ab:l	Lorg/xmlpull/v1/XmlSerializer;
    //   35: aconst_null
    //   36: ldc 27
    //   38: invokeinterface 200 3 0
    //   43: pop
    //   44: aload_0
    //   45: getfield 157	org/antivirus/core/a/ab:l	Lorg/xmlpull/v1/XmlSerializer;
    //   48: aconst_null
    //   49: ldc 31
    //   51: invokeinterface 200 3 0
    //   56: aload_1
    //   57: invokeinterface 204 2 0
    //   62: aconst_null
    //   63: ldc 31
    //   65: invokeinterface 207 3 0
    //   70: pop
    //   71: aload_0
    //   72: getfield 157	org/antivirus/core/a/ab:l	Lorg/xmlpull/v1/XmlSerializer;
    //   75: aconst_null
    //   76: ldc 39
    //   78: invokeinterface 200 3 0
    //   83: pop
    //   84: aload_0
    //   85: getfield 157	org/antivirus/core/a/ab:l	Lorg/xmlpull/v1/XmlSerializer;
    //   88: aconst_null
    //   89: ldc 43
    //   91: invokeinterface 200 3 0
    //   96: aconst_null
    //   97: ldc 209
    //   99: invokeinterface 200 3 0
    //   104: pop
    //   105: aload_0
    //   106: getfield 157	org/antivirus/core/a/ab:l	Lorg/xmlpull/v1/XmlSerializer;
    //   109: aload 4
    //   111: invokestatic 214	org/antivirus/core/a/ad:a	(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    //   114: aload_0
    //   115: getfield 157	org/antivirus/core/a/ab:l	Lorg/xmlpull/v1/XmlSerializer;
    //   118: aconst_null
    //   119: ldc 209
    //   121: invokeinterface 207 3 0
    //   126: aconst_null
    //   127: ldc 43
    //   129: invokeinterface 207 3 0
    //   134: pop
    //   135: aload_2
    //   136: ifnull +77 -> 213
    //   139: aload_2
    //   140: arraylength
    //   141: ifeq +72 -> 213
    //   144: iconst_0
    //   145: istore 53
    //   147: iload 53
    //   149: aload_2
    //   150: arraylength
    //   151: if_icmpge +62 -> 213
    //   154: aload_0
    //   155: getfield 157	org/antivirus/core/a/ab:l	Lorg/xmlpull/v1/XmlSerializer;
    //   158: aconst_null
    //   159: ldc 43
    //   161: invokeinterface 200 3 0
    //   166: aconst_null
    //   167: ldc 209
    //   169: invokeinterface 200 3 0
    //   174: pop
    //   175: aload_0
    //   176: getfield 157	org/antivirus/core/a/ab:l	Lorg/xmlpull/v1/XmlSerializer;
    //   179: aload_2
    //   180: iload 53
    //   182: aaload
    //   183: invokestatic 214	org/antivirus/core/a/ad:a	(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    //   186: aload_0
    //   187: getfield 157	org/antivirus/core/a/ab:l	Lorg/xmlpull/v1/XmlSerializer;
    //   190: aconst_null
    //   191: ldc 209
    //   193: invokeinterface 207 3 0
    //   198: aconst_null
    //   199: ldc 43
    //   201: invokeinterface 207 3 0
    //   206: pop
    //   207: iinc 53 1
    //   210: goto -63 -> 147
    //   213: aload_0
    //   214: getfield 157	org/antivirus/core/a/ab:l	Lorg/xmlpull/v1/XmlSerializer;
    //   217: aconst_null
    //   218: ldc 39
    //   220: invokeinterface 207 3 0
    //   225: pop
    //   226: aload_0
    //   227: getfield 157	org/antivirus/core/a/ab:l	Lorg/xmlpull/v1/XmlSerializer;
    //   230: aconst_null
    //   231: ldc 27
    //   233: invokeinterface 207 3 0
    //   238: pop
    //   239: aload_0
    //   240: getfield 157	org/antivirus/core/a/ab:l	Lorg/xmlpull/v1/XmlSerializer;
    //   243: invokeinterface 217 1 0
    //   248: new 219	org/apache/http/entity/StringEntity
    //   251: dup
    //   252: aload 6
    //   254: invokevirtual 220	java/io/StringWriter:toString	()Ljava/lang/String;
    //   257: invokespecial 223	org/apache/http/entity/StringEntity:<init>	(Ljava/lang/String;)V
    //   260: astore 18
    //   262: aload_3
    //   263: ifnull +100 -> 363
    //   266: aload_3
    //   267: invokevirtual 229	java/util/HashMap:keySet	()Ljava/util/Set;
    //   270: invokeinterface 235 1 0
    //   275: astore 51
    //   277: aload 51
    //   279: invokeinterface 241 1 0
    //   284: ifeq +79 -> 363
    //   287: aload 51
    //   289: invokeinterface 245 1 0
    //   294: checkcast 102	java/lang/String
    //   297: astore 52
    //   299: aload_0
    //   300: getfield 68	org/antivirus/core/a/ab:k	Lorg/apache/http/client/methods/HttpPost;
    //   303: ldc 247
    //   305: new 112	java/lang/StringBuilder
    //   308: dup
    //   309: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   312: aload 52
    //   314: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: ldc 249
    //   319: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: aload_3
    //   323: aload 52
    //   325: invokevirtual 253	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   328: checkcast 102	java/lang/String
    //   331: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   337: invokevirtual 256	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   340: goto -63 -> 277
    //   343: astore 10
    //   345: ldc_w 258
    //   348: invokestatic 263	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   351: new 177	org/antivirus/core/a/ac
    //   354: dup
    //   355: aload_0
    //   356: aload 10
    //   358: iconst_0
    //   359: invokespecial 266	org/antivirus/core/a/ac:<init>	(Lorg/antivirus/core/a/ab;Ljava/lang/Exception;Z)V
    //   362: athrow
    //   363: aload_0
    //   364: getfield 68	org/antivirus/core/a/ab:k	Lorg/apache/http/client/methods/HttpPost;
    //   367: aload 18
    //   369: invokevirtual 270	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   372: aload_0
    //   373: getfield 149	org/antivirus/core/a/ab:j	Lorg/apache/http/client/HttpClient;
    //   376: aload_0
    //   377: getfield 68	org/antivirus/core/a/ab:k	Lorg/apache/http/client/methods/HttpPost;
    //   380: invokeinterface 276 2 0
    //   385: astore 21
    //   387: aload 21
    //   389: invokeinterface 282 1 0
    //   394: invokeinterface 287 1 0
    //   399: istore 22
    //   401: iload 22
    //   403: sipush 200
    //   406: if_icmpeq +105 -> 511
    //   409: new 177	org/antivirus/core/a/ac
    //   412: dup
    //   413: aload_0
    //   414: new 112	java/lang/StringBuilder
    //   417: dup
    //   418: ldc_w 289
    //   421: invokespecial 290	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   424: iload 22
    //   426: invokevirtual 293	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   429: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   432: iconst_0
    //   433: invokespecial 296	org/antivirus/core/a/ac:<init>	(Lorg/antivirus/core/a/ab;Ljava/lang/String;Z)V
    //   436: athrow
    //   437: astore 9
    //   439: ldc_w 298
    //   442: invokestatic 263	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   445: new 177	org/antivirus/core/a/ac
    //   448: dup
    //   449: aload_0
    //   450: ldc_w 298
    //   453: iconst_1
    //   454: invokespecial 296	org/antivirus/core/a/ac:<init>	(Lorg/antivirus/core/a/ab;Ljava/lang/String;Z)V
    //   457: athrow
    //   458: astore 20
    //   460: ldc_w 300
    //   463: invokestatic 263	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   466: new 177	org/antivirus/core/a/ac
    //   469: dup
    //   470: aload_0
    //   471: aload 20
    //   473: iconst_1
    //   474: invokespecial 266	org/antivirus/core/a/ac:<init>	(Lorg/antivirus/core/a/ab;Ljava/lang/Exception;Z)V
    //   477: athrow
    //   478: astore 8
    //   480: aload 8
    //   482: athrow
    //   483: astore 19
    //   485: new 177	org/antivirus/core/a/ac
    //   488: dup
    //   489: aload_0
    //   490: aload 19
    //   492: iconst_1
    //   493: invokespecial 266	org/antivirus/core/a/ac:<init>	(Lorg/antivirus/core/a/ab;Ljava/lang/Exception;Z)V
    //   496: athrow
    //   497: astore 7
    //   499: new 177	org/antivirus/core/a/ac
    //   502: dup
    //   503: aload_0
    //   504: aload 7
    //   506: iconst_0
    //   507: invokespecial 266	org/antivirus/core/a/ac:<init>	(Lorg/antivirus/core/a/ab;Ljava/lang/Exception;Z)V
    //   510: athrow
    //   511: aload 21
    //   513: invokeinterface 304 1 0
    //   518: astore 23
    //   520: aload 23
    //   522: ifnonnull +15 -> 537
    //   525: ldc_w 306
    //   528: invokestatic 263	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   531: aconst_null
    //   532: astore 36
    //   534: aload 36
    //   536: areturn
    //   537: aconst_null
    //   538: astore 24
    //   540: aload 5
    //   542: ifnull +253 -> 795
    //   545: aload 23
    //   547: invokeinterface 312 1 0
    //   552: astore 24
    //   554: new 314	java/io/FileOutputStream
    //   557: dup
    //   558: aload 5
    //   560: invokespecial 317	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   563: astore 38
    //   565: sipush 4084
    //   568: newarray byte
    //   570: astore 44
    //   572: aload 24
    //   574: aload 44
    //   576: invokevirtual 323	java/io/InputStream:read	([B)I
    //   579: istore 45
    //   581: iload 45
    //   583: iconst_m1
    //   584: if_icmpeq +29 -> 613
    //   587: aload 38
    //   589: aload 44
    //   591: iconst_0
    //   592: iload 45
    //   594: invokevirtual 327	java/io/FileOutputStream:write	([BII)V
    //   597: aload 24
    //   599: aload 44
    //   601: invokevirtual 323	java/io/InputStream:read	([B)I
    //   604: istore 50
    //   606: iload 50
    //   608: istore 45
    //   610: goto -29 -> 581
    //   613: aload 24
    //   615: invokevirtual 330	java/io/InputStream:close	()V
    //   618: aconst_null
    //   619: astore 24
    //   621: aload 38
    //   623: invokevirtual 333	java/io/FileOutputStream:flush	()V
    //   626: aload 38
    //   628: invokevirtual 334	java/io/FileOutputStream:close	()V
    //   631: aconst_null
    //   632: astore 38
    //   634: aload 24
    //   636: ifnull +8 -> 644
    //   639: aload 24
    //   641: invokevirtual 330	java/io/InputStream:close	()V
    //   644: aload 38
    //   646: ifnull +8 -> 654
    //   649: aload 38
    //   651: invokevirtual 334	java/io/FileOutputStream:close	()V
    //   654: aload 23
    //   656: invokeinterface 337 1 0
    //   661: new 339	java/lang/Boolean
    //   664: dup
    //   665: iconst_1
    //   666: invokespecial 342	java/lang/Boolean:<init>	(Z)V
    //   669: astore 36
    //   671: goto -137 -> 534
    //   674: astore 49
    //   676: aload 49
    //   678: invokestatic 346	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   681: goto -37 -> 644
    //   684: astore 48
    //   686: aload 48
    //   688: invokestatic 346	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   691: goto -37 -> 654
    //   694: astore 41
    //   696: aconst_null
    //   697: astore 38
    //   699: aload 41
    //   701: invokestatic 346	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   704: aload 24
    //   706: ifnull +8 -> 714
    //   709: aload 24
    //   711: invokevirtual 330	java/io/InputStream:close	()V
    //   714: aload 38
    //   716: ifnull -62 -> 654
    //   719: aload 38
    //   721: invokevirtual 334	java/io/FileOutputStream:close	()V
    //   724: goto -70 -> 654
    //   727: astore 42
    //   729: aload 42
    //   731: invokestatic 346	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   734: goto -80 -> 654
    //   737: astore 43
    //   739: aload 43
    //   741: invokestatic 346	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   744: goto -30 -> 714
    //   747: astore 37
    //   749: aconst_null
    //   750: astore 38
    //   752: aload 24
    //   754: ifnull +8 -> 762
    //   757: aload 24
    //   759: invokevirtual 330	java/io/InputStream:close	()V
    //   762: aload 38
    //   764: ifnull +8 -> 772
    //   767: aload 38
    //   769: invokevirtual 334	java/io/FileOutputStream:close	()V
    //   772: aload 37
    //   774: athrow
    //   775: astore 40
    //   777: aload 40
    //   779: invokestatic 346	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   782: goto -20 -> 762
    //   785: astore 39
    //   787: aload 39
    //   789: invokestatic 346	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   792: goto -20 -> 772
    //   795: new 348	java/io/InputStreamReader
    //   798: dup
    //   799: aload 23
    //   801: invokeinterface 312 1 0
    //   806: invokespecial 351	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   809: astore 25
    //   811: invokestatic 357	org/xmlpull/v1/XmlPullParserFactory:newInstance	()Lorg/xmlpull/v1/XmlPullParserFactory;
    //   814: invokevirtual 361	org/xmlpull/v1/XmlPullParserFactory:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   817: astore 26
    //   819: aload 26
    //   821: aload 25
    //   823: invokeinterface 367 2 0
    //   828: aload 26
    //   830: invokeinterface 370 1 0
    //   835: pop
    //   836: aload 26
    //   838: iconst_2
    //   839: aconst_null
    //   840: ldc 35
    //   842: invokeinterface 374 4 0
    //   847: aload 26
    //   849: invokeinterface 370 1 0
    //   854: pop
    //   855: aload 26
    //   857: invokeinterface 377 1 0
    //   862: astore 29
    //   864: aload 29
    //   866: ldc 39
    //   868: invokevirtual 381	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   871: ifeq +47 -> 918
    //   874: aload 26
    //   876: invokeinterface 370 1 0
    //   881: pop
    //   882: aload 26
    //   884: iconst_2
    //   885: aconst_null
    //   886: ldc 43
    //   888: invokeinterface 374 4 0
    //   893: aload 26
    //   895: invokeinterface 370 1 0
    //   900: pop
    //   901: aload 26
    //   903: invokestatic 384	org/antivirus/core/a/ad:a	(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    //   906: astore 36
    //   908: aload 23
    //   910: invokeinterface 337 1 0
    //   915: goto -381 -> 534
    //   918: aload 29
    //   920: ldc 47
    //   922: invokevirtual 381	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   925: ifeq +95 -> 1020
    //   928: aload 26
    //   930: invokeinterface 370 1 0
    //   935: pop
    //   936: aload 26
    //   938: invokestatic 384	org/antivirus/core/a/ad:a	(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    //   941: checkcast 386	java/util/Map
    //   944: astore 31
    //   946: aload 31
    //   948: ldc 55
    //   950: invokeinterface 387 2 0
    //   955: checkcast 102	java/lang/String
    //   958: astore 32
    //   960: aload 31
    //   962: ldc 51
    //   964: invokeinterface 387 2 0
    //   969: checkcast 88	java/lang/Integer
    //   972: invokevirtual 390	java/lang/Integer:intValue	()I
    //   975: istore 33
    //   977: aload 23
    //   979: invokeinterface 337 1 0
    //   984: new 177	org/antivirus/core/a/ac
    //   987: dup
    //   988: aload_0
    //   989: new 112	java/lang/StringBuilder
    //   992: dup
    //   993: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   996: aload 32
    //   998: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1001: ldc_w 392
    //   1004: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1007: iload 33
    //   1009: invokevirtual 293	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1012: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1015: iconst_0
    //   1016: invokespecial 296	org/antivirus/core/a/ac:<init>	(Lorg/antivirus/core/a/ab;Ljava/lang/String;Z)V
    //   1019: athrow
    //   1020: aload 23
    //   1022: invokeinterface 337 1 0
    //   1027: new 177	org/antivirus/core/a/ac
    //   1030: dup
    //   1031: aload_0
    //   1032: new 112	java/lang/StringBuilder
    //   1035: dup
    //   1036: ldc_w 394
    //   1039: invokespecial 290	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1042: aload 29
    //   1044: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1047: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1050: iconst_0
    //   1051: invokespecial 296	org/antivirus/core/a/ac:<init>	(Lorg/antivirus/core/a/ab;Ljava/lang/String;Z)V
    //   1054: athrow
    //   1055: astore 46
    //   1057: goto -436 -> 621
    //   1060: astore 37
    //   1062: goto -310 -> 752
    //   1065: astore 41
    //   1067: goto -368 -> 699
    //   1070: astore 47
    //   1072: goto -438 -> 634
    //
    // Exception table:
    //   from	to	target	type
    //   0	340	343	org/xmlpull/v1/XmlPullParserException
    //   363	372	343	org/xmlpull/v1/XmlPullParserException
    //   372	387	343	org/xmlpull/v1/XmlPullParserException
    //   387	437	343	org/xmlpull/v1/XmlPullParserException
    //   460	478	343	org/xmlpull/v1/XmlPullParserException
    //   485	497	343	org/xmlpull/v1/XmlPullParserException
    //   511	531	343	org/xmlpull/v1/XmlPullParserException
    //   639	644	343	org/xmlpull/v1/XmlPullParserException
    //   649	654	343	org/xmlpull/v1/XmlPullParserException
    //   654	691	343	org/xmlpull/v1/XmlPullParserException
    //   709	714	343	org/xmlpull/v1/XmlPullParserException
    //   719	724	343	org/xmlpull/v1/XmlPullParserException
    //   729	744	343	org/xmlpull/v1/XmlPullParserException
    //   757	762	343	org/xmlpull/v1/XmlPullParserException
    //   767	772	343	org/xmlpull/v1/XmlPullParserException
    //   772	1055	343	org/xmlpull/v1/XmlPullParserException
    //   0	340	437	java/net/UnknownHostException
    //   363	372	437	java/net/UnknownHostException
    //   372	387	437	java/net/UnknownHostException
    //   387	437	437	java/net/UnknownHostException
    //   460	478	437	java/net/UnknownHostException
    //   485	497	437	java/net/UnknownHostException
    //   511	531	437	java/net/UnknownHostException
    //   639	644	437	java/net/UnknownHostException
    //   649	654	437	java/net/UnknownHostException
    //   654	691	437	java/net/UnknownHostException
    //   709	714	437	java/net/UnknownHostException
    //   719	724	437	java/net/UnknownHostException
    //   729	744	437	java/net/UnknownHostException
    //   757	762	437	java/net/UnknownHostException
    //   767	772	437	java/net/UnknownHostException
    //   772	1055	437	java/net/UnknownHostException
    //   372	387	458	org/apache/http/client/ClientProtocolException
    //   0	340	478	org/antivirus/core/a/ac
    //   363	372	478	org/antivirus/core/a/ac
    //   372	387	478	org/antivirus/core/a/ac
    //   387	437	478	org/antivirus/core/a/ac
    //   460	478	478	org/antivirus/core/a/ac
    //   485	497	478	org/antivirus/core/a/ac
    //   511	531	478	org/antivirus/core/a/ac
    //   639	644	478	org/antivirus/core/a/ac
    //   649	654	478	org/antivirus/core/a/ac
    //   654	691	478	org/antivirus/core/a/ac
    //   709	714	478	org/antivirus/core/a/ac
    //   719	724	478	org/antivirus/core/a/ac
    //   729	744	478	org/antivirus/core/a/ac
    //   757	762	478	org/antivirus/core/a/ac
    //   767	772	478	org/antivirus/core/a/ac
    //   772	1055	478	org/antivirus/core/a/ac
    //   372	387	483	java/io/IOException
    //   0	340	497	java/lang/Exception
    //   363	372	497	java/lang/Exception
    //   372	387	497	java/lang/Exception
    //   387	437	497	java/lang/Exception
    //   460	478	497	java/lang/Exception
    //   485	497	497	java/lang/Exception
    //   511	531	497	java/lang/Exception
    //   639	644	497	java/lang/Exception
    //   649	654	497	java/lang/Exception
    //   654	691	497	java/lang/Exception
    //   709	714	497	java/lang/Exception
    //   719	724	497	java/lang/Exception
    //   729	744	497	java/lang/Exception
    //   757	762	497	java/lang/Exception
    //   767	772	497	java/lang/Exception
    //   772	1055	497	java/lang/Exception
    //   639	644	674	java/io/IOException
    //   649	654	684	java/io/IOException
    //   545	565	694	java/lang/Exception
    //   719	724	727	java/io/IOException
    //   709	714	737	java/io/IOException
    //   545	565	747	finally
    //   757	762	775	java/io/IOException
    //   767	772	785	java/io/IOException
    //   613	618	1055	java/lang/Exception
    //   565	606	1060	finally
    //   613	618	1060	finally
    //   621	631	1060	finally
    //   699	704	1060	finally
    //   565	606	1065	java/lang/Exception
    //   621	631	1070	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.a.ab
 * JD-Core Version:    0.6.2
 */