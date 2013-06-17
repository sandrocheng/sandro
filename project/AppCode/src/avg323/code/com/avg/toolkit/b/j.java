package com.avg.toolkit.b;

import a.a.a.a.b.a;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Xml;
import java.net.URI;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.xmlpull.v1.XmlSerializer;

public class j
{
  public URI a = null;
  private final String b = "methodCall";
  private final String c = "methodName";
  private final String d = "methodResponse";
  private final String e = "params";
  private final String f = "param";
  private final String g = "fault";
  private final String h = "faultCode";
  private final String i = "faultString";
  private final String j = "d5544fG==*%877hT--==QQUPWeeY89904469==";
  private HttpClient k;
  private HttpPost l;
  private XmlSerializer m;

  public j(URI paramURI, int paramInt1, int paramInt2, String paramString1, String paramString2, String paramString3)
  {
    this.a = paramURI;
    this.l = new HttpPost(paramURI);
    this.l.addHeader("Content-Type", "text/xml");
    Object[] arrayOfObject = new Object[7];
    arrayOfObject[0] = Build.VERSION.RELEASE;
    arrayOfObject[1] = Build.DEVICE;
    arrayOfObject[2] = Integer.toString(paramInt2);
    arrayOfObject[3] = Integer.toString(paramInt1);
    arrayOfObject[4] = paramString2;
    arrayOfObject[5] = paramString3;
    arrayOfObject[6] = "Antivirus";
    String str = String.format("Mozilla/5.0 (Linux; U; Android %s; en-us; %s) Prod/%s/%s (KHTML, like Gecko) Version/%s.%s/%s", arrayOfObject);
    this.l.addHeader("User-Agent", str);
    this.l.addHeader("x-auth-token", a.c(paramString1 + "d5544fG==*%877hT--==QQUPWeeY89904469=="));
    HttpParams localHttpParams = this.l.getParams();
    HttpProtocolParams.setUseExpectContinue(localHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localHttpParams, 10000);
    HttpConnectionParams.setSoTimeout(localHttpParams, 15000);
    this.k = new DefaultHttpClient();
    this.m = Xml.newSerializer();
  }

  public static String a(String paramString)
  {
    if (paramString == null);
    StringBuilder localStringBuilder;
    for (String str = ""; ; str = localStringBuilder.toString())
    {
      return str;
      localStringBuilder = new StringBuilder();
      for (int n = 0; n < paramString.length(); n++)
      {
        char c1 = paramString.charAt(n);
        if ((c1 >= ' ') || (c1 == '\t') || (c1 == '\n'))
          localStringBuilder.append(c1);
      }
    }
  }

