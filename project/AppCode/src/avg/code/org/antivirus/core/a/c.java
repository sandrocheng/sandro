package org.antivirus.core.a;

import android.os.Bundle;
import org.antivirus.core.Engine;
import org.antivirus.core.Logger;

public final class c
{
  private final String a = "sd-7.cloud.avg.com";
  private final int b = 3;
  private final int c = 100;
  private final int d = 1024;
  private final int e = 3;

  // ERROR //
  static int a(android.content.Context paramContext, org.antivirus.core.EngineSettings paramEngineSettings, org.antivirus.core.b.a parama, int paramInt, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: aload_1
    //   5: invokestatic 36	org/antivirus/core/telephony/TelephonyInfo:getUniqueId	(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Ljava/lang/String;
    //   8: invokevirtual 42	java/lang/String:getBytes	()[B
    //   11: invokestatic 47	org/a/a/a/b/a:b	([B)Ljava/lang/String;
    //   14: astore 8
    //   16: aload 8
    //   18: bipush 32
    //   20: invokevirtual 51	java/lang/String:substring	(I)Ljava/lang/String;
    //   23: astore 9
    //   25: aload 8
    //   27: iconst_0
    //   28: bipush 32
    //   30: invokevirtual 54	java/lang/String:substring	(II)Ljava/lang/String;
    //   33: astore 10
    //   35: aload_2
    //   36: invokevirtual 59	org/antivirus/core/b/a:b	()Z
    //   39: ifeq +483 -> 522
    //   42: iconst_1
    //   43: istore 11
    //   45: getstatic 64	android/os/Build:MODEL	Ljava/lang/String;
    //   48: ifnull +480 -> 528
    //   51: getstatic 64	android/os/Build:MODEL	Ljava/lang/String;
    //   54: astore 12
    //   56: aload 12
    //   58: ldc 66
    //   60: invokestatic 72	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   63: astore 13
    //   65: ldc 74
    //   67: astore 14
    //   69: getstatic 79	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   72: invokestatic 85	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   75: iconst_3
    //   76: if_icmple +23 -> 99
    //   79: ldc 61
    //   81: ldc 87
    //   83: invokevirtual 93	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   86: aconst_null
    //   87: invokevirtual 99	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   90: invokevirtual 103	java/lang/Object:toString	()Ljava/lang/String;
    //   93: astore 45
    //   95: aload 45
    //   97: astore 14
    //   99: aload 14
    //   101: ldc 66
    //   103: invokestatic 72	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   106: astore 16
    //   108: new 105	org/antivirus/core/b/g
    //   111: dup
    //   112: aload_0
    //   113: invokespecial 108	org/antivirus/core/b/g:<init>	(Landroid/content/Context;)V
    //   116: invokevirtual 110	org/antivirus/core/b/g:c	()Ljava/lang/String;
    //   119: astore 17
    //   121: aload 17
    //   123: invokevirtual 114	java/lang/String:length	()I
    //   126: iconst_4
    //   127: if_icmple +676 -> 803
    //   130: aload 17
    //   132: iconst_0
    //   133: bipush 252
    //   135: aload 17
    //   137: invokevirtual 114	java/lang/String:length	()I
    //   140: iadd
    //   141: invokevirtual 54	java/lang/String:substring	(II)Ljava/lang/String;
    //   144: astore 18
    //   146: aload_0
    //   147: ldc 116
    //   149: invokevirtual 122	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   152: checkcast 124	android/telephony/TelephonyManager
    //   155: astore 19
    //   157: aload 19
    //   159: invokevirtual 127	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   162: astore 44
    //   164: aload 44
    //   166: astore 21
    //   168: aload 21
    //   170: ldc 66
    //   172: invokestatic 72	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   175: astore 22
    //   177: aload 4
    //   179: ldc 66
    //   181: invokestatic 72	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   184: astore 23
    //   186: bipush 15
    //   188: anewarray 4	java/lang/Object
    //   191: astore 24
    //   193: aload 24
    //   195: iconst_0
    //   196: iconst_3
    //   197: invokestatic 131	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   200: aastore
    //   201: aload 24
    //   203: iconst_1
    //   204: bipush 100
    //   206: invokestatic 131	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   209: aastore
    //   210: aload 24
    //   212: iconst_2
    //   213: ldc 133
    //   215: aastore
    //   216: aload 24
    //   218: iconst_3
    //   219: new 135	java/lang/StringBuilder
    //   222: dup
    //   223: invokespecial 136	java/lang/StringBuilder:<init>	()V
    //   226: aload 10
    //   228: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: ldc 142
    //   233: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: aload 9
    //   238: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   244: aastore
    //   245: aload 24
    //   247: iconst_4
    //   248: iload 11
    //   250: invokestatic 131	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   253: aastore
    //   254: aload 24
    //   256: iconst_5
    //   257: ldc 74
    //   259: aastore
    //   260: aload 24
    //   262: bipush 6
    //   264: iload_3
    //   265: invokestatic 131	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   268: aastore
    //   269: aload 24
    //   271: bipush 7
    //   273: aload 23
    //   275: aastore
    //   276: aload 24
    //   278: bipush 8
    //   280: iconst_0
    //   281: invokestatic 131	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   284: aastore
    //   285: aload 24
    //   287: bipush 9
    //   289: new 135	java/lang/StringBuilder
    //   292: dup
    //   293: ldc 145
    //   295: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   298: getstatic 79	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   301: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   304: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   307: aastore
    //   308: aload 24
    //   310: bipush 10
    //   312: aload 16
    //   314: aastore
    //   315: aload 24
    //   317: bipush 11
    //   319: aload 13
    //   321: aastore
    //   322: aload 24
    //   324: bipush 12
    //   326: aload 18
    //   328: aastore
    //   329: aload 24
    //   331: bipush 13
    //   333: aload 22
    //   335: aastore
    //   336: aload 24
    //   338: bipush 14
    //   340: aload_2
    //   341: getfield 151	org/antivirus/core/b/a:o	I
    //   344: invokestatic 131	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   347: aastore
    //   348: new 38	java/lang/String
    //   351: dup
    //   352: aconst_null
    //   353: ldc 153
    //   355: aload 24
    //   357: invokestatic 157	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   360: invokevirtual 42	java/lang/String:getBytes	()[B
    //   363: iconst_0
    //   364: invokestatic 162	org/a/a/a/a/a:a	([BZ)[B
    //   367: invokespecial 165	java/lang/String:<init>	([B)V
    //   370: astore 25
    //   372: new 135	java/lang/StringBuilder
    //   375: dup
    //   376: invokespecial 136	java/lang/StringBuilder:<init>	()V
    //   379: aload 25
    //   381: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: ldc 167
    //   386: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   389: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   392: invokevirtual 42	java/lang/String:getBytes	()[B
    //   395: invokestatic 169	org/a/a/a/b/a:c	([B)Ljava/lang/String;
    //   398: astore 26
    //   400: new 171	java/net/URL
    //   403: dup
    //   404: new 135	java/lang/StringBuilder
    //   407: dup
    //   408: invokespecial 136	java/lang/StringBuilder:<init>	()V
    //   411: ldc 173
    //   413: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: ldc 175
    //   418: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   421: aload 25
    //   423: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   426: ldc 177
    //   428: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   431: aload 26
    //   433: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   436: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   439: invokespecial 178	java/net/URL:<init>	(Ljava/lang/String;)V
    //   442: invokevirtual 182	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   445: checkcast 184	java/net/HttpURLConnection
    //   448: astore 27
    //   450: aload 27
    //   452: iconst_0
    //   453: invokevirtual 188	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   456: aload 27
    //   458: ldc 190
    //   460: ldc 192
    //   462: invokevirtual 196	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   465: aload 27
    //   467: ldc 198
    //   469: ldc 192
    //   471: invokevirtual 196	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   474: aload 27
    //   476: ldc 200
    //   478: invokevirtual 203	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   481: aload 27
    //   483: ldc 205
    //   485: ldc 17
    //   487: invokevirtual 196	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   490: aload 27
    //   492: invokevirtual 208	java/net/HttpURLConnection:connect	()V
    //   495: aload 27
    //   497: invokevirtual 211	java/net/HttpURLConnection:getResponseCode	()I
    //   500: istore 29
    //   502: aload 27
    //   504: invokevirtual 214	java/net/HttpURLConnection:getContentLength	()I
    //   507: pop
    //   508: iload 29
    //   510: sipush 200
    //   513: if_icmpeq +59 -> 572
    //   516: iconst_2
    //   517: istore 7
    //   519: iload 7
    //   521: ireturn
    //   522: iconst_3
    //   523: istore 11
    //   525: goto -480 -> 45
    //   528: ldc 74
    //   530: astore 12
    //   532: goto -476 -> 56
    //   535: astore 20
    //   537: aload 20
    //   539: invokestatic 220	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   542: ldc 74
    //   544: astore 21
    //   546: goto -378 -> 168
    //   549: astore 6
    //   551: aload 5
    //   553: ifnull +8 -> 561
    //   556: aload 5
    //   558: invokevirtual 223	java/net/HttpURLConnection:disconnect	()V
    //   561: aload 6
    //   563: invokestatic 220	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   566: iconst_1
    //   567: istore 7
    //   569: goto -50 -> 519
    //   572: aload 27
    //   574: invokevirtual 227	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   577: astore 34
    //   579: sipush 1024
    //   582: newarray char
    //   584: astore 35
    //   586: new 229	java/io/StringWriter
    //   589: dup
    //   590: invokespecial 230	java/io/StringWriter:<init>	()V
    //   593: astore 36
    //   595: new 232	java/io/InputStreamReader
    //   598: dup
    //   599: aload 34
    //   601: invokestatic 238	java/nio/charset/Charset:defaultCharset	()Ljava/nio/charset/Charset;
    //   604: invokespecial 241	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   607: astore 37
    //   609: aload 37
    //   611: aload 35
    //   613: invokevirtual 245	java/io/InputStreamReader:read	([C)I
    //   616: istore 38
    //   618: iload 38
    //   620: iconst_m1
    //   621: if_icmpeq +47 -> 668
    //   624: aload 36
    //   626: aload 35
    //   628: iconst_0
    //   629: iload 38
    //   631: invokevirtual 251	java/io/Writer:write	([CII)V
    //   634: goto -25 -> 609
    //   637: astore 31
    //   639: aload 27
    //   641: astore 32
    //   643: aload 31
    //   645: astore 33
    //   647: aload 32
    //   649: ifnull +8 -> 657
    //   652: aload 32
    //   654: invokevirtual 223	java/net/HttpURLConnection:disconnect	()V
    //   657: aload 33
    //   659: invokestatic 220	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   662: iconst_0
    //   663: istore 7
    //   665: goto -146 -> 519
    //   668: aload 34
    //   670: invokevirtual 256	java/io/InputStream:close	()V
    //   673: aload 27
    //   675: invokevirtual 223	java/net/HttpURLConnection:disconnect	()V
    //   678: aload 36
    //   680: invokevirtual 103	java/lang/Object:toString	()Ljava/lang/String;
    //   683: astore 39
    //   685: aload 39
    //   687: ldc_w 258
    //   690: invokevirtual 261	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   693: istore 40
    //   695: iload 40
    //   697: iconst_m1
    //   698: if_icmpne +9 -> 707
    //   701: iconst_0
    //   702: istore 7
    //   704: goto -185 -> 519
    //   707: iload 40
    //   709: bipush 9
    //   711: iadd
    //   712: istore 41
    //   714: aload 39
    //   716: invokevirtual 114	java/lang/String:length	()I
    //   719: istore 42
    //   721: iload 41
    //   723: istore 43
    //   725: iload 43
    //   727: iload 42
    //   729: if_icmpge +81 -> 810
    //   732: aload 39
    //   734: iload 43
    //   736: invokevirtual 265	java/lang/String:charAt	(I)C
    //   739: invokestatic 271	java/lang/Character:isDigit	(C)Z
    //   742: ifeq +68 -> 810
    //   745: iinc 43 1
    //   748: goto -23 -> 725
    //   751: aload_1
    //   752: aload 39
    //   754: iload 41
    //   756: iload 43
    //   758: invokevirtual 54	java/lang/String:substring	(II)Ljava/lang/String;
    //   761: invokestatic 277	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   764: invokevirtual 283	org/antivirus/core/EngineSettings:setCloudServicesNextUpdate	(J)V
    //   767: aload_1
    //   768: invokestatic 289	java/lang/System:currentTimeMillis	()J
    //   771: invokevirtual 292	org/antivirus/core/EngineSettings:setCloudServicesUpdateTime	(J)V
    //   774: goto -112 -> 662
    //   777: astore 33
    //   779: aconst_null
    //   780: astore 32
    //   782: goto -135 -> 647
    //   785: astore 28
    //   787: aload 27
    //   789: astore 5
    //   791: aload 28
    //   793: astore 6
    //   795: goto -244 -> 551
    //   798: astore 15
    //   800: goto -701 -> 99
    //   803: aload 17
    //   805: astore 18
    //   807: goto -661 -> 146
    //   810: iload 41
    //   812: iload 43
    //   814: if_icmpne -63 -> 751
    //   817: iconst_0
    //   818: istore 7
    //   820: goto -301 -> 519
    //
    // Exception table:
    //   from	to	target	type
    //   157	164	535	java/lang/Exception
    //   3	69	549	java/lang/Exception
    //   99	157	549	java/lang/Exception
    //   168	450	549	java/lang/Exception
    //   528	542	549	java/lang/Exception
    //   572	634	637	java/lang/Exception
    //   668	678	637	java/lang/Exception
    //   678	774	777	java/lang/Exception
    //   450	508	785	java/lang/Exception
    //   69	95	798	java/lang/Exception
  }

  public static void a(Engine paramEngine, d paramd, String paramString)
  {
    try
    {
      Bundle localBundle = new Bundle();
      if (paramString == null)
        paramString = "";
      localBundle.putString("desc", paramString);
      paramEngine.sendCommMessage(paramd.b(), localBundle);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.a.c
 * JD-Core Version:    0.6.2
 */