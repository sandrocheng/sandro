package com.antivirus.core.scanners;

import android.text.TextUtils;
import com.antivirus.core.scanners.a.a.c;
import com.google.b.e;
import com.google.b.h;
import java.util.ArrayList;
import java.util.Iterator;

public class t
{
  public static boolean a = false;
  public static boolean b = true;
  private final int c = 4;
  private ArrayList d = new ArrayList();

  public t(ArrayList paramArrayList)
  {
    a(paramArrayList);
  }

  private int a(e parame, String paramString1, String paramString2)
  {
    int i = 9999;
    if (!TextUtils.isEmpty(paramString1))
      parame = parame.c(paramString1);
    h localh;
    if (parame != null)
    {
      localh = parame.a(paramString2);
      if (localh == null);
    }
    try
    {
      int j = localh.d();
      i = j;
      return i;
    }
    catch (Exception localException)
    {
      while (true)
        localException.getMessage();
    }
  }

  protected static String a(String paramString)
  {
    if (paramString.contains("\""))
      paramString = paramString.replace("\"", "\n");
    if (paramString.contains("\r"))
      paramString = paramString.replace("\r", "");
    String str2;
    if (paramString.equals(""))
      str2 = "";
    while (true)
    {
      return str2;
      String str1 = new String(a.a.a.a.a.a.b(paramString + "\n"));
      str2 = str1 + "\n";
      if (TextUtils.isEmpty(str2))
        str2 = "";
    }
  }