  // ERROR //
  public Object a(android.content.Context paramContext, String paramString1, String paramString2, Object[] paramArrayOfObject, java.util.HashMap paramHashMap, String paramString3, java.io.File paramFile)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +41 -> 42
    //   4: aload_1
    //   5: ifnull +37 -> 42
    //   8: new 185	android/content/Intent
    //   11: dup
    //   12: aload_2
    //   13: invokespecial 188	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   16: astore 63
    //   18: aload 63
    //   20: ldc 190
    //   22: iconst_1
    //   23: invokevirtual 194	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   26: pop
    //   27: aload 63
    //   29: ldc 196
    //   31: iconst_1
    //   32: invokevirtual 199	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   35: pop
    //   36: aload_1
    //   37: aload 63
    //   39: invokevirtual 205	android/content/Context:sendBroadcast	(Landroid/content/Intent;)V
    //   42: new 207	java/io/StringWriter
    //   45: dup
    //   46: invokespecial 208	java/io/StringWriter:<init>	()V
    //   49: astore 8
    //   51: aload_0
    //   52: getfield 157	com/avg/toolkit/b/j:m	Lorg/xmlpull/v1/XmlSerializer;
    //   55: aload 8
    //   57: invokeinterface 214 2 0
    //   62: aload_0
    //   63: getfield 157	com/avg/toolkit/b/j:m	Lorg/xmlpull/v1/XmlSerializer;
    //   66: aconst_null
    //   67: aconst_null
    //   68: invokeinterface 218 3 0
    //   73: aload_0
    //   74: getfield 157	com/avg/toolkit/b/j:m	Lorg/xmlpull/v1/XmlSerializer;
    //   77: aconst_null
    //   78: ldc 31
    //   80: invokeinterface 222 3 0
    //   85: pop
    //   86: aload_0
    //   87: getfield 157	com/avg/toolkit/b/j:m	Lorg/xmlpull/v1/XmlSerializer;
    //   90: aconst_null
    //   91: ldc 35
    //   93: invokeinterface 222 3 0
    //   98: aload_3
    //   99: invokeinterface 226 2 0
    //   104: aconst_null
    //   105: ldc 35
    //   107: invokeinterface 229 3 0
    //   112: pop
    //   113: aload_0
    //   114: getfield 157	com/avg/toolkit/b/j:m	Lorg/xmlpull/v1/XmlSerializer;
    //   117: aconst_null
    //   118: ldc 43
    //   120: invokeinterface 222 3 0
    //   125: pop
    //   126: aload_0
    //   127: getfield 157	com/avg/toolkit/b/j:m	Lorg/xmlpull/v1/XmlSerializer;
    //   130: aconst_null
    //   131: ldc 47
    //   133: invokeinterface 222 3 0
    //   138: aconst_null
    //   139: ldc 231
    //   141: invokeinterface 222 3 0
    //   146: pop
    //   147: aload_0
    //   148: getfield 157	com/avg/toolkit/b/j:m	Lorg/xmlpull/v1/XmlSerializer;
    //   151: aload 6
    //   153: invokestatic 236	com/avg/toolkit/b/l:a	(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    //   156: aload_0
    //   157: getfield 157	com/avg/toolkit/b/j:m	Lorg/xmlpull/v1/XmlSerializer;
    //   160: aconst_null
    //   161: ldc 231
    //   163: invokeinterface 229 3 0
    //   168: aconst_null
    //   169: ldc 47
    //   171: invokeinterface 229 3 0
    //   176: pop
    //   177: aload 4
    //   179: ifnull +80 -> 259
    //   182: aload 4
    //   184: arraylength
    //   185: ifeq +74 -> 259
    //   188: iconst_0
    //   189: istore 60
    //   191: iload 60
    //   193: aload 4
    //   195: arraylength
    //   196: if_icmpge +63 -> 259
    //   199: aload_0
    //   200: getfield 157	com/avg/toolkit/b/j:m	Lorg/xmlpull/v1/XmlSerializer;
    //   203: aconst_null
    //   204: ldc 47
    //   206: invokeinterface 222 3 0
    //   211: aconst_null
    //   212: ldc 231
    //   214: invokeinterface 222 3 0
    //   219: pop
    //   220: aload_0
    //   221: getfield 157	com/avg/toolkit/b/j:m	Lorg/xmlpull/v1/XmlSerializer;
    //   224: aload 4
    //   226: iload 60
    //   228: aaload
    //   229: invokestatic 236	com/avg/toolkit/b/l:a	(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    //   232: aload_0
    //   233: getfield 157	com/avg/toolkit/b/j:m	Lorg/xmlpull/v1/XmlSerializer;
    //   236: aconst_null
    //   237: ldc 231
    //   239: invokeinterface 229 3 0
    //   244: aconst_null
    //   245: ldc 47
    //   247: invokeinterface 229 3 0
    //   252: pop
    //   253: iinc 60 1
    //   256: goto -65 -> 191
    //   259: aload_0
    //   260: getfield 157	com/avg/toolkit/b/j:m	Lorg/xmlpull/v1/XmlSerializer;
    //   263: aconst_null
    //   264: ldc 43
    //   266: invokeinterface 229 3 0
    //   271: pop
    //   272: aload_0
    //   273: getfield 157	com/avg/toolkit/b/j:m	Lorg/xmlpull/v1/XmlSerializer;
    //   276: aconst_null
    //   277: ldc 31
    //   279: invokeinterface 229 3 0
    //   284: pop
    //   285: aload_0
    //   286: getfield 157	com/avg/toolkit/b/j:m	Lorg/xmlpull/v1/XmlSerializer;
    //   289: invokeinterface 239 1 0
    //   294: new 241	org/apache/http/entity/StringEntity
    //   297: dup
    //   298: aload 8
    //   300: invokevirtual 242	java/io/StringWriter:toString	()Ljava/lang/String;
    //   303: invokespecial 243	org/apache/http/entity/StringEntity:<init>	(Ljava/lang/String;)V
    //   306: astore 20
    //   308: aload 5
    //   310: ifnull +104 -> 414
    //   313: aload 5
    //   315: invokevirtual 249	java/util/HashMap:keySet	()Ljava/util/Set;
    //   318: invokeinterface 255 1 0
    //   323: astore 58
    //   325: aload 58
    //   327: invokeinterface 261 1 0
    //   332: ifeq +82 -> 414
    //   335: aload 58
    //   337: invokeinterface 265 1 0
    //   342: checkcast 102	java/lang/String
    //   345: astore 59
    //   347: aload_0
    //   348: getfield 72	com/avg/toolkit/b/j:l	Lorg/apache/http/client/methods/HttpPost;
    //   351: ldc_w 267
    //   354: new 112	java/lang/StringBuilder
    //   357: dup
    //   358: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   361: aload 59
    //   363: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: ldc_w 269
    //   369: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   372: aload 5
    //   374: aload 59
    //   376: invokevirtual 273	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   379: checkcast 102	java/lang/String
    //   382: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   385: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   388: invokevirtual 276	org/apache/http/client/methods/HttpPost:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   391: goto -66 -> 325
    //   394: astore 12
    //   396: ldc_w 278
    //   399: invokestatic 282	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   402: new 177	com/avg/toolkit/b/k
    //   405: dup
    //   406: aload_0
    //   407: aload 12
    //   409: iconst_0
    //   410: invokespecial 285	com/avg/toolkit/b/k:<init>	(Lcom/avg/toolkit/b/j;Ljava/lang/Exception;Z)V
    //   413: athrow
    //   414: aload_0
    //   415: getfield 72	com/avg/toolkit/b/j:l	Lorg/apache/http/client/methods/HttpPost;
    //   418: aload 20
    //   420: invokevirtual 289	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   423: aload_0
    //   424: getfield 149	com/avg/toolkit/b/j:k	Lorg/apache/http/client/HttpClient;
    //   427: aload_0
    //   428: getfield 72	com/avg/toolkit/b/j:l	Lorg/apache/http/client/methods/HttpPost;
    //   431: invokeinterface 295 2 0
    //   436: astore 23
    //   438: aload 23
    //   440: invokeinterface 301 1 0
    //   445: invokeinterface 306 1 0
    //   450: istore 24
    //   452: iload 24
    //   454: sipush 200
    //   457: if_icmpeq +108 -> 565
    //   460: new 177	com/avg/toolkit/b/k
    //   463: dup
    //   464: aload_0
    //   465: new 112	java/lang/StringBuilder
    //   468: dup
    //   469: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   472: ldc_w 308
    //   475: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   478: iload 24
    //   480: invokevirtual 311	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   483: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   486: iconst_0
    //   487: invokespecial 314	com/avg/toolkit/b/k:<init>	(Lcom/avg/toolkit/b/j;Ljava/lang/String;Z)V
    //   490: athrow
    //   491: astore 11
    //   493: ldc_w 316
    //   496: invokestatic 282	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   499: new 177	com/avg/toolkit/b/k
    //   502: dup
    //   503: aload_0
    //   504: ldc_w 316
    //   507: iconst_1
    //   508: invokespecial 314	com/avg/toolkit/b/k:<init>	(Lcom/avg/toolkit/b/j;Ljava/lang/String;Z)V
    //   511: athrow
    //   512: astore 22
    //   514: ldc_w 318
    //   517: invokestatic 282	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   520: new 177	com/avg/toolkit/b/k
    //   523: dup
    //   524: aload_0
    //   525: aload 22
    //   527: iconst_1
    //   528: invokespecial 285	com/avg/toolkit/b/k:<init>	(Lcom/avg/toolkit/b/j;Ljava/lang/Exception;Z)V
    //   531: athrow
    //   532: astore 10
    //   534: aload 10
    //   536: athrow
    //   537: astore 21
    //   539: new 177	com/avg/toolkit/b/k
    //   542: dup
    //   543: aload_0
    //   544: aload 21
    //   546: iconst_1
    //   547: invokespecial 285	com/avg/toolkit/b/k:<init>	(Lcom/avg/toolkit/b/j;Ljava/lang/Exception;Z)V
    //   550: athrow
    //   551: astore 9
    //   553: new 177	com/avg/toolkit/b/k
    //   556: dup
    //   557: aload_0
    //   558: aload 9
    //   560: iconst_0
    //   561: invokespecial 285	com/avg/toolkit/b/k:<init>	(Lcom/avg/toolkit/b/j;Ljava/lang/Exception;Z)V
    //   564: athrow
    //   565: aload 23
    //   567: invokeinterface 322 1 0
    //   572: astore 25
    //   574: aload 25
    //   576: ifnonnull +15 -> 591
    //   579: ldc_w 324
    //   582: invokestatic 282	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   585: aconst_null
    //   586: astore 37
    //   588: goto +622 -> 1210
    //   591: aload_2
    //   592: ifnull +41 -> 633
    //   595: aload_1
    //   596: ifnull +37 -> 633
    //   599: new 185	android/content/Intent
    //   602: dup
    //   603: aload_2
    //   604: invokespecial 188	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   607: astore 55
    //   609: aload 55
    //   611: ldc 190
    //   613: iconst_1
    //   614: invokevirtual 194	android/content/Intent:putExtra	(Ljava/lang/String;Z)Landroid/content/Intent;
    //   617: pop
    //   618: aload 55
    //   620: ldc 196
    //   622: iconst_2
    //   623: invokevirtual 199	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   626: pop
    //   627: aload_1
    //   628: aload 55
    //   630: invokevirtual 205	android/content/Context:sendBroadcast	(Landroid/content/Intent;)V
    //   633: aload 7
    //   635: ifnull +259 -> 894
    //   638: aload 25
    //   640: invokeinterface 330 1 0
    //   645: astore 47
    //   647: aload 47
    //   649: astore 39
    //   651: new 332	java/io/FileOutputStream
    //   654: dup
    //   655: aload 7
    //   657: invokespecial 335	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   660: astore 40
    //   662: sipush 4084
    //   665: newarray byte
    //   667: astore 48
    //   669: aload 39
    //   671: aload 48
    //   673: invokevirtual 341	java/io/InputStream:read	([B)I
    //   676: istore 49
    //   678: iload 49
    //   680: iconst_m1
    //   681: if_icmpeq +29 -> 710
    //   684: aload 40
    //   686: aload 48
    //   688: iconst_0
    //   689: iload 49
    //   691: invokevirtual 345	java/io/FileOutputStream:write	([BII)V
    //   694: aload 39
    //   696: aload 48
    //   698: invokevirtual 341	java/io/InputStream:read	([B)I
    //   701: istore 54
    //   703: iload 54
    //   705: istore 49
    //   707: goto -29 -> 678
    //   710: aload 39
    //   712: invokevirtual 348	java/io/InputStream:close	()V
    //   715: aconst_null
    //   716: astore 39
    //   718: aload 40
    //   720: invokevirtual 351	java/io/FileOutputStream:flush	()V
    //   723: aload 40
    //   725: invokevirtual 352	java/io/FileOutputStream:close	()V
    //   728: aconst_null
    //   729: astore 40
    //   731: aload 39
    //   733: ifnull +8 -> 741
    //   736: aload 39
    //   738: invokevirtual 348	java/io/InputStream:close	()V
    //   741: aload 40
    //   743: ifnull +8 -> 751
    //   746: aload 40
    //   748: invokevirtual 352	java/io/FileOutputStream:close	()V
    //   751: aload 25
    //   753: invokeinterface 355 1 0
    //   758: iconst_1
    //   759: invokestatic 361	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   762: astore 37
    //   764: goto +446 -> 1210
    //   767: astore 53
    //   769: aload 53
    //   771: invokestatic 364	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   774: goto -33 -> 741
    //   777: astore 52
    //   779: aload 52
    //   781: invokestatic 364	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   784: goto -33 -> 751
    //   787: astore 43
    //   789: aconst_null
    //   790: astore 44
    //   792: aconst_null
    //   793: astore 40
    //   795: aload 43
    //   797: invokestatic 364	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   800: aload 44
    //   802: ifnull +8 -> 810
    //   805: aload 44
    //   807: invokevirtual 348	java/io/InputStream:close	()V
    //   810: aload 40
    //   812: ifnull -61 -> 751
    //   815: aload 40
    //   817: invokevirtual 352	java/io/FileOutputStream:close	()V
    //   820: goto -69 -> 751
    //   823: astore 45
    //   825: aload 45
    //   827: invokestatic 364	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   830: goto -79 -> 751
    //   833: astore 46
    //   835: aload 46
    //   837: invokestatic 364	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   840: goto -30 -> 810
    //   843: astore 38
    //   845: aconst_null
    //   846: astore 39
    //   848: aconst_null
    //   849: astore 40
    //   851: aload 39
    //   853: ifnull +8 -> 861
    //   856: aload 39
    //   858: invokevirtual 348	java/io/InputStream:close	()V
    //   861: aload 40
    //   863: ifnull +8 -> 871
    //   866: aload 40
    //   868: invokevirtual 352	java/io/FileOutputStream:close	()V
    //   871: aload 38
    //   873: athrow
    //   874: astore 42
    //   876: aload 42
    //   878: invokestatic 364	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   881: goto -20 -> 861
    //   884: astore 41
    //   886: aload 41
    //   888: invokestatic 364	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   891: goto -20 -> 871
    //   894: new 366	java/io/InputStreamReader
    //   897: dup
    //   898: aload 25
    //   900: invokeinterface 330 1 0
    //   905: invokespecial 369	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   908: astore 26
    //   910: invokestatic 375	org/xmlpull/v1/XmlPullParserFactory:newInstance	()Lorg/xmlpull/v1/XmlPullParserFactory;
    //   913: invokevirtual 379	org/xmlpull/v1/XmlPullParserFactory:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   916: astore 27
    //   918: aload 27
    //   920: aload 26
    //   922: invokeinterface 385 2 0
    //   927: aload 27
    //   929: invokeinterface 388 1 0
    //   934: pop
    //   935: aload 27
    //   937: iconst_2
    //   938: aconst_null
    //   939: ldc 39
    //   941: invokeinterface 392 4 0
    //   946: aload 27
    //   948: invokeinterface 388 1 0
    //   953: pop
    //   954: aload 27
    //   956: invokeinterface 395 1 0
    //   961: astore 30
    //   963: aload 30
    //   965: ldc 43
    //   967: invokevirtual 399	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   970: ifeq +47 -> 1017
    //   973: aload 27
    //   975: invokeinterface 388 1 0
    //   980: pop
    //   981: aload 27
    //   983: iconst_2
    //   984: aconst_null
    //   985: ldc 47
    //   987: invokeinterface 392 4 0
    //   992: aload 27
    //   994: invokeinterface 388 1 0
    //   999: pop
    //   1000: aload 27
    //   1002: invokestatic 402	com/avg/toolkit/b/l:a	(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    //   1005: astore 37
    //   1007: aload 25
    //   1009: invokeinterface 355 1 0
    //   1014: goto +196 -> 1210
    //   1017: aload 30
    //   1019: ldc 51
    //   1021: invokevirtual 399	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1024: ifeq +95 -> 1119
    //   1027: aload 27
    //   1029: invokeinterface 388 1 0
    //   1034: pop
    //   1035: aload 27
    //   1037: invokestatic 402	com/avg/toolkit/b/l:a	(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    //   1040: checkcast 404	java/util/Map
    //   1043: astore 32
    //   1045: aload 32
    //   1047: ldc 59
    //   1049: invokeinterface 405 2 0
    //   1054: checkcast 102	java/lang/String
    //   1057: astore 33
    //   1059: aload 32
    //   1061: ldc 55
    //   1063: invokeinterface 405 2 0
    //   1068: checkcast 92	java/lang/Integer
    //   1071: invokevirtual 408	java/lang/Integer:intValue	()I
    //   1074: istore 34
    //   1076: aload 25
    //   1078: invokeinterface 355 1 0
    //   1083: new 177	com/avg/toolkit/b/k
    //   1086: dup
    //   1087: aload_0
    //   1088: new 112	java/lang/StringBuilder
    //   1091: dup
    //   1092: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   1095: aload 33
    //   1097: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1100: ldc_w 410
    //   1103: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1106: iload 34
    //   1108: invokevirtual 311	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1111: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1114: iconst_0
    //   1115: invokespecial 314	com/avg/toolkit/b/k:<init>	(Lcom/avg/toolkit/b/j;Ljava/lang/String;Z)V
    //   1118: athrow
    //   1119: aload 25
    //   1121: invokeinterface 355 1 0
    //   1126: new 177	com/avg/toolkit/b/k
    //   1129: dup
    //   1130: aload_0
    //   1131: new 112	java/lang/StringBuilder
    //   1134: dup
    //   1135: invokespecial 113	java/lang/StringBuilder:<init>	()V
    //   1138: ldc_w 412
    //   1141: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1144: aload 30
    //   1146: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1149: invokevirtual 120	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1152: iconst_0
    //   1153: invokespecial 314	com/avg/toolkit/b/k:<init>	(Lcom/avg/toolkit/b/j;Ljava/lang/String;Z)V
    //   1156: athrow
    //   1157: astore 50
    //   1159: goto -441 -> 718
    //   1162: astore 38
    //   1164: aconst_null
    //   1165: astore 40
    //   1167: goto -316 -> 851
    //   1170: astore 38
    //   1172: goto -321 -> 851
    //   1175: astore 38
    //   1177: aload 44
    //   1179: astore 39
    //   1181: goto -330 -> 851
    //   1184: astore 43
    //   1186: aload 39
    //   1188: astore 44
    //   1190: aconst_null
    //   1191: astore 40
    //   1193: goto -398 -> 795
    //   1196: astore 43
    //   1198: aload 39
    //   1200: astore 44
    //   1202: goto -407 -> 795
    //   1205: astore 51
    //   1207: goto -476 -> 731
    //   1210: aload 37
    //   1212: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   8	391	394	org/xmlpull/v1/XmlPullParserException
    //   414	423	394	org/xmlpull/v1/XmlPullParserException
    //   423	438	394	org/xmlpull/v1/XmlPullParserException
    //   438	491	394	org/xmlpull/v1/XmlPullParserException
    //   514	532	394	org/xmlpull/v1/XmlPullParserException
    //   539	551	394	org/xmlpull/v1/XmlPullParserException
    //   565	633	394	org/xmlpull/v1/XmlPullParserException
    //   736	741	394	org/xmlpull/v1/XmlPullParserException
    //   746	751	394	org/xmlpull/v1/XmlPullParserException
    //   751	784	394	org/xmlpull/v1/XmlPullParserException
    //   805	810	394	org/xmlpull/v1/XmlPullParserException
    //   815	820	394	org/xmlpull/v1/XmlPullParserException
    //   825	840	394	org/xmlpull/v1/XmlPullParserException
    //   856	861	394	org/xmlpull/v1/XmlPullParserException
    //   866	871	394	org/xmlpull/v1/XmlPullParserException
    //   871	1157	394	org/xmlpull/v1/XmlPullParserException
    //   8	391	491	java/net/UnknownHostException
    //   414	423	491	java/net/UnknownHostException
    //   423	438	491	java/net/UnknownHostException
    //   438	491	491	java/net/UnknownHostException
    //   514	532	491	java/net/UnknownHostException
    //   539	551	491	java/net/UnknownHostException
    //   565	633	491	java/net/UnknownHostException
    //   736	741	491	java/net/UnknownHostException
    //   746	751	491	java/net/UnknownHostException
    //   751	784	491	java/net/UnknownHostException
    //   805	810	491	java/net/UnknownHostException
    //   815	820	491	java/net/UnknownHostException
    //   825	840	491	java/net/UnknownHostException
    //   856	861	491	java/net/UnknownHostException
    //   866	871	491	java/net/UnknownHostException
    //   871	1157	491	java/net/UnknownHostException
    //   423	438	512	org/apache/http/client/ClientProtocolException
    //   8	391	532	com/avg/toolkit/b/k
    //   414	423	532	com/avg/toolkit/b/k
    //   423	438	532	com/avg/toolkit/b/k
    //   438	491	532	com/avg/toolkit/b/k
    //   514	532	532	com/avg/toolkit/b/k
    //   539	551	532	com/avg/toolkit/b/k
    //   565	633	532	com/avg/toolkit/b/k
    //   736	741	532	com/avg/toolkit/b/k
    //   746	751	532	com/avg/toolkit/b/k
    //   751	784	532	com/avg/toolkit/b/k
    //   805	810	532	com/avg/toolkit/b/k
    //   815	820	532	com/avg/toolkit/b/k
    //   825	840	532	com/avg/toolkit/b/k
    //   856	861	532	com/avg/toolkit/b/k
    //   866	871	532	com/avg/toolkit/b/k
    //   871	1157	532	com/avg/toolkit/b/k
    //   423	438	537	java/io/IOException
    //   8	391	551	java/lang/Exception
    //   414	423	551	java/lang/Exception
    //   423	438	551	java/lang/Exception
    //   438	491	551	java/lang/Exception
    //   514	532	551	java/lang/Exception
    //   539	551	551	java/lang/Exception
    //   565	633	551	java/lang/Exception
    //   736	741	551	java/lang/Exception
    //   746	751	551	java/lang/Exception
    //   751	784	551	java/lang/Exception
    //   805	810	551	java/lang/Exception
    //   815	820	551	java/lang/Exception
    //   825	840	551	java/lang/Exception
    //   856	861	551	java/lang/Exception
    //   866	871	551	java/lang/Exception
    //   871	1157	551	java/lang/Exception
    //   736	741	767	java/io/IOException
    //   746	751	777	java/io/IOException
    //   638	647	787	java/lang/Exception
    //   815	820	823	java/io/IOException
    //   805	810	833	java/io/IOException
    //   638	647	843	finally
    //   856	861	874	java/io/IOException
    //   866	871	884	java/io/IOException
    //   710	715	1157	java/lang/Exception
    //   651	662	1162	finally
    //   662	703	1170	finally
    //   710	715	1170	finally
    //   718	728	1170	finally
    //   795	800	1175	finally
    //   651	662	1184	java/lang/Exception
    //   662	703	1196	java/lang/Exception
    //   718	728	1205	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.b.j
 * JD-Core Version:    0.6.2
 */