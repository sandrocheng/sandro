package com.avast.android.mobilesecurity.engine.internal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class q
{
  private static final Map a = new HashMap();
  private static final Map b = new HashMap();
  private static final byte[] c = { 0, 10 };

  // ERROR //
  public static java.util.List a(android.content.Context paramContext, Integer paramInteger, String paramString)
  {
    // Byte code:
    //   0: new 31	java/util/LinkedList
    //   3: dup
    //   4: invokespecial 32	java/util/LinkedList:<init>	()V
    //   7: astore_3
    //   8: aload_2
    //   9: invokestatic 35	com/avast/android/mobilesecurity/engine/internal/q:a	(Ljava/lang/String;)Z
    //   12: ifeq +26 -> 38
    //   15: aload_3
    //   16: new 37	com/avast/android/mobilesecurity/engine/ah
    //   19: dup
    //   20: getstatic 42	com/avast/android/mobilesecurity/engine/ak:a	Lcom/avast/android/mobilesecurity/engine/ak;
    //   23: invokespecial 45	com/avast/android/mobilesecurity/engine/ah:<init>	(Lcom/avast/android/mobilesecurity/engine/ak;)V
    //   26: invokeinterface 51 2 0
    //   31: pop
    //   32: aload_3
    //   33: astore 28
    //   35: aload 28
    //   37: areturn
    //   38: aload_0
    //   39: aload_1
    //   40: invokestatic 56	com/avast/android/mobilesecurity/engine/internal/n:a	(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/y;
    //   43: astore 4
    //   45: aload 4
    //   47: ifnonnull +26 -> 73
    //   50: aload_3
    //   51: new 37	com/avast/android/mobilesecurity/engine/ah
    //   54: dup
    //   55: getstatic 59	com/avast/android/mobilesecurity/engine/ak:d	Lcom/avast/android/mobilesecurity/engine/ak;
    //   58: invokespecial 45	com/avast/android/mobilesecurity/engine/ah:<init>	(Lcom/avast/android/mobilesecurity/engine/ak;)V
    //   61: invokeinterface 51 2 0
    //   66: pop
    //   67: aload_3
    //   68: astore 28
    //   70: goto -35 -> 35
    //   73: aload 4
    //   75: invokevirtual 64	com/avast/android/mobilesecurity/engine/y:a	()Ljava/net/URI;
    //   78: astore 5
    //   80: aload_0
    //   81: ldc 66
    //   83: invokestatic 71	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   86: checkcast 66	com/avast/android/generic/ae
    //   89: invokevirtual 75	com/avast/android/generic/ae:r	()Ljava/lang/String;
    //   92: astore 6
    //   94: aload_0
    //   95: ldc 66
    //   97: invokestatic 71	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   100: checkcast 66	com/avast/android/generic/ae
    //   103: invokevirtual 78	com/avast/android/generic/ae:x	()Ljava/lang/String;
    //   106: astore 7
    //   108: aload_0
    //   109: invokestatic 83	com/avast/android/generic/util/l:a	(Landroid/content/Context;)Z
    //   112: ifeq +845 -> 957
    //   115: ldc 85
    //   117: astore 8
    //   119: invokestatic 91	com/avast/android/mobilesecurity/engine/internal/a/al:k	()Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    //   122: astore 9
    //   124: aload 9
    //   126: ldc 93
    //   128: invokestatic 98	com/google/a/c:a	(Ljava/lang/String;)Lcom/google/a/c;
    //   131: invokevirtual 103	com/avast/android/mobilesecurity/engine/internal/a/am:a	(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    //   134: pop
    //   135: aload 9
    //   137: aload_2
    //   138: invokevirtual 106	com/avast/android/mobilesecurity/engine/internal/a/am:a	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    //   141: pop
    //   142: aload 9
    //   144: invokestatic 112	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   147: invokevirtual 115	java/util/Locale:getCountry	()Ljava/lang/String;
    //   150: invokevirtual 117	com/avast/android/mobilesecurity/engine/internal/a/am:b	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    //   153: pop
    //   154: aload 9
    //   156: ldc2_w 118
    //   159: invokevirtual 122	com/avast/android/mobilesecurity/engine/internal/a/am:a	(J)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    //   162: pop
    //   163: invokestatic 128	com/avast/android/mobilesecurity/engine/internal/a/z:n	()Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    //   166: astore 14
    //   168: aload 14
    //   170: aload 8
    //   172: invokestatic 98	com/google/a/c:a	(Ljava/lang/String;)Lcom/google/a/c;
    //   175: invokevirtual 133	com/avast/android/mobilesecurity/engine/internal/a/aa:d	(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    //   178: pop
    //   179: aload 7
    //   181: ifnull +21 -> 202
    //   184: aload 7
    //   186: ldc 135
    //   188: if_acmpeq +14 -> 202
    //   191: aload 14
    //   193: aload 7
    //   195: invokestatic 98	com/google/a/c:a	(Ljava/lang/String;)Lcom/google/a/c;
    //   198: invokevirtual 137	com/avast/android/mobilesecurity/engine/internal/a/aa:c	(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/aa;
    //   201: pop
    //   202: aload 9
    //   204: aload 14
    //   206: invokevirtual 140	com/avast/android/mobilesecurity/engine/internal/a/am:a	(Lcom/avast/android/mobilesecurity/engine/internal/a/aa;)Lcom/avast/android/mobilesecurity/engine/internal/a/am;
    //   209: pop
    //   210: aload 9
    //   212: invokevirtual 143	com/avast/android/mobilesecurity/engine/internal/a/am:c	()Lcom/avast/android/mobilesecurity/engine/internal/a/al;
    //   215: astore 17
    //   217: ldc 145
    //   219: invokestatic 150	android/b/a/a:a	(Ljava/lang/String;)Landroid/b/a/a;
    //   222: astore 18
    //   224: new 152	org/apache/http/client/methods/HttpPost
    //   227: dup
    //   228: aload 5
    //   230: invokespecial 155	org/apache/http/client/methods/HttpPost:<init>	(Ljava/net/URI;)V
    //   233: astore 19
    //   235: new 157	org/apache/http/entity/ByteArrayEntity
    //   238: dup
    //   239: aload 17
    //   241: invokevirtual 161	com/avast/android/mobilesecurity/engine/internal/a/al:bo	()[B
    //   244: invokespecial 164	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   247: astore 20
    //   249: aload 20
    //   251: ldc 166
    //   253: invokevirtual 170	org/apache/http/entity/ByteArrayEntity:setContentType	(Ljava/lang/String;)V
    //   256: aload 19
    //   258: aload 20
    //   260: invokevirtual 174	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   263: aload 18
    //   265: aload 19
    //   267: invokevirtual 178	android/b/a/a:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   270: astore 33
    //   272: aload 33
    //   274: astore 22
    //   276: aload 22
    //   278: invokeinterface 184 1 0
    //   283: invokeinterface 190 1 0
    //   288: invokestatic 195	com/avast/android/mobilesecurity/engine/internal/a/ao:a	(Ljava/io/InputStream;)Lcom/avast/android/mobilesecurity/engine/internal/a/ao;
    //   291: astore 36
    //   293: aload 36
    //   295: invokevirtual 198	com/avast/android/mobilesecurity/engine/internal/a/ao:b	()I
    //   298: iconst_1
    //   299: if_icmpge +53 -> 352
    //   302: aload_3
    //   303: new 37	com/avast/android/mobilesecurity/engine/ah
    //   306: dup
    //   307: getstatic 59	com/avast/android/mobilesecurity/engine/ak:d	Lcom/avast/android/mobilesecurity/engine/ak;
    //   310: invokespecial 45	com/avast/android/mobilesecurity/engine/ah:<init>	(Lcom/avast/android/mobilesecurity/engine/ak;)V
    //   313: invokeinterface 51 2 0
    //   318: pop
    //   319: aload 22
    //   321: ifnull +15 -> 336
    //   324: aload 22
    //   326: invokeinterface 184 1 0
    //   331: invokeinterface 201 1 0
    //   336: aload 18
    //   338: ifnull +8 -> 346
    //   341: aload 18
    //   343: invokevirtual 203	android/b/a/a:a	()V
    //   346: aload_3
    //   347: astore 28
    //   349: goto -314 -> 35
    //   352: aload 36
    //   354: iconst_0
    //   355: invokevirtual 206	com/avast/android/mobilesecurity/engine/internal/a/ao:a	(I)Lcom/avast/android/mobilesecurity/engine/internal/a/ai;
    //   358: astore 37
    //   360: aload 37
    //   362: invokevirtual 212	com/avast/android/mobilesecurity/engine/internal/a/ai:f	()Z
    //   365: ifeq +323 -> 688
    //   368: aload 37
    //   370: invokevirtual 216	com/avast/android/mobilesecurity/engine/internal/a/ai:g	()Lcom/avast/android/mobilesecurity/engine/internal/a/w;
    //   373: astore 49
    //   375: aload 49
    //   377: invokevirtual 220	com/avast/android/mobilesecurity/engine/internal/a/w:b	()Z
    //   380: ifeq +584 -> 964
    //   383: new 222	java/lang/StringBuilder
    //   386: dup
    //   387: invokespecial 223	java/lang/StringBuilder:<init>	()V
    //   390: ldc 225
    //   392: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   395: aload 49
    //   397: invokevirtual 232	com/avast/android/mobilesecurity/engine/internal/a/w:c	()J
    //   400: invokevirtual 235	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   403: invokevirtual 238	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   406: invokestatic 243	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   409: pop
    //   410: aload 49
    //   412: invokevirtual 232	com/avast/android/mobilesecurity/engine/internal/a/w:c	()J
    //   415: lconst_0
    //   416: lcmp
    //   417: ifle +547 -> 964
    //   420: aload_3
    //   421: new 37	com/avast/android/mobilesecurity/engine/ah
    //   424: dup
    //   425: getstatic 245	com/avast/android/mobilesecurity/engine/ak:b	Lcom/avast/android/mobilesecurity/engine/ak;
    //   428: invokespecial 45	com/avast/android/mobilesecurity/engine/ah:<init>	(Lcom/avast/android/mobilesecurity/engine/ak;)V
    //   431: invokeinterface 51 2 0
    //   436: pop
    //   437: goto +527 -> 964
    //   440: aload 37
    //   442: invokevirtual 247	com/avast/android/mobilesecurity/engine/internal/a/ai:d	()Z
    //   445: ifeq +321 -> 766
    //   448: aload 37
    //   450: invokevirtual 251	com/avast/android/mobilesecurity/engine/internal/a/ai:e	()Lcom/avast/android/mobilesecurity/engine/internal/a/ac;
    //   453: astore 46
    //   455: aload 46
    //   457: invokevirtual 254	com/avast/android/mobilesecurity/engine/internal/a/ac:b	()Z
    //   460: ifeq +56 -> 516
    //   463: new 222	java/lang/StringBuilder
    //   466: dup
    //   467: invokespecial 223	java/lang/StringBuilder:<init>	()V
    //   470: ldc_w 256
    //   473: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   476: aload 46
    //   478: invokevirtual 258	com/avast/android/mobilesecurity/engine/internal/a/ac:c	()I
    //   481: invokevirtual 261	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   484: invokevirtual 238	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   487: invokestatic 243	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   490: pop
    //   491: aload 46
    //   493: invokevirtual 258	com/avast/android/mobilesecurity/engine/internal/a/ac:c	()I
    //   496: tableswitch	default:+20 -> 516, 2:+198->694
    //   517: fload_3
    //   518: invokevirtual 264	com/avast/android/mobilesecurity/engine/internal/a/ai:h	()Z
    //   521: ifeq +361 -> 882
    //   524: aload 37
    //   526: invokevirtual 268	com/avast/android/mobilesecurity/engine/internal/a/ai:i	()Lcom/avast/android/mobilesecurity/engine/internal/a/af;
    //   529: astore 42
    //   531: new 222	java/lang/StringBuilder
    //   534: dup
    //   535: invokespecial 223	java/lang/StringBuilder:<init>	()V
    //   538: ldc_w 270
    //   541: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   544: aload 42
    //   546: invokevirtual 274	com/avast/android/mobilesecurity/engine/internal/a/af:i	()Z
    //   549: invokevirtual 277	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   552: invokevirtual 238	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   555: invokestatic 243	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   558: pop
    //   559: aload 42
    //   561: invokevirtual 274	com/avast/android/mobilesecurity/engine/internal/a/af:i	()Z
    //   564: ifeq +60 -> 624
    //   567: new 37	com/avast/android/mobilesecurity/engine/ah
    //   570: dup
    //   571: getstatic 279	com/avast/android/mobilesecurity/engine/ak:f	Lcom/avast/android/mobilesecurity/engine/ak;
    //   574: invokespecial 45	com/avast/android/mobilesecurity/engine/ah:<init>	(Lcom/avast/android/mobilesecurity/engine/ak;)V
    //   577: astore 44
    //   579: aload 42
    //   581: invokevirtual 280	com/avast/android/mobilesecurity/engine/internal/a/af:b	()Z
    //   584: ifeq +188 -> 772
    //   587: aload 44
    //   589: aload 42
    //   591: invokevirtual 282	com/avast/android/mobilesecurity/engine/internal/a/af:c	()Ljava/lang/String;
    //   594: putfield 285	com/avast/android/mobilesecurity/engine/ah:c	Ljava/lang/String;
    //   597: aload 42
    //   599: invokevirtual 286	com/avast/android/mobilesecurity/engine/internal/a/af:d	()Z
    //   602: ifeq +231 -> 833
    //   605: aload 44
    //   607: aload 42
    //   609: invokevirtual 288	com/avast/android/mobilesecurity/engine/internal/a/af:e	()Ljava/lang/String;
    //   612: putfield 290	com/avast/android/mobilesecurity/engine/ah:d	Ljava/lang/String;
    //   615: aload_3
    //   616: aload 44
    //   618: invokeinterface 51 2 0
    //   623: pop
    //   624: aload_3
    //   625: invokeinterface 293 1 0
    //   630: ifeq +25 -> 655
    //   633: iload 38
    //   635: ifeq +253 -> 888
    //   638: aload_3
    //   639: new 37	com/avast/android/mobilesecurity/engine/ah
    //   642: dup
    //   643: getstatic 42	com/avast/android/mobilesecurity/engine/ak:a	Lcom/avast/android/mobilesecurity/engine/ak;
    //   646: invokespecial 45	com/avast/android/mobilesecurity/engine/ah:<init>	(Lcom/avast/android/mobilesecurity/engine/ak;)V
    //   649: invokeinterface 51 2 0
    //   654: pop
    //   655: aload 22
    //   657: ifnull +15 -> 672
    //   660: aload 22
    //   662: invokeinterface 184 1 0
    //   667: invokeinterface 201 1 0
    //   672: aload 18
    //   674: ifnull +8 -> 682
    //   677: aload 18
    //   679: invokevirtual 203	android/b/a/a:a	()V
    //   682: aload_3
    //   683: astore 28
    //   685: goto -650 -> 35
    //   688: iconst_0
    //   689: istore 38
    //   691: goto -251 -> 440
    //   694: aload_3
    //   695: new 37	com/avast/android/mobilesecurity/engine/ah
    //   698: dup
    //   699: getstatic 295	com/avast/android/mobilesecurity/engine/ak:c	Lcom/avast/android/mobilesecurity/engine/ak;
    //   702: invokespecial 45	com/avast/android/mobilesecurity/engine/ah:<init>	(Lcom/avast/android/mobilesecurity/engine/ak;)V
    //   705: invokeinterface 51 2 0
    //   710: pop
    //   711: goto -195 -> 516
    //   714: astore 35
    //   716: aload_3
    //   717: new 37	com/avast/android/mobilesecurity/engine/ah
    //   720: dup
    //   721: getstatic 59	com/avast/android/mobilesecurity/engine/ak:d	Lcom/avast/android/mobilesecurity/engine/ak;
    //   724: invokespecial 45	com/avast/android/mobilesecurity/engine/ah:<init>	(Lcom/avast/android/mobilesecurity/engine/ak;)V
    //   727: invokeinterface 51 2 0
    //   732: pop
    //   733: aload 22
    //   735: ifnull +15 -> 750
    //   738: aload 22
    //   740: invokeinterface 184 1 0
    //   745: invokeinterface 201 1 0
    //   750: aload 18
    //   752: ifnull +8 -> 760
    //   755: aload 18
    //   757: invokevirtual 203	android/b/a/a:a	()V
    //   760: aload_3
    //   761: astore 28
    //   763: goto -728 -> 35
    //   766: iconst_0
    //   767: istore 38
    //   769: goto -253 -> 516
    //   772: aload 44
    //   774: aconst_null
    //   775: putfield 285	com/avast/android/mobilesecurity/engine/ah:c	Ljava/lang/String;
    //   778: goto -181 -> 597
    //   781: astore 34
    //   783: aload_3
    //   784: new 37	com/avast/android/mobilesecurity/engine/ah
    //   787: dup
    //   788: getstatic 59	com/avast/android/mobilesecurity/engine/ak:d	Lcom/avast/android/mobilesecurity/engine/ak;
    //   791: invokespecial 45	com/avast/android/mobilesecurity/engine/ah:<init>	(Lcom/avast/android/mobilesecurity/engine/ak;)V
    //   794: invokeinterface 51 2 0
    //   799: pop
    //   800: aload 22
    //   802: ifnull +15 -> 817
    //   805: aload 22
    //   807: invokeinterface 184 1 0
    //   812: invokeinterface 201 1 0
    //   817: aload 18
    //   819: ifnull +8 -> 827
    //   822: aload 18
    //   824: invokevirtual 203	android/b/a/a:a	()V
    //   827: aload_3
    //   828: astore 28
    //   830: goto -795 -> 35
    //   833: aload 44
    //   835: aconst_null
    //   836: putfield 290	com/avast/android/mobilesecurity/engine/ah:d	Ljava/lang/String;
    //   839: goto -224 -> 615
    //   842: astore 23
    //   844: aload 22
    //   846: astore 24
    //   848: aload 23
    //   850: astore 25
    //   852: aload 24
    //   854: ifnull +15 -> 869
    //   857: aload 24
    //   859: invokeinterface 184 1 0
    //   864: invokeinterface 201 1 0
    //   869: aload 18
    //   871: ifnull +8 -> 879
    //   874: aload 18
    //   876: invokevirtual 203	android/b/a/a:a	()V
    //   879: aload 25
    //   881: athrow
    //   882: iconst_0
    //   883: istore 38
    //   885: goto -261 -> 624
    //   888: aload_3
    //   889: new 37	com/avast/android/mobilesecurity/engine/ah
    //   892: dup
    //   893: getstatic 59	com/avast/android/mobilesecurity/engine/ak:d	Lcom/avast/android/mobilesecurity/engine/ak;
    //   896: invokespecial 45	com/avast/android/mobilesecurity/engine/ah:<init>	(Lcom/avast/android/mobilesecurity/engine/ak;)V
    //   899: invokeinterface 51 2 0
    //   904: pop
    //   905: goto -250 -> 655
    //   908: astore 39
    //   910: goto -238 -> 672
    //   913: astore 53
    //   915: goto -579 -> 336
    //   918: astore 32
    //   920: goto -103 -> 817
    //   923: astore 29
    //   925: goto -175 -> 750
    //   928: astore 26
    //   930: goto -61 -> 869
    //   933: astore 25
    //   935: aconst_null
    //   936: astore 24
    //   938: goto -86 -> 852
    //   941: astore 30
    //   943: aconst_null
    //   944: astore 22
    //   946: goto -163 -> 783
    //   949: astore 21
    //   951: aconst_null
    //   952: astore 22
    //   954: goto -238 -> 716
    //   957: aload 6
    //   959: astore 8
    //   961: goto -842 -> 119
    //   964: iconst_1
    //   965: istore 38
    //   967: goto -527 -> 440
    //
    // Exception table:
    //   from	to	target	type
    //   276	319	714	org/apache/http/client/ClientProtocolException
    //   352	655	714	org/apache/http/client/ClientProtocolException
    //   694	711	714	org/apache/http/client/ClientProtocolException
    //   772	778	714	org/apache/http/client/ClientProtocolException
    //   833	839	714	org/apache/http/client/ClientProtocolException
    //   888	905	714	org/apache/http/client/ClientProtocolException
    //   276	319	781	java/io/IOException
    //   352	655	781	java/io/IOException
    //   694	711	781	java/io/IOException
    //   772	778	781	java/io/IOException
    //   833	839	781	java/io/IOException
    //   888	905	781	java/io/IOException
    //   276	319	842	finally
    //   352	655	842	finally
    //   694	711	842	finally
    //   716	733	842	finally
    //   772	778	842	finally
    //   783	800	842	finally
    //   833	839	842	finally
    //   888	905	842	finally
    //   660	672	908	java/io/IOException
    //   324	336	913	java/io/IOException
    //   805	817	918	java/io/IOException
    //   738	750	923	java/io/IOException
    //   857	869	928	java/io/IOException
    //   263	272	933	finally
    //   263	272	941	java/io/IOException
    //   263	272	949	org/apache/http/client/ClientProtocolException
  }

  private static void a()
  {
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (System.nanoTime() > ((Long)localEntry.getValue()).longValue())
        a.remove(localEntry.getKey());
    }
  }

  // ERROR //
  public static void a(android.content.Context paramContext, Integer paramInteger)
  {
    // Byte code:
    //   0: getstatic 20	com/avast/android/mobilesecurity/engine/internal/q:b	Ljava/util/Map;
    //   3: astore_2
    //   4: aload_2
    //   5: monitorenter
    //   6: getstatic 20	com/avast/android/mobilesecurity/engine/internal/q:b	Ljava/util/Map;
    //   9: invokeinterface 301 1 0
    //   14: invokeinterface 307 1 0
    //   19: astore 4
    //   21: new 31	java/util/LinkedList
    //   24: dup
    //   25: invokespecial 32	java/util/LinkedList:<init>	()V
    //   28: astore 5
    //   30: aload 4
    //   32: invokeinterface 312 1 0
    //   37: ifeq +63 -> 100
    //   40: aload 4
    //   42: invokeinterface 316 1 0
    //   47: checkcast 318	java/util/Map$Entry
    //   50: astore 15
    //   52: aload_0
    //   53: aload_1
    //   54: new 157	org/apache/http/entity/ByteArrayEntity
    //   57: dup
    //   58: aload 15
    //   60: invokeinterface 326 1 0
    //   65: checkcast 340	[B
    //   68: invokespecial 164	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   71: invokestatic 343	com/avast/android/mobilesecurity/engine/internal/q:a	(Landroid/content/Context;Ljava/lang/Integer;Lorg/apache/http/HttpEntity;)Z
    //   74: ifeq -44 -> 30
    //   77: aload 5
    //   79: aload 15
    //   81: invokeinterface 334 1 0
    //   86: invokeinterface 51 2 0
    //   91: pop
    //   92: goto -62 -> 30
    //   95: astore_3
    //   96: aload_2
    //   97: monitorexit
    //   98: aload_3
    //   99: athrow
    //   100: iconst_0
    //   101: istore 6
    //   103: iload 6
    //   105: aload 5
    //   107: invokeinterface 346 1 0
    //   112: if_icmpge +86 -> 198
    //   115: aload 5
    //   117: iload 6
    //   119: invokeinterface 350 2 0
    //   124: checkcast 352	java/lang/String
    //   127: astore 11
    //   129: getstatic 20	com/avast/android/mobilesecurity/engine/internal/q:b	Ljava/util/Map;
    //   132: aload 11
    //   134: invokeinterface 338 2 0
    //   139: pop
    //   140: new 354	java/io/File
    //   143: dup
    //   144: new 222	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 223	java/lang/StringBuilder:<init>	()V
    //   151: aload_0
    //   152: ldc_w 356
    //   155: iconst_0
    //   156: invokevirtual 362	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   159: invokevirtual 365	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   162: ldc_w 367
    //   165: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: aload 11
    //   170: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   173: invokevirtual 238	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   176: invokespecial 369	java/io/File:<init>	(Ljava/lang/String;)V
    //   179: astore 13
    //   181: aload 13
    //   183: invokevirtual 372	java/io/File:exists	()Z
    //   186: ifeq +90 -> 276
    //   189: aload 13
    //   191: invokevirtual 375	java/io/File:delete	()Z
    //   194: pop
    //   195: goto +81 -> 276
    //   198: aload_0
    //   199: ldc_w 356
    //   202: iconst_0
    //   203: invokevirtual 362	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   206: invokevirtual 379	java/io/File:listFiles	()[Ljava/io/File;
    //   209: astore 7
    //   211: iconst_0
    //   212: istore 8
    //   214: iload 8
    //   216: aload 7
    //   218: arraylength
    //   219: if_icmpge +54 -> 273
    //   222: aload_0
    //   223: aload_1
    //   224: new 381	org/apache/http/entity/FileEntity
    //   227: dup
    //   228: aload 7
    //   230: iload 8
    //   232: aaload
    //   233: ldc 166
    //   235: invokespecial 384	org/apache/http/entity/FileEntity:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   238: invokestatic 343	com/avast/android/mobilesecurity/engine/internal/q:a	(Landroid/content/Context;Ljava/lang/Integer;Lorg/apache/http/HttpEntity;)Z
    //   241: ifeq +41 -> 282
    //   244: aload 7
    //   246: iload 8
    //   248: aaload
    //   249: invokevirtual 375	java/io/File:delete	()Z
    //   252: pop
    //   253: getstatic 20	com/avast/android/mobilesecurity/engine/internal/q:b	Ljava/util/Map;
    //   256: aload 7
    //   258: iload 8
    //   260: aaload
    //   261: invokevirtual 387	java/io/File:getName	()Ljava/lang/String;
    //   264: invokeinterface 338 2 0
    //   269: pop
    //   270: goto +12 -> 282
    //   273: aload_2
    //   274: monitorexit
    //   275: return
    //   276: iinc 6 1
    //   279: goto -176 -> 103
    //   282: iinc 8 1
    //   285: goto -71 -> 214
    //
    // Exception table:
    //   from	to	target	type
    //   6	98	95	finally
    //   103	275	95	finally
  }

  // ERROR //
  public static void a(android.content.Context paramContext, Integer paramInteger, String paramString, com.avast.android.mobilesecurity.engine.ah paramah, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aload_3
    //   1: ifnonnull +4 -> 5
    //   4: return
    //   5: new 354	java/io/File
    //   8: dup
    //   9: new 222	java/lang/StringBuilder
    //   12: dup
    //   13: invokespecial 223	java/lang/StringBuilder:<init>	()V
    //   16: aload_0
    //   17: ldc_w 356
    //   20: iconst_0
    //   21: invokevirtual 362	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   24: invokevirtual 365	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   27: ldc_w 367
    //   30: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: aload_3
    //   34: invokevirtual 390	com/avast/android/mobilesecurity/engine/ah:b	()Ljava/lang/String;
    //   37: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: invokevirtual 238	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: invokespecial 369	java/io/File:<init>	(Ljava/lang/String;)V
    //   46: invokevirtual 372	java/io/File:exists	()Z
    //   49: ifne -45 -> 4
    //   52: invokestatic 396	com/avast/android/mobilesecurity/engine/internal/a/e:u	()Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    //   55: astore 6
    //   57: iconst_1
    //   58: newarray byte
    //   60: dup
    //   61: iconst_0
    //   62: iconst_0
    //   63: bastore
    //   64: astore 7
    //   66: iload 4
    //   68: ifeq +14 -> 82
    //   71: aload 7
    //   73: iconst_0
    //   74: iconst_1
    //   75: aload 7
    //   77: iconst_0
    //   78: baload
    //   79: ior
    //   80: i2b
    //   81: bastore
    //   82: iload 5
    //   84: ifeq +14 -> 98
    //   87: aload 7
    //   89: iconst_0
    //   90: iconst_2
    //   91: aload 7
    //   93: iconst_0
    //   94: baload
    //   95: ior
    //   96: i2b
    //   97: bastore
    //   98: aload_0
    //   99: ldc 66
    //   101: invokestatic 71	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   104: checkcast 66	com/avast/android/generic/ae
    //   107: invokevirtual 78	com/avast/android/generic/ae:x	()Ljava/lang/String;
    //   110: ifnull +21 -> 131
    //   113: aload 6
    //   115: aload_0
    //   116: ldc 66
    //   118: invokestatic 71	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   121: checkcast 66	com/avast/android/generic/ae
    //   124: invokevirtual 78	com/avast/android/generic/ae:x	()Ljava/lang/String;
    //   127: invokevirtual 401	com/avast/android/mobilesecurity/engine/internal/a/f:b	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    //   130: pop
    //   131: aload 6
    //   133: aload_3
    //   134: getfield 290	com/avast/android/mobilesecurity/engine/ah:d	Ljava/lang/String;
    //   137: invokevirtual 403	com/avast/android/mobilesecurity/engine/internal/a/f:f	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    //   140: pop
    //   141: aload 6
    //   143: aload 7
    //   145: invokestatic 406	com/google/a/c:a	([B)Lcom/google/a/c;
    //   148: invokevirtual 409	com/avast/android/mobilesecurity/engine/internal/a/f:a	(Lcom/google/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    //   151: pop
    //   152: aload_0
    //   153: ldc 66
    //   155: invokestatic 71	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   158: checkcast 66	com/avast/android/generic/ae
    //   161: invokevirtual 75	com/avast/android/generic/ae:r	()Ljava/lang/String;
    //   164: astore 10
    //   166: aload_0
    //   167: invokestatic 83	com/avast/android/generic/util/l:a	(Landroid/content/Context;)Z
    //   170: ifeq +7 -> 177
    //   173: ldc 85
    //   175: astore 10
    //   177: aload 6
    //   179: aload 10
    //   181: invokevirtual 411	com/avast/android/mobilesecurity/engine/internal/a/f:a	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    //   184: pop
    //   185: aload 6
    //   187: invokestatic 112	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   190: invokevirtual 115	java/util/Locale:getCountry	()Ljava/lang/String;
    //   193: invokevirtual 413	com/avast/android/mobilesecurity/engine/internal/a/f:g	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    //   196: pop
    //   197: aload 6
    //   199: invokestatic 112	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   202: invokevirtual 115	java/util/Locale:getCountry	()Ljava/lang/String;
    //   205: invokevirtual 415	com/avast/android/mobilesecurity/engine/internal/a/f:h	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    //   208: pop
    //   209: aload 6
    //   211: getstatic 420	com/avast/android/mobilesecurity/engine/internal/a/c:c	Lcom/avast/android/mobilesecurity/engine/internal/a/c;
    //   214: invokevirtual 423	com/avast/android/mobilesecurity/engine/internal/a/f:a	(Lcom/avast/android/mobilesecurity/engine/internal/a/c;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    //   217: pop
    //   218: aload 6
    //   220: aload_3
    //   221: invokevirtual 390	com/avast/android/mobilesecurity/engine/ah:b	()Ljava/lang/String;
    //   224: invokevirtual 425	com/avast/android/mobilesecurity/engine/internal/a/f:e	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    //   227: pop
    //   228: aload 6
    //   230: aload_2
    //   231: invokevirtual 427	com/avast/android/mobilesecurity/engine/internal/a/f:c	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    //   234: pop
    //   235: aload 6
    //   237: aload_3
    //   238: getfield 285	com/avast/android/mobilesecurity/engine/ah:c	Ljava/lang/String;
    //   241: invokevirtual 429	com/avast/android/mobilesecurity/engine/internal/a/f:d	(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/f;
    //   244: pop
    //   245: aload 6
    //   247: invokevirtual 432	com/avast/android/mobilesecurity/engine/internal/a/f:c	()Lcom/avast/android/mobilesecurity/engine/internal/a/e;
    //   250: astore 18
    //   252: aconst_null
    //   253: astore 19
    //   255: new 31	java/util/LinkedList
    //   258: dup
    //   259: invokespecial 32	java/util/LinkedList:<init>	()V
    //   262: astore 20
    //   264: getstatic 20	com/avast/android/mobilesecurity/engine/internal/q:b	Ljava/util/Map;
    //   267: astore 33
    //   269: aload 33
    //   271: monitorenter
    //   272: getstatic 20	com/avast/android/mobilesecurity/engine/internal/q:b	Ljava/util/Map;
    //   275: aload_3
    //   276: invokevirtual 390	com/avast/android/mobilesecurity/engine/ah:b	()Ljava/lang/String;
    //   279: aload 18
    //   281: invokevirtual 433	com/avast/android/mobilesecurity/engine/internal/a/e:bo	()[B
    //   284: invokeinterface 437 3 0
    //   289: pop
    //   290: getstatic 20	com/avast/android/mobilesecurity/engine/internal/q:b	Ljava/util/Map;
    //   293: invokeinterface 301 1 0
    //   298: invokeinterface 307 1 0
    //   303: astore 37
    //   305: aconst_null
    //   306: astore 38
    //   308: aload 37
    //   310: invokeinterface 312 1 0
    //   315: ifeq +133 -> 448
    //   318: aload 37
    //   320: invokeinterface 316 1 0
    //   325: checkcast 318	java/util/Map$Entry
    //   328: astore 43
    //   330: new 354	java/io/File
    //   333: dup
    //   334: new 222	java/lang/StringBuilder
    //   337: dup
    //   338: invokespecial 223	java/lang/StringBuilder:<init>	()V
    //   341: aload_0
    //   342: ldc_w 356
    //   345: iconst_0
    //   346: invokevirtual 362	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   349: invokevirtual 365	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   352: ldc_w 367
    //   355: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   358: aload 43
    //   360: invokeinterface 334 1 0
    //   365: checkcast 352	java/lang/String
    //   368: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: invokevirtual 238	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   374: invokespecial 369	java/io/File:<init>	(Ljava/lang/String;)V
    //   377: astore 44
    //   379: aload 44
    //   381: invokevirtual 372	java/io/File:exists	()Z
    //   384: ifne +316 -> 700
    //   387: aload 43
    //   389: invokeinterface 326 1 0
    //   394: checkcast 340	[B
    //   397: astore 46
    //   399: new 439	java/io/FileOutputStream
    //   402: dup
    //   403: aload 44
    //   405: invokespecial 442	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   408: astore 47
    //   410: aload 47
    //   412: aload 46
    //   414: invokevirtual 445	java/io/FileOutputStream:write	([B)V
    //   417: aload 47
    //   419: invokevirtual 448	java/io/FileOutputStream:flush	()V
    //   422: aload 47
    //   424: astore 19
    //   426: aload 20
    //   428: aload 43
    //   430: invokeinterface 334 1 0
    //   435: invokeinterface 51 2 0
    //   440: pop
    //   441: aload 19
    //   443: astore 38
    //   445: goto -137 -> 308
    //   448: aload 33
    //   450: monitorexit
    //   451: aload 38
    //   453: ifnull +8 -> 461
    //   456: aload 38
    //   458: invokevirtual 451	java/io/FileOutputStream:close	()V
    //   461: iconst_0
    //   462: istore 39
    //   464: iload 39
    //   466: aload 20
    //   468: invokeinterface 346 1 0
    //   473: if_icmpge +113 -> 586
    //   476: aload 20
    //   478: iload 39
    //   480: invokeinterface 350 2 0
    //   485: checkcast 352	java/lang/String
    //   488: astore 40
    //   490: getstatic 20	com/avast/android/mobilesecurity/engine/internal/q:b	Ljava/util/Map;
    //   493: aload 40
    //   495: invokeinterface 338 2 0
    //   500: pop
    //   501: iinc 39 1
    //   504: goto -40 -> 464
    //   507: astore 34
    //   509: aload 33
    //   511: monitorexit
    //   512: aload 34
    //   514: athrow
    //   515: astore 28
    //   517: aload 19
    //   519: ifnull +8 -> 527
    //   522: aload 19
    //   524: invokevirtual 451	java/io/FileOutputStream:close	()V
    //   527: iconst_0
    //   528: istore 29
    //   530: iload 29
    //   532: aload 20
    //   534: invokeinterface 346 1 0
    //   539: if_icmpge +47 -> 586
    //   542: aload 20
    //   544: iload 29
    //   546: invokeinterface 350 2 0
    //   551: checkcast 352	java/lang/String
    //   554: astore 30
    //   556: getstatic 20	com/avast/android/mobilesecurity/engine/internal/q:b	Ljava/util/Map;
    //   559: aload 30
    //   561: invokeinterface 338 2 0
    //   566: pop
    //   567: iinc 29 1
    //   570: goto -40 -> 530
    //   573: aload_0
    //   574: aload_1
    //   575: invokestatic 453	com/avast/android/mobilesecurity/engine/internal/q:a	(Landroid/content/Context;Ljava/lang/Integer;)V
    //   578: aload 23
    //   580: athrow
    //   581: astore 32
    //   583: goto -56 -> 527
    //   586: aload_0
    //   587: aload_1
    //   588: invokestatic 453	com/avast/android/mobilesecurity/engine/internal/q:a	(Landroid/content/Context;Ljava/lang/Integer;)V
    //   591: goto -587 -> 4
    //   594: astore 21
    //   596: aconst_null
    //   597: astore 22
    //   599: aload 21
    //   601: astore 23
    //   603: aload 22
    //   605: ifnull +8 -> 613
    //   608: aload 22
    //   610: invokevirtual 451	java/io/FileOutputStream:close	()V
    //   613: iconst_0
    //   614: istore 24
    //   616: iload 24
    //   618: aload 20
    //   620: invokeinterface 346 1 0
    //   625: if_icmpge -52 -> 573
    //   628: aload 20
    //   630: iload 24
    //   632: invokeinterface 350 2 0
    //   637: checkcast 352	java/lang/String
    //   640: astore 25
    //   642: getstatic 20	com/avast/android/mobilesecurity/engine/internal/q:b	Ljava/util/Map;
    //   645: aload 25
    //   647: invokeinterface 338 2 0
    //   652: pop
    //   653: iinc 24 1
    //   656: goto -40 -> 616
    //   659: astore 27
    //   661: goto -48 -> 613
    //   664: astore 42
    //   666: goto -205 -> 461
    //   669: astore 35
    //   671: aload 19
    //   673: astore 22
    //   675: aload 35
    //   677: astore 23
    //   679: goto -76 -> 603
    //   682: astore 34
    //   684: aload 47
    //   686: astore 19
    //   688: goto -179 -> 509
    //   691: astore 34
    //   693: aload 38
    //   695: astore 19
    //   697: goto -188 -> 509
    //   700: aload 38
    //   702: astore 19
    //   704: goto -278 -> 426
    //
    // Exception table:
    //   from	to	target	type
    //   272	305	507	finally
    //   426	441	507	finally
    //   509	512	507	finally
    //   264	272	515	java/io/IOException
    //   512	515	515	java/io/IOException
    //   522	527	581	java/io/IOException
    //   264	272	594	finally
    //   608	613	659	java/io/IOException
    //   456	461	664	java/io/IOException
    //   512	515	669	finally
    //   410	422	682	finally
    //   308	410	691	finally
    //   448	451	691	finally
  }

  public static void a(String paramString, Integer paramInteger)
  {
    int i = 0;
    if (paramString.indexOf('/', 7) != -1)
      paramString = paramString.substring(0, paramString.indexOf('/', 7));
    String str1 = paramString.substring(2 + paramString.indexOf("//"));
    while (true)
    {
      synchronized (a)
      {
        String[] arrayOfString = str1.split("\\.");
        if (i < -1 + arrayOfString.length)
        {
          String str2 = "";
          int j = i;
          if (j < arrayOfString.length)
          {
            str2 = str2 + arrayOfString[j] + ".";
            j++;
            continue;
          }
          String str3 = str2.substring(0, -1 + str2.length());
          long l = System.nanoTime() + 1000L * (1000L * (1000L * paramInteger.intValue()));
          Long localLong = (Long)a.get(str3);
          if (localLong != null)
          {
            if (l > localLong.longValue())
              a.remove(str3);
          }
          else
          {
            a.put(str3, Long.valueOf(l));
            if (a.size() <= 1000)
              break label256;
            a();
            break label256;
          }
          break;
        }
      }
      label256: i++;
    }
  }

  // ERROR //
  private static boolean a(android.content.Context paramContext, Integer paramInteger, org.apache.http.HttpEntity paramHttpEntity)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokestatic 497	com/avast/android/mobilesecurity/engine/internal/n:e	(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/y;
    //   5: astore_3
    //   6: aload_3
    //   7: ifnonnull +9 -> 16
    //   10: iconst_0
    //   11: istore 8
    //   13: iload 8
    //   15: ireturn
    //   16: aload_3
    //   17: invokevirtual 64	com/avast/android/mobilesecurity/engine/y:a	()Ljava/net/URI;
    //   20: astore 4
    //   22: aload_0
    //   23: ldc 66
    //   25: invokestatic 71	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   28: checkcast 66	com/avast/android/generic/ae
    //   31: invokevirtual 75	com/avast/android/generic/ae:r	()Ljava/lang/String;
    //   34: astore 5
    //   36: aload_0
    //   37: invokestatic 83	com/avast/android/generic/util/l:a	(Landroid/content/Context;)Z
    //   40: ifeq +7 -> 47
    //   43: ldc 85
    //   45: astore 5
    //   47: aload 5
    //   49: ldc_w 499
    //   52: ldc 135
    //   54: invokevirtual 503	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   57: astore 6
    //   59: getstatic 24	com/avast/android/mobilesecurity/engine/internal/q:c	[B
    //   62: aload 6
    //   64: invokestatic 508	com/avast/android/generic/util/e:a	([BLjava/lang/String;)[B
    //   67: astore 9
    //   69: new 352	java/lang/String
    //   72: dup
    //   73: aload 9
    //   75: invokestatic 513	com/avast/android/generic/c/b:a	([B)[C
    //   78: invokespecial 516	java/lang/String:<init>	([C)V
    //   81: bipush 43
    //   83: bipush 45
    //   85: invokevirtual 519	java/lang/String:replace	(CC)Ljava/lang/String;
    //   88: bipush 47
    //   90: bipush 95
    //   92: invokevirtual 519	java/lang/String:replace	(CC)Ljava/lang/String;
    //   95: astore 10
    //   97: ldc 145
    //   99: invokestatic 150	android/b/a/a:a	(Ljava/lang/String;)Landroid/b/a/a;
    //   102: astore 11
    //   104: new 152	org/apache/http/client/methods/HttpPost
    //   107: dup
    //   108: new 222	java/lang/StringBuilder
    //   111: dup
    //   112: invokespecial 223	java/lang/StringBuilder:<init>	()V
    //   115: aload 4
    //   117: invokevirtual 365	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   120: aload 10
    //   122: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: invokevirtual 238	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: invokespecial 520	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   131: astore 12
    //   133: aload 12
    //   135: aload_2
    //   136: invokevirtual 174	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   139: aconst_null
    //   140: astore 13
    //   142: aload 11
    //   144: aload 12
    //   146: invokevirtual 178	android/b/a/a:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   149: astore 20
    //   151: aload 20
    //   153: astore 15
    //   155: aload 15
    //   157: invokeinterface 184 1 0
    //   162: invokeinterface 190 1 0
    //   167: invokestatic 525	com/avast/android/mobilesecurity/engine/internal/a/h:a	(Ljava/io/InputStream;)Lcom/avast/android/mobilesecurity/engine/internal/a/h;
    //   170: astore 22
    //   172: aload 22
    //   174: invokevirtual 526	com/avast/android/mobilesecurity/engine/internal/a/h:b	()Z
    //   177: istore 23
    //   179: iload 23
    //   181: ifne +44 -> 225
    //   184: aload 15
    //   186: ifnull +15 -> 201
    //   189: aload 15
    //   191: invokeinterface 184 1 0
    //   196: invokeinterface 201 1 0
    //   201: aload 11
    //   203: ifnull +8 -> 211
    //   206: aload 11
    //   208: invokevirtual 203	android/b/a/a:a	()V
    //   211: iconst_0
    //   212: istore 8
    //   214: goto -201 -> 13
    //   217: astore 7
    //   219: iconst_0
    //   220: istore 8
    //   222: goto -209 -> 13
    //   225: aload 22
    //   227: invokevirtual 529	com/avast/android/mobilesecurity/engine/internal/a/h:c	()Lcom/avast/android/mobilesecurity/engine/internal/a/j;
    //   230: astore 24
    //   232: getstatic 534	com/avast/android/mobilesecurity/engine/internal/r:a	[I
    //   235: aload 24
    //   237: invokevirtual 539	com/avast/android/mobilesecurity/engine/internal/a/j:ordinal	()I
    //   240: iaload
    //   241: istore 25
    //   243: iload 25
    //   245: tableswitch	default:+27 -> 272, 1:+60->305, 2:+60->305, 3:+93->338
    //   273: dconst_1
    //   274: ifnull +15 -> 289
    //   277: aload 15
    //   279: invokeinterface 184 1 0
    //   284: invokeinterface 201 1 0
    //   289: aload 11
    //   291: ifnull +8 -> 299
    //   294: aload 11
    //   296: invokevirtual 203	android/b/a/a:a	()V
    //   299: iconst_0
    //   300: istore 8
    //   302: goto -289 -> 13
    //   305: iconst_1
    //   306: istore 8
    //   308: aload 15
    //   310: ifnull +15 -> 325
    //   313: aload 15
    //   315: invokeinterface 184 1 0
    //   320: invokeinterface 201 1 0
    //   325: aload 11
    //   327: ifnull -314 -> 13
    //   330: aload 11
    //   332: invokevirtual 203	android/b/a/a:a	()V
    //   335: goto -322 -> 13
    //   338: aload 15
    //   340: ifnull +15 -> 355
    //   343: aload 15
    //   345: invokeinterface 184 1 0
    //   350: invokeinterface 201 1 0
    //   355: aload 11
    //   357: ifnull +8 -> 365
    //   360: aload 11
    //   362: invokevirtual 203	android/b/a/a:a	()V
    //   365: iconst_0
    //   366: istore 8
    //   368: goto -355 -> 13
    //   371: astore 18
    //   373: aload 13
    //   375: ifnull +15 -> 390
    //   378: aload 13
    //   380: invokeinterface 184 1 0
    //   385: invokeinterface 201 1 0
    //   390: aload 11
    //   392: ifnull +8 -> 400
    //   395: aload 11
    //   397: invokevirtual 203	android/b/a/a:a	()V
    //   400: iconst_0
    //   401: istore 8
    //   403: goto -390 -> 13
    //   406: astore 14
    //   408: aconst_null
    //   409: astore 15
    //   411: aload 14
    //   413: astore 16
    //   415: aload 15
    //   417: ifnull +15 -> 432
    //   420: aload 15
    //   422: invokeinterface 184 1 0
    //   427: invokeinterface 201 1 0
    //   432: aload 11
    //   434: ifnull +8 -> 442
    //   437: aload 11
    //   439: invokevirtual 203	android/b/a/a:a	()V
    //   442: aload 16
    //   444: athrow
    //   445: astore 28
    //   447: goto -158 -> 289
    //   450: astore 26
    //   452: goto -97 -> 355
    //   455: astore 27
    //   457: goto -132 -> 325
    //   460: astore 29
    //   462: goto -261 -> 201
    //   465: astore 17
    //   467: goto -35 -> 432
    //   470: astore 19
    //   472: goto -82 -> 390
    //   475: astore 16
    //   477: goto -62 -> 415
    //   480: astore 21
    //   482: aload 15
    //   484: astore 13
    //   486: goto -113 -> 373
    //
    // Exception table:
    //   from	to	target	type
    //   59	69	217	java/io/IOException
    //   142	151	371	java/io/IOException
    //   142	151	406	finally
    //   277	289	445	java/io/IOException
    //   343	355	450	java/io/IOException
    //   313	325	455	java/io/IOException
    //   189	201	460	java/io/IOException
    //   420	432	465	java/io/IOException
    //   378	390	470	java/io/IOException
    //   155	179	475	finally
    //   225	243	475	finally
    //   155	179	480	java/io/IOException
    //   225	243	480	java/io/IOException
  }

  // ERROR //
  private static boolean a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 541
    //   4: invokevirtual 466	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   7: iconst_m1
    //   8: if_icmpeq +17 -> 25
    //   11: aload_0
    //   12: iconst_3
    //   13: aload_0
    //   14: ldc_w 541
    //   17: invokevirtual 466	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   20: iadd
    //   21: invokevirtual 469	java/lang/String:substring	(I)Ljava/lang/String;
    //   24: astore_0
    //   25: aload_0
    //   26: bipush 47
    //   28: invokevirtual 544	java/lang/String:indexOf	(I)I
    //   31: iconst_m1
    //   32: if_icmpeq +15 -> 47
    //   35: aload_0
    //   36: iconst_0
    //   37: aload_0
    //   38: bipush 47
    //   40: invokevirtual 544	java/lang/String:indexOf	(I)I
    //   43: invokevirtual 462	java/lang/String:substring	(II)Ljava/lang/String;
    //   46: astore_0
    //   47: getstatic 18	com/avast/android/mobilesecurity/engine/internal/q:a	Ljava/util/Map;
    //   50: astore_1
    //   51: aload_1
    //   52: monitorenter
    //   53: getstatic 18	com/avast/android/mobilesecurity/engine/internal/q:a	Ljava/util/Map;
    //   56: aload_0
    //   57: invokeinterface 547 2 0
    //   62: ifeq +54 -> 116
    //   65: invokestatic 323	java/lang/System:nanoTime	()J
    //   68: getstatic 18	com/avast/android/mobilesecurity/engine/internal/q:a	Ljava/util/Map;
    //   71: aload_0
    //   72: invokeinterface 489 2 0
    //   77: checkcast 328	java/lang/Long
    //   80: invokevirtual 331	java/lang/Long:longValue	()J
    //   83: lcmp
    //   84: ifle +20 -> 104
    //   87: getstatic 18	com/avast/android/mobilesecurity/engine/internal/q:a	Ljava/util/Map;
    //   90: aload_0
    //   91: invokeinterface 338 2 0
    //   96: pop
    //   97: aload_1
    //   98: monitorexit
    //   99: iconst_0
    //   100: istore_3
    //   101: goto +19 -> 120
    //   104: iconst_1
    //   105: istore_3
    //   106: aload_1
    //   107: monitorexit
    //   108: goto +12 -> 120
    //   111: astore_2
    //   112: aload_1
    //   113: monitorexit
    //   114: aload_2
    //   115: athrow
    //   116: aload_1
    //   117: monitorexit
    //   118: iconst_0
    //   119: istore_3
    //   120: iload_3
    //   121: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   53	114	111	finally
    //   116	118	111	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.q
 * JD-Core Version:    0.6.2
 */