  // ERROR //
  private void a(ArrayList paramArrayList)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 100	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   4: astore_2
    //   5: aload_2
    //   6: invokeinterface 106 1 0
    //   11: ifeq +1758 -> 1769
    //   14: aload_2
    //   15: invokeinterface 110 1 0
    //   20: checkcast 112	com/antivirus/core/e/e
    //   23: astore_3
    //   24: aload_3
    //   25: getfield 114	com/antivirus/core/e/e:b	I
    //   28: istore 4
    //   30: aload_3
    //   31: getfield 116	com/antivirus/core/e/e:d	I
    //   34: istore 5
    //   36: aload_3
    //   37: getfield 119	com/antivirus/core/e/e:a	Ljava/lang/String;
    //   40: invokestatic 121	com/antivirus/core/scanners/t:a	(Ljava/lang/String;)Ljava/lang/String;
    //   43: astore 6
    //   45: aload 6
    //   47: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   50: ifne -45 -> 5
    //   53: new 25	java/util/ArrayList
    //   56: dup
    //   57: invokespecial 26	java/util/ArrayList:<init>	()V
    //   60: astore 7
    //   62: new 25	java/util/ArrayList
    //   65: dup
    //   66: invokespecial 26	java/util/ArrayList:<init>	()V
    //   69: astore 8
    //   71: new 25	java/util/ArrayList
    //   74: dup
    //   75: invokespecial 26	java/util/ArrayList:<init>	()V
    //   78: astore 9
    //   80: new 25	java/util/ArrayList
    //   83: dup
    //   84: invokespecial 26	java/util/ArrayList:<init>	()V
    //   87: astore 10
    //   89: new 25	java/util/ArrayList
    //   92: dup
    //   93: invokespecial 26	java/util/ArrayList:<init>	()V
    //   96: astore 11
    //   98: new 123	com/google/b/g
    //   101: dup
    //   102: invokespecial 124	com/google/b/g:<init>	()V
    //   105: aload 6
    //   107: invokevirtual 127	com/google/b/g:a	(Ljava/lang/String;)Lcom/google/b/b;
    //   110: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   113: ldc 135
    //   115: invokevirtual 44	com/google/b/e:c	(Ljava/lang/String;)Lcom/google/b/e;
    //   118: astore 14
    //   120: aload 14
    //   122: ifnull -117 -> 5
    //   125: aload 14
    //   127: ldc 137
    //   129: invokevirtual 47	com/google/b/e:a	(Ljava/lang/String;)Lcom/google/b/h;
    //   132: astore 15
    //   134: aload 15
    //   136: ifnull -131 -> 5
    //   139: iconst_0
    //   140: ifeq +3 -> 143
    //   143: aload 15
    //   145: invokevirtual 139	com/google/b/h:c	()Ljava/lang/String;
    //   148: astore 16
    //   150: aload 16
    //   152: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   155: ifne -150 -> 5
    //   158: aload 14
    //   160: ldc 141
    //   162: invokevirtual 47	com/google/b/e:a	(Ljava/lang/String;)Lcom/google/b/h;
    //   165: astore 17
    //   167: aload 17
    //   169: ifnull -164 -> 5
    //   172: aload 17
    //   174: invokevirtual 52	com/google/b/h:d	()I
    //   177: istore 20
    //   179: aload 14
    //   181: ldc 143
    //   183: invokevirtual 44	com/google/b/e:c	(Ljava/lang/String;)Lcom/google/b/e;
    //   186: astore 21
    //   188: aload 21
    //   190: ifnull +1621 -> 1811
    //   193: iconst_0
    //   194: ifeq +3 -> 197
    //   197: aload_0
    //   198: aload 21
    //   200: ldc 74
    //   202: ldc 137
    //   204: invokespecial 146	com/antivirus/core/scanners/t:b	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   207: astore 95
    //   209: aload 95
    //   211: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   214: ifne -209 -> 5
    //   217: aload_0
    //   218: aload 21
    //   220: ldc 74
    //   222: ldc 148
    //   224: invokespecial 151	com/antivirus/core/scanners/t:c	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    //   227: astore 96
    //   229: iconst_0
    //   230: ifeq +3 -> 233
    //   233: new 153	com/antivirus/core/scanners/a/a/b
    //   236: dup
    //   237: aload 95
    //   239: aload 96
    //   241: invokevirtual 158	java/lang/Boolean:booleanValue	()Z
    //   244: invokespecial 161	com/antivirus/core/scanners/a/a/b:<init>	(Ljava/lang/String;Z)V
    //   247: astore 97
    //   249: iconst_1
    //   250: istore 22
    //   252: aload 97
    //   254: astore 23
    //   256: aload 14
    //   258: ldc 163
    //   260: invokevirtual 166	com/google/b/e:b	(Ljava/lang/String;)Lcom/google/b/a;
    //   263: astore 24
    //   265: aload 24
    //   267: ifnull +1538 -> 1805
    //   270: iconst_0
    //   271: istore 81
    //   273: iconst_0
    //   274: istore 25
    //   276: iload 81
    //   278: aload 24
    //   280: invokevirtual 170	com/google/b/a:a	()I
    //   283: if_icmpge +309 -> 592
    //   286: iconst_0
    //   287: ifeq +3 -> 290
    //   290: aload_0
    //   291: aload 24
    //   293: iload 81
    //   295: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   298: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   301: ldc 137
    //   303: ldc 137
    //   305: invokespecial 146	com/antivirus/core/scanners/t:b	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   308: astore 94
    //   310: iload 25
    //   312: istore 83
    //   314: aload 94
    //   316: astore 84
    //   318: aload 84
    //   320: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   323: ifne +1476 -> 1799
    //   326: aload_0
    //   327: aload 24
    //   329: iload 81
    //   331: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   334: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   337: ldc 137
    //   339: ldc 148
    //   341: invokespecial 151	com/antivirus/core/scanners/t:c	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    //   344: invokevirtual 158	java/lang/Boolean:booleanValue	()Z
    //   347: istore 85
    //   349: iconst_0
    //   350: ifeq +3 -> 353
    //   353: aload_0
    //   354: aload 24
    //   356: iload 81
    //   358: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   361: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   364: ldc 175
    //   366: ldc 137
    //   368: invokespecial 146	com/antivirus/core/scanners/t:b	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   371: astore 86
    //   373: aload 86
    //   375: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   378: istore 87
    //   380: iconst_0
    //   381: istore 88
    //   383: iload 87
    //   385: ifne +26 -> 411
    //   388: aload_0
    //   389: aload 24
    //   391: iload 81
    //   393: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   396: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   399: ldc 175
    //   401: ldc 148
    //   403: invokespecial 151	com/antivirus/core/scanners/t:c	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    //   406: invokevirtual 158	java/lang/Boolean:booleanValue	()Z
    //   409: istore 88
    //   411: iconst_0
    //   412: ifeq +3 -> 415
    //   415: aload_0
    //   416: aload 24
    //   418: iload 81
    //   420: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   423: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   426: ldc 177
    //   428: ldc 137
    //   430: invokespecial 146	com/antivirus/core/scanners/t:b	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   433: astore 89
    //   435: iconst_0
    //   436: ifeq +3 -> 439
    //   439: aload 89
    //   441: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   444: istore 90
    //   446: iconst_0
    //   447: istore 91
    //   449: iload 90
    //   451: ifne +26 -> 477
    //   454: aload_0
    //   455: aload 24
    //   457: iload 81
    //   459: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   462: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   465: ldc 177
    //   467: ldc 148
    //   469: invokespecial 151	com/antivirus/core/scanners/t:c	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    //   472: invokevirtual 158	java/lang/Boolean:booleanValue	()Z
    //   475: istore 91
    //   477: aload 84
    //   479: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   482: ifeq +79 -> 561
    //   485: aload 86
    //   487: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   490: ifeq +71 -> 561
    //   493: aload 89
    //   495: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   498: ifeq +63 -> 561
    //   501: iload 22
    //   503: istore 93
    //   505: iinc 81 1
    //   508: iload 93
    //   510: istore 22
    //   512: iload 83
    //   514: istore 25
    //   516: goto -240 -> 276
    //   519: astore 12
    //   521: aload 12
    //   523: invokevirtual 56	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   526: pop
    //   527: iconst_0
    //   528: ifeq -523 -> 5
    //   531: goto -526 -> 5
    //   534: astore 18
    //   536: aload 18
    //   538: invokevirtual 56	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   541: pop
    //   542: goto -537 -> 5
    //   545: astore 82
    //   547: iconst_0
    //   548: ifeq +3 -> 551
    //   551: iconst_1
    //   552: istore 83
    //   554: ldc 74
    //   556: astore 84
    //   558: goto -240 -> 318
    //   561: aload 7
    //   563: new 179	com/antivirus/core/scanners/a/a/g
    //   566: dup
    //   567: aload 84
    //   569: iload 85
    //   571: aload 86
    //   573: iload 88
    //   575: aload 89
    //   577: iload 91
    //   579: invokespecial 182	com/antivirus/core/scanners/a/a/g:<init>	(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;Z)V
    //   582: invokevirtual 185	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   585: pop
    //   586: iconst_1
    //   587: istore 93
    //   589: goto -84 -> 505
    //   592: iload 25
    //   594: ifne -589 -> 5
    //   597: aload 14
    //   599: ldc 187
    //   601: invokevirtual 166	com/google/b/e:b	(Ljava/lang/String;)Lcom/google/b/a;
    //   604: astore 26
    //   606: aload 26
    //   608: ifnull +1180 -> 1788
    //   611: iload 25
    //   613: istore 27
    //   615: iload 22
    //   617: istore 28
    //   619: iconst_0
    //   620: istore 71
    //   622: iload 71
    //   624: aload 26
    //   626: invokevirtual 170	com/google/b/a:a	()I
    //   629: if_icmpge +188 -> 817
    //   632: ldc 74
    //   634: astore 72
    //   636: aload_0
    //   637: aload 26
    //   639: iload 71
    //   641: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   644: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   647: ldc 137
    //   649: ldc 137
    //   651: invokespecial 146	com/antivirus/core/scanners/t:b	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   654: astore 80
    //   656: aload 80
    //   658: astore 72
    //   660: aload 72
    //   662: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   665: istore 74
    //   667: iconst_0
    //   668: istore 75
    //   670: iload 74
    //   672: ifne +26 -> 698
    //   675: aload_0
    //   676: aload 26
    //   678: iload 71
    //   680: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   683: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   686: ldc 137
    //   688: ldc 148
    //   690: invokespecial 151	com/antivirus/core/scanners/t:c	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    //   693: invokevirtual 158	java/lang/Boolean:booleanValue	()Z
    //   696: istore 75
    //   698: aload_0
    //   699: aload 26
    //   701: iload 71
    //   703: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   706: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   709: ldc 175
    //   711: ldc 137
    //   713: invokespecial 146	com/antivirus/core/scanners/t:b	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   716: astore 76
    //   718: aload 76
    //   720: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   723: istore 77
    //   725: iconst_0
    //   726: istore 78
    //   728: iload 77
    //   730: ifne +26 -> 756
    //   733: aload_0
    //   734: aload 26
    //   736: iload 71
    //   738: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   741: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   744: ldc 175
    //   746: ldc 148
    //   748: invokespecial 151	com/antivirus/core/scanners/t:c	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    //   751: invokevirtual 158	java/lang/Boolean:booleanValue	()Z
    //   754: istore 78
    //   756: aload 72
    //   758: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   761: ifeq +29 -> 790
    //   764: aload 76
    //   766: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   769: ifeq +21 -> 790
    //   772: iinc 71 1
    //   775: goto -153 -> 622
    //   778: astore 73
    //   780: iconst_0
    //   781: ifeq +3 -> 784
    //   784: iconst_1
    //   785: istore 27
    //   787: goto -127 -> 660
    //   790: aload 8
    //   792: new 189	com/antivirus/core/scanners/a/a/h
    //   795: dup
    //   796: aload 72
    //   798: iload 75
    //   800: aload 76
    //   802: iload 78
    //   804: invokespecial 192	com/antivirus/core/scanners/a/a/h:<init>	(Ljava/lang/String;ZLjava/lang/String;Z)V
    //   807: invokevirtual 185	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   810: pop
    //   811: iconst_1
    //   812: istore 28
    //   814: goto -42 -> 772
    //   817: iload 27
    //   819: ifne -814 -> 5
    //   822: aload 14
    //   824: ldc 194
    //   826: invokevirtual 166	com/google/b/e:b	(Ljava/lang/String;)Lcom/google/b/a;
    //   829: astore 29
    //   831: aload 29
    //   833: ifnull +114 -> 947
    //   836: iconst_0
    //   837: istore 66
    //   839: iload 66
    //   841: aload 29
    //   843: invokevirtual 170	com/google/b/a:a	()I
    //   846: if_icmpge +96 -> 942
    //   849: ldc 74
    //   851: astore 67
    //   853: aload_0
    //   854: aload 29
    //   856: iload 66
    //   858: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   861: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   864: ldc 137
    //   866: ldc 137
    //   868: invokespecial 146	com/antivirus/core/scanners/t:b	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   871: astore 70
    //   873: aload 70
    //   875: astore 67
    //   877: aload 67
    //   879: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   882: ifne +42 -> 924
    //   885: aload 9
    //   887: new 153	com/antivirus/core/scanners/a/a/b
    //   890: dup
    //   891: aload 67
    //   893: aload_0
    //   894: aload 29
    //   896: iload 66
    //   898: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   901: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   904: ldc 137
    //   906: ldc 148
    //   908: invokespecial 151	com/antivirus/core/scanners/t:c	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    //   911: invokevirtual 158	java/lang/Boolean:booleanValue	()Z
    //   914: invokespecial 161	com/antivirus/core/scanners/a/a/b:<init>	(Ljava/lang/String;Z)V
    //   917: invokevirtual 185	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   920: pop
    //   921: iconst_1
    //   922: istore 28
    //   924: iinc 66 1
    //   927: goto -88 -> 839
    //   930: astore 68
    //   932: iconst_0
    //   933: ifeq +3 -> 936
    //   936: iconst_1
    //   937: istore 27
    //   939: goto -62 -> 877
    //   942: iload 27
    //   944: ifne -939 -> 5
    //   947: aload 14
    //   949: ldc 196
    //   951: invokevirtual 166	com/google/b/e:b	(Ljava/lang/String;)Lcom/google/b/a;
    //   954: astore 30
    //   956: aload 30
    //   958: ifnull +86 -> 1044
    //   961: iconst_0
    //   962: istore 63
    //   964: iload 63
    //   966: aload 30
    //   968: invokevirtual 170	com/google/b/a:a	()I
    //   971: if_icmpge +73 -> 1044
    //   974: aload_0
    //   975: aload 30
    //   977: iload 63
    //   979: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   982: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   985: ldc 74
    //   987: ldc 137
    //   989: invokespecial 146	com/antivirus/core/scanners/t:b	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   992: astore 64
    //   994: aload 64
    //   996: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   999: ifne +39 -> 1038
    //   1002: aload 10
    //   1004: new 153	com/antivirus/core/scanners/a/a/b
    //   1007: dup
    //   1008: aload 64
    //   1010: aload_0
    //   1011: aload 30
    //   1013: iload 63
    //   1015: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   1018: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   1021: ldc 74
    //   1023: ldc 148
    //   1025: invokespecial 151	com/antivirus/core/scanners/t:c	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    //   1028: invokevirtual 158	java/lang/Boolean:booleanValue	()Z
    //   1031: invokespecial 161	com/antivirus/core/scanners/a/a/b:<init>	(Ljava/lang/String;Z)V
    //   1034: invokevirtual 185	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1037: pop
    //   1038: iinc 63 1
    //   1041: goto -77 -> 964
    //   1044: aload 14
    //   1046: ldc 198
    //   1048: invokevirtual 166	com/google/b/e:b	(Ljava/lang/String;)Lcom/google/b/a;
    //   1051: astore 31
    //   1053: aload 31
    //   1055: ifnull +206 -> 1261
    //   1058: iconst_0
    //   1059: istore 53
    //   1061: iload 53
    //   1063: aload 31
    //   1065: invokevirtual 170	com/google/b/a:a	()I
    //   1068: if_icmpge +188 -> 1256
    //   1071: ldc 74
    //   1073: astore 54
    //   1075: aload_0
    //   1076: aload 31
    //   1078: iload 53
    //   1080: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   1083: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   1086: ldc 137
    //   1088: ldc 137
    //   1090: invokespecial 146	com/antivirus/core/scanners/t:b	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1093: astore 62
    //   1095: aload 62
    //   1097: astore 54
    //   1099: aload 54
    //   1101: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1104: istore 56
    //   1106: iconst_0
    //   1107: istore 57
    //   1109: iload 56
    //   1111: ifne +26 -> 1137
    //   1114: aload_0
    //   1115: aload 31
    //   1117: iload 53
    //   1119: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   1122: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   1125: ldc 137
    //   1127: ldc 148
    //   1129: invokespecial 151	com/antivirus/core/scanners/t:c	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    //   1132: invokevirtual 158	java/lang/Boolean:booleanValue	()Z
    //   1135: istore 57
    //   1137: aload_0
    //   1138: aload 31
    //   1140: iload 53
    //   1142: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   1145: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   1148: ldc 200
    //   1150: ldc 200
    //   1152: invokespecial 146	com/antivirus/core/scanners/t:b	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1155: astore 58
    //   1157: aload 58
    //   1159: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1162: istore 59
    //   1164: iconst_0
    //   1165: istore 60
    //   1167: iload 59
    //   1169: ifne +26 -> 1195
    //   1172: aload_0
    //   1173: aload 31
    //   1175: iload 53
    //   1177: invokevirtual 173	com/google/b/a:a	(I)Lcom/google/b/b;
    //   1180: invokevirtual 133	com/google/b/b:j	()Lcom/google/b/e;
    //   1183: ldc 200
    //   1185: ldc 148
    //   1187: invokespecial 151	com/antivirus/core/scanners/t:c	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    //   1190: invokevirtual 158	java/lang/Boolean:booleanValue	()Z
    //   1193: istore 60
    //   1195: aload 54
    //   1197: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1200: ifeq +29 -> 1229
    //   1203: aload 58
    //   1205: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1208: ifeq +21 -> 1229
    //   1211: iinc 53 1
    //   1214: goto -153 -> 1061
    //   1217: astore 55
    //   1219: iconst_0
    //   1220: ifeq +3 -> 1223
    //   1223: iconst_1
    //   1224: istore 27
    //   1226: goto -127 -> 1099
    //   1229: aload 11
    //   1231: new 189	com/antivirus/core/scanners/a/a/h
    //   1234: dup
    //   1235: aload 54
    //   1237: iload 57
    //   1239: aload 58
    //   1241: iload 60
    //   1243: invokespecial 192	com/antivirus/core/scanners/a/a/h:<init>	(Ljava/lang/String;ZLjava/lang/String;Z)V
    //   1246: invokevirtual 185	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1249: pop
    //   1250: iconst_1
    //   1251: istore 28
    //   1253: goto -42 -> 1211
    //   1256: iload 27
    //   1258: ifne -1253 -> 5
    //   1261: aload 14
    //   1263: ldc 202
    //   1265: invokevirtual 44	com/google/b/e:c	(Ljava/lang/String;)Lcom/google/b/e;
    //   1268: astore 32
    //   1270: aload 32
    //   1272: ifnull +510 -> 1782
    //   1275: aload_0
    //   1276: aload 32
    //   1278: ldc 74
    //   1280: ldc 204
    //   1282: invokespecial 146	com/antivirus/core/scanners/t:b	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1285: astore 49
    //   1287: aload 49
    //   1289: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1292: ifne -1287 -> 5
    //   1295: aload 49
    //   1297: ldc 206
    //   1299: invokevirtual 210	java/lang/String:matches	(Ljava/lang/String;)Z
    //   1302: ifeq -1297 -> 5
    //   1305: aload_0
    //   1306: aload 32
    //   1308: ldc 74
    //   1310: ldc 212
    //   1312: invokespecial 214	com/antivirus/core/scanners/t:a	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)I
    //   1315: istore 50
    //   1317: iload 50
    //   1319: sipush 9999
    //   1322: if_icmpeq -1317 -> 5
    //   1325: aconst_null
    //   1326: astore 51
    //   1328: aload 49
    //   1330: ifnull +33 -> 1363
    //   1333: aload 49
    //   1335: ldc 216
    //   1337: invokevirtual 78	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1340: ifeq +354 -> 1694
    //   1343: getstatic 221	com/antivirus/core/scanners/a/a/f:a	Lcom/antivirus/core/scanners/a/a/f;
    //   1346: astore 51
    //   1348: aload 49
    //   1350: ldc 223
    //   1352: invokevirtual 78	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1355: ifeq +8 -> 1363
    //   1358: getstatic 225	com/antivirus/core/scanners/a/a/f:b	Lcom/antivirus/core/scanners/a/a/f;
    //   1361: astore 51
    //   1363: new 227	com/antivirus/core/scanners/a/a/d
    //   1366: dup
    //   1367: iload 50
    //   1369: aload 51
    //   1371: invokespecial 230	com/antivirus/core/scanners/a/a/d:<init>	(ILcom/antivirus/core/scanners/a/a/f;)V
    //   1374: astore 33
    //   1376: aload 14
    //   1378: ldc 232
    //   1380: invokevirtual 44	com/google/b/e:c	(Ljava/lang/String;)Lcom/google/b/e;
    //   1383: astore 34
    //   1385: aload 34
    //   1387: ifnull +389 -> 1776
    //   1390: aload_0
    //   1391: aload 34
    //   1393: ldc 74
    //   1395: ldc 204
    //   1397: invokespecial 146	com/antivirus/core/scanners/t:b	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1400: astore 45
    //   1402: aload 45
    //   1404: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1407: ifne -1402 -> 5
    //   1410: aload 45
    //   1412: ldc 206
    //   1414: invokevirtual 210	java/lang/String:matches	(Ljava/lang/String;)Z
    //   1417: ifeq -1412 -> 5
    //   1420: aload_0
    //   1421: aload 34
    //   1423: ldc 74
    //   1425: ldc 212
    //   1427: invokespecial 214	com/antivirus/core/scanners/t:a	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)I
    //   1430: istore 46
    //   1432: iload 46
    //   1434: sipush 9999
    //   1437: if_icmpeq -1432 -> 5
    //   1440: iconst_0
    //   1441: ifeq +3 -> 1444
    //   1444: aconst_null
    //   1445: astore 47
    //   1447: aload 45
    //   1449: ifnull +33 -> 1482
    //   1452: aload 45
    //   1454: ldc 216
    //   1456: invokevirtual 78	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1459: ifeq +260 -> 1719
    //   1462: getstatic 221	com/antivirus/core/scanners/a/a/f:a	Lcom/antivirus/core/scanners/a/a/f;
    //   1465: astore 47
    //   1467: aload 45
    //   1469: ldc 223
    //   1471: invokevirtual 78	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1474: ifeq +8 -> 1482
    //   1477: getstatic 225	com/antivirus/core/scanners/a/a/f:b	Lcom/antivirus/core/scanners/a/a/f;
    //   1480: astore 47
    //   1482: new 227	com/antivirus/core/scanners/a/a/d
    //   1485: dup
    //   1486: iload 46
    //   1488: aload 47
    //   1490: invokespecial 230	com/antivirus/core/scanners/a/a/d:<init>	(ILcom/antivirus/core/scanners/a/a/f;)V
    //   1493: astore 35
    //   1495: aload 14
    //   1497: ldc 234
    //   1499: invokevirtual 44	com/google/b/e:c	(Ljava/lang/String;)Lcom/google/b/e;
    //   1502: astore 36
    //   1504: aload 36
    //   1506: ifnull +264 -> 1770
    //   1509: aload_0
    //   1510: aload 36
    //   1512: ldc 74
    //   1514: ldc 204
    //   1516: invokespecial 146	com/antivirus/core/scanners/t:b	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1519: astore 41
    //   1521: iconst_0
    //   1522: ifeq +3 -> 1525
    //   1525: aload 41
    //   1527: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1530: ifne -1525 -> 5
    //   1533: aload 41
    //   1535: ldc 206
    //   1537: invokevirtual 210	java/lang/String:matches	(Ljava/lang/String;)Z
    //   1540: ifeq -1535 -> 5
    //   1543: aload_0
    //   1544: aload 36
    //   1546: ldc 74
    //   1548: ldc 212
    //   1550: invokespecial 214	com/antivirus/core/scanners/t:a	(Lcom/google/b/e;Ljava/lang/String;Ljava/lang/String;)I
    //   1553: istore 42
    //   1555: iconst_0
    //   1556: ifeq +3 -> 1559
    //   1559: iload 42
    //   1561: sipush 9999
    //   1564: if_icmpeq -1559 -> 5
    //   1567: iconst_0
    //   1568: ifeq +3 -> 1571
    //   1571: aconst_null
    //   1572: astore 43
    //   1574: aload 41
    //   1576: ifnull +33 -> 1609
    //   1579: aload 41
    //   1581: ldc 216
    //   1583: invokevirtual 78	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1586: ifeq +158 -> 1744
    //   1589: getstatic 221	com/antivirus/core/scanners/a/a/f:a	Lcom/antivirus/core/scanners/a/a/f;
    //   1592: astore 43
    //   1594: aload 41
    //   1596: ldc 223
    //   1598: invokevirtual 78	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1601: ifeq +8 -> 1609
    //   1604: getstatic 225	com/antivirus/core/scanners/a/a/f:b	Lcom/antivirus/core/scanners/a/a/f;
    //   1607: astore 43
    //   1609: new 227	com/antivirus/core/scanners/a/a/d
    //   1612: dup
    //   1613: iload 42
    //   1615: aload 43
    //   1617: invokespecial 230	com/antivirus/core/scanners/a/a/d:<init>	(ILcom/antivirus/core/scanners/a/a/f;)V
    //   1620: astore 37
    //   1622: aload_0
    //   1623: invokevirtual 238	java/lang/Object:getClass	()Ljava/lang/Class;
    //   1626: pop
    //   1627: iload 20
    //   1629: iconst_4
    //   1630: if_icmpgt -1625 -> 5
    //   1633: aload 16
    //   1635: invokestatic 39	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1638: ifne -1633 -> 5
    //   1641: iload 28
    //   1643: ifeq -1638 -> 5
    //   1646: new 240	com/antivirus/core/scanners/a/a/c
    //   1649: dup
    //   1650: aload 16
    //   1652: iload 20
    //   1654: iload 4
    //   1656: aload 23
    //   1658: aload 7
    //   1660: aload 8
    //   1662: aload 9
    //   1664: aload 11
    //   1666: aload 10
    //   1668: aload 33
    //   1670: aload 37
    //   1672: aload 35
    //   1674: iload 5
    //   1676: invokespecial 243	com/antivirus/core/scanners/a/a/c:<init>	(Ljava/lang/String;IILcom/antivirus/core/scanners/a/a/b;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/antivirus/core/scanners/a/a/d;Lcom/antivirus/core/scanners/a/a/d;Lcom/antivirus/core/scanners/a/a/d;I)V
    //   1679: astore 39
    //   1681: aload_0
    //   1682: getfield 28	com/antivirus/core/scanners/t:d	Ljava/util/ArrayList;
    //   1685: aload 39
    //   1687: invokevirtual 185	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1690: pop
    //   1691: goto -1686 -> 5
    //   1694: aload 49
    //   1696: ldc 245
    //   1698: invokevirtual 78	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1701: istore 52
    //   1703: aconst_null
    //   1704: astore 51
    //   1706: iload 52
    //   1708: ifeq -360 -> 1348
    //   1711: getstatic 247	com/antivirus/core/scanners/a/a/f:c	Lcom/antivirus/core/scanners/a/a/f;
    //   1714: astore 51
    //   1716: goto -368 -> 1348
    //   1719: aload 45
    //   1721: ldc 245
    //   1723: invokevirtual 78	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1726: istore 48
    //   1728: aconst_null
    //   1729: astore 47
    //   1731: iload 48
    //   1733: ifeq -266 -> 1467
    //   1736: getstatic 247	com/antivirus/core/scanners/a/a/f:c	Lcom/antivirus/core/scanners/a/a/f;
    //   1739: astore 47
    //   1741: goto -274 -> 1467
    //   1744: aload 41
    //   1746: ldc 245
    //   1748: invokevirtual 78	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1751: istore 44
    //   1753: aconst_null
    //   1754: astore 43
    //   1756: iload 44
    //   1758: ifeq -164 -> 1594
    //   1761: getstatic 247	com/antivirus/core/scanners/a/a/f:c	Lcom/antivirus/core/scanners/a/a/f;
    //   1764: astore 43
    //   1766: goto -172 -> 1594
    //   1769: return
    //   1770: aconst_null
    //   1771: astore 37
    //   1773: goto -151 -> 1622
    //   1776: aconst_null
    //   1777: astore 35
    //   1779: goto -284 -> 1495
    //   1782: aconst_null
    //   1783: astore 33
    //   1785: goto -409 -> 1376
    //   1788: iload 25
    //   1790: istore 27
    //   1792: iload 22
    //   1794: istore 28
    //   1796: goto -974 -> 822
    //   1799: iconst_0
    //   1800: istore 85
    //   1802: goto -1453 -> 349
    //   1805: iconst_0
    //   1806: istore 25
    //   1808: goto -1211 -> 597
    //   1811: iconst_0
    //   1812: istore 22
    //   1814: aconst_null
    //   1815: astore 23
    //   1817: goto -1561 -> 256
    //
    // Exception table:
    //   from	to	target	type
    //   98	120	519	java/lang/Exception
    //   172	179	534	java/lang/Exception
    //   290	310	545	java/lang/Exception
    //   636	656	778	java/lang/Exception
    //   853	873	930	java/lang/Exception
    //   1075	1095	1217	java/lang/Exception
  }

  private String b(e parame, String paramString1, String paramString2)
  {
    String str = "";
    if (!TextUtils.isEmpty(paramString1))
      parame = parame.c(paramString1);
    if (parame != null)
    {
      h localh = parame.a(paramString2);
      if (localh != null)
        str = localh.c();
    }
    return str;
  }

  private Boolean c(e parame, String paramString1, String paramString2)
  {
    Boolean localBoolean = Boolean.valueOf(false);
    if (!TextUtils.isEmpty(paramString1))
      parame = parame.c(paramString1);
    if (parame != null)
    {
      h localh = parame.a(paramString2);
      if (localh != null)
        localBoolean = Boolean.valueOf(localh.e());
    }
    return localBoolean;
  }

  public boolean a(com.antivirus.core.scanners.a.a parama, int paramInt, u paramu)
  {
    boolean bool1 = false;
    if (parama == null)
      return bool1;
    Iterator localIterator = this.d.iterator();
    c localc;
    int i;
    do
    {
      boolean bool2 = localIterator.hasNext();
      bool1 = false;
      if (!bool2)
        break;
      localc = (c)localIterator.next();
      i = localc.a(parama, paramInt);
    }
    while (i <= -1);
    paramu.a = localc.a;
    paramu.b = localc.c;
    paramu.c = localc.d;
    if (i > 0);
    for (boolean bool3 = true; ; bool3 = false)
    {
      bool1 = bool3;
      break;
    }
  }

  public boolean a(com.antivirus.core.scanners.a.a parama, w paramw, int paramInt)
  {
    u localu = new u(this);
    boolean bool = a(parama, paramInt, localu);
    if (bool)
    {
      paramw.d = localu.b;
      paramw.c = localu.a;
      paramw.e = localu.c;
    }
    return bool;
  }

  public boolean a(aa paramaa, int paramInt)
  {
    u localu = new u(this);
    boolean bool1 = a(paramaa.l, paramInt, localu);
    if (bool1)
    {
      paramaa.j = localu.b;
      paramaa.i = localu.a;
      paramaa.k = localu.c;
    }
    if (!bool1);
    for (boolean bool2 = true; ; bool2 = false)
      return bool2;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.t
 * JD-Core Version:    0.6.2
 */