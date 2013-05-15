package com.avast.android.mobilesecurity.engine.internal;

import android.content.Context;
import com.avast.android.mobilesecurity.engine.af;
import com.avast.android.mobilesecurity.engine.ag;
import java.io.File;
import java.io.IOException;

public class y
{
  private static final String a = "utmp";
  private static final byte[] b = { 65, 83, 87, 83, 105, 103, 110, 100 };
  private static final byte[] c = { 16, 60, 1, -68, -107, 117, 32, -21, 33, -31, 100, 18, -119, 2, -77, 42, 62, -40, -52, 15, 18, 92, -101, -78, 18, 15, -32, -70, 30, -53, -126, -37, -69, 47, -114, -57, -116, 76, 3, 11, 52, 50, 33, -64, -35, 101, 42, 62, 114, -50, 48, 108, -68, -123, -98, 41, 93, -34, 42, 1, -34, -36, -119, -26, 14, -63, -87, 111, 109, -120, 26, -83, 91, 6, -125, 91, 86, -29, 19, 42, 90, 97, 11, -111, 17, 75, 29, 18, -108, 115, 89, -45, 58, 111, -125, -92, 86, 65, -109, 89, -116, -13, 74, -24, 103, -29, 38, -25, -123, -4, -115, -27, -9, -120, 45, -114, 72, 32, 75, -95, -51, 88, -116, 78, -76, 29, -105, -7 };
  private static final byte[] d = { -48, 0, 22, 23, 125, -108, 44, -34, 62, -14, 83, 19, -107, 117, 95, -20, -48, -17, -41, 3, 56, 33, -34, 76, 69, 29, 48, 2, 61, -10, -97, 51, -65, -3, -12, 69, -28, 77, 49, 84, -42, 18, 16, -103, -66, -108, 54, 125, -54, 84, 110, -125, -16, 112, 2, -97, 110, 52, 34, 34, -85, -6, 2, -29, 99, 28, -78, 125, -100, 62, -11, 100, 98, -39, -51, 48, -63, -99, 74, -18, 51, -92, -75, -46, 27, -66, -95, 119, -101, 91, 127, -100, -92, 123, 18, 117, 33, 102, 122, -77, 111, -86, -6, 11, -83, -107, -94, 1, -19, -113, 37, -87, -113, -28, -27, -86, 115, -95, 54, -24, 103, -125, 106, 51, 20, 78, -43, -103 };
  private static final byte[] e = { -83, 83, 25, 5, 75, -46, -102, 32, 66, 5, -70, 49, 30, -29, -116, -41, 51, -20, 96, 125 };
  private static final byte[] f = { 50, 33, 11, -66, 59, 105, 24, -85, -97, -19, -51, -118, 51, -125, -21, 98, -95, 5, 72, -61, 103, -52, -22, 62, -42, -37, -36, -127, 11, 70, 120, 124, 42, 62, -111, 44, -76, 21, 59, -124, 81, -68, -120, 52, 93, 14, -94, 125, 125, -108, -103, -37, 98, -95, -106, 79, 107, 39, 62, 124, -81, -11, 84, 99, -56, -19, -125, 104, -73, 38, -33, 75, -35, 45, -94, 43, 24, -75, -37, 84, 25, 102, -103, -67, 10, -21, 9, 70, -67, 36, 46, 74, -122, -111, -21, 28, -47, 89, 55, 59, 42, 62, 82, -16, -114, 22, 13, 10, -119, -110, 36, 70, 16, -18, -54, -38, -42, -105, 96, -108, -16, -79, -9, 87, 98, 119, -43, -21 };
  private static final String g = "vps_v2_info.vpx";
  private static final int h = 240;

  // ERROR //
  @android.annotation.SuppressLint({"NewApi"})
  public static com.avast.android.mobilesecurity.engine.ad a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: aconst_null
    //   2: invokestatic 252	com/avast/android/mobilesecurity/engine/internal/n:c	(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/y;
    //   5: invokevirtual 257	com/avast/android/mobilesecurity/engine/y:a	()Ljava/net/URI;
    //   8: invokevirtual 263	java/net/URI:toString	()Ljava/lang/String;
    //   11: astore_1
    //   12: ldc_w 265
    //   15: invokestatic 270	android/b/a/a:a	(Ljava/lang/String;)Landroid/b/a/a;
    //   18: astore_2
    //   19: new 272	org/apache/http/client/methods/HttpGet
    //   22: dup
    //   23: new 274	java/lang/StringBuilder
    //   26: dup
    //   27: invokespecial 277	java/lang/StringBuilder:<init>	()V
    //   30: aload_1
    //   31: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: getstatic 237	com/avast/android/mobilesecurity/engine/internal/y:g	Ljava/lang/String;
    //   37: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: invokevirtual 282	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: invokespecial 285	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   46: astore_3
    //   47: aconst_null
    //   48: astore 4
    //   50: aconst_null
    //   51: astore 5
    //   53: new 287	com/avast/android/mobilesecurity/engine/ad
    //   56: dup
    //   57: invokespecial 288	com/avast/android/mobilesecurity/engine/ad:<init>	()V
    //   60: astore 6
    //   62: aload_2
    //   63: aload_3
    //   64: invokevirtual 292	android/b/a/a:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   67: astore 22
    //   69: aload 22
    //   71: astore 11
    //   73: aload 11
    //   75: ifnonnull +90 -> 165
    //   78: new 245	java/io/IOException
    //   81: dup
    //   82: invokespecial 293	java/io/IOException:<init>	()V
    //   85: athrow
    //   86: astore 90
    //   88: aload 11
    //   90: astore 8
    //   92: aconst_null
    //   93: astore 9
    //   95: aload 6
    //   97: getstatic 298	com/avast/android/mobilesecurity/engine/ae:d	Lcom/avast/android/mobilesecurity/engine/ae;
    //   100: putfield 300	com/avast/android/mobilesecurity/engine/ad:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   103: aload 9
    //   105: ifnull +8 -> 113
    //   108: aload 9
    //   110: invokevirtual 305	java/io/InputStream:close	()V
    //   113: aload 8
    //   115: ifnull +25 -> 140
    //   118: aload 8
    //   120: invokeinterface 311 1 0
    //   125: ifnull +15 -> 140
    //   128: aload 8
    //   130: invokeinterface 311 1 0
    //   135: invokeinterface 316 1 0
    //   140: aload 5
    //   142: ifnull +8 -> 150
    //   145: aload 5
    //   147: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   150: aload_2
    //   151: ifnull +7 -> 158
    //   154: aload_2
    //   155: invokevirtual 321	android/b/a/a:a	()V
    //   158: aload 6
    //   160: astore 17
    //   162: aload 17
    //   164: areturn
    //   165: aload 11
    //   167: invokeinterface 311 1 0
    //   172: astore 24
    //   174: aconst_null
    //   175: astore 4
    //   177: aload 24
    //   179: ifnonnull +78 -> 257
    //   182: new 245	java/io/IOException
    //   185: dup
    //   186: invokespecial 293	java/io/IOException:<init>	()V
    //   189: athrow
    //   190: astore 23
    //   192: aconst_null
    //   193: astore 12
    //   195: aload 23
    //   197: astore 13
    //   199: aload 4
    //   201: ifnull +8 -> 209
    //   204: aload 4
    //   206: invokevirtual 305	java/io/InputStream:close	()V
    //   209: aload 11
    //   211: ifnull +25 -> 236
    //   214: aload 11
    //   216: invokeinterface 311 1 0
    //   221: ifnull +15 -> 236
    //   224: aload 11
    //   226: invokeinterface 311 1 0
    //   231: invokeinterface 316 1 0
    //   236: aload 12
    //   238: ifnull +8 -> 246
    //   241: aload 12
    //   243: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   246: aload_2
    //   247: ifnull +7 -> 254
    //   250: aload_2
    //   251: invokevirtual 321	android/b/a/a:a	()V
    //   254: aload 13
    //   256: athrow
    //   257: aload 24
    //   259: invokeinterface 325 1 0
    //   264: astore 25
    //   266: aload 25
    //   268: astore 4
    //   270: aload 11
    //   272: invokeinterface 311 1 0
    //   277: invokeinterface 329 1 0
    //   282: lconst_0
    //   283: lcmp
    //   284: istore 27
    //   286: iconst_0
    //   287: istore 28
    //   289: iload 27
    //   291: ifle +1840 -> 2131
    //   294: aload 11
    //   296: invokeinterface 311 1 0
    //   301: invokeinterface 329 1 0
    //   306: l2i
    //   307: istore 28
    //   309: iload 28
    //   311: i2l
    //   312: aload 11
    //   314: invokeinterface 311 1 0
    //   319: invokeinterface 329 1 0
    //   324: lcmp
    //   325: ifeq +1806 -> 2131
    //   328: iconst_0
    //   329: istore 29
    //   331: iload 29
    //   333: ifle +65 -> 398
    //   336: new 318	java/io/ByteArrayOutputStream
    //   339: dup
    //   340: iload 29
    //   342: invokespecial 332	java/io/ByteArrayOutputStream:<init>	(I)V
    //   345: astore 12
    //   347: sipush 4096
    //   350: newarray byte
    //   352: astore 31
    //   354: aload 4
    //   356: aload 31
    //   358: invokevirtual 336	java/io/InputStream:read	([B)I
    //   361: istore 32
    //   363: iload 32
    //   365: iflt +61 -> 426
    //   368: aload 12
    //   370: aload 31
    //   372: iconst_0
    //   373: iload 32
    //   375: invokevirtual 340	java/io/ByteArrayOutputStream:write	([BII)V
    //   378: goto -24 -> 354
    //   381: astore 30
    //   383: aload 12
    //   385: astore 5
    //   387: aload 11
    //   389: astore 8
    //   391: aload 4
    //   393: astore 9
    //   395: goto -300 -> 95
    //   398: new 318	java/io/ByteArrayOutputStream
    //   401: dup
    //   402: invokespecial 341	java/io/ByteArrayOutputStream:<init>	()V
    //   405: astore 12
    //   407: goto -60 -> 347
    //   410: astore 26
    //   412: aload 11
    //   414: astore 8
    //   416: aload 4
    //   418: astore 9
    //   420: aconst_null
    //   421: astore 5
    //   423: goto -328 -> 95
    //   426: aload 12
    //   428: invokevirtual 345	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   431: astore 33
    //   433: aload 33
    //   435: arraylength
    //   436: bipush 40
    //   438: getstatic 26	com/avast/android/mobilesecurity/engine/internal/y:b	[B
    //   441: arraylength
    //   442: iadd
    //   443: if_icmpge +73 -> 516
    //   446: aload 6
    //   448: getstatic 347	com/avast/android/mobilesecurity/engine/ae:f	Lcom/avast/android/mobilesecurity/engine/ae;
    //   451: putfield 300	com/avast/android/mobilesecurity/engine/ad:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   454: aload 4
    //   456: ifnull +8 -> 464
    //   459: aload 4
    //   461: invokevirtual 305	java/io/InputStream:close	()V
    //   464: aload 11
    //   466: ifnull +25 -> 491
    //   469: aload 11
    //   471: invokeinterface 311 1 0
    //   476: ifnull +15 -> 491
    //   479: aload 11
    //   481: invokeinterface 311 1 0
    //   486: invokeinterface 316 1 0
    //   491: aload 12
    //   493: ifnull +8 -> 501
    //   496: aload 12
    //   498: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   501: aload_2
    //   502: ifnull +7 -> 509
    //   505: aload_2
    //   506: invokevirtual 321	android/b/a/a:a	()V
    //   509: aload 6
    //   511: astore 17
    //   513: goto -351 -> 162
    //   516: aload 33
    //   518: arraylength
    //   519: getstatic 26	com/avast/android/mobilesecurity/engine/internal/y:b	[B
    //   522: arraylength
    //   523: isub
    //   524: istore 34
    //   526: iload 34
    //   528: aload 33
    //   530: arraylength
    //   531: if_icmpge +102 -> 633
    //   534: aload 33
    //   536: iload 34
    //   538: baload
    //   539: getstatic 26	com/avast/android/mobilesecurity/engine/internal/y:b	[B
    //   542: iload 34
    //   544: aload 33
    //   546: arraylength
    //   547: getstatic 26	com/avast/android/mobilesecurity/engine/internal/y:b	[B
    //   550: arraylength
    //   551: isub
    //   552: isub
    //   553: baload
    //   554: if_icmpeq +73 -> 627
    //   557: aload 6
    //   559: getstatic 349	com/avast/android/mobilesecurity/engine/ae:e	Lcom/avast/android/mobilesecurity/engine/ae;
    //   562: putfield 300	com/avast/android/mobilesecurity/engine/ad:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   565: aload 4
    //   567: ifnull +8 -> 575
    //   570: aload 4
    //   572: invokevirtual 305	java/io/InputStream:close	()V
    //   575: aload 11
    //   577: ifnull +25 -> 602
    //   580: aload 11
    //   582: invokeinterface 311 1 0
    //   587: ifnull +15 -> 602
    //   590: aload 11
    //   592: invokeinterface 311 1 0
    //   597: invokeinterface 316 1 0
    //   602: aload 12
    //   604: ifnull +8 -> 612
    //   607: aload 12
    //   609: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   612: aload_2
    //   613: ifnull +7 -> 620
    //   616: aload_2
    //   617: invokevirtual 321	android/b/a/a:a	()V
    //   620: aload 6
    //   622: astore 17
    //   624: goto -462 -> 162
    //   627: iinc 34 1
    //   630: goto -104 -> 526
    //   633: bipush 216
    //   635: aload 33
    //   637: arraylength
    //   638: getstatic 26	com/avast/android/mobilesecurity/engine/internal/y:b	[B
    //   641: arraylength
    //   642: isub
    //   643: iadd
    //   644: ifge +73 -> 717
    //   647: aload 6
    //   649: getstatic 347	com/avast/android/mobilesecurity/engine/ae:f	Lcom/avast/android/mobilesecurity/engine/ae;
    //   652: putfield 300	com/avast/android/mobilesecurity/engine/ad:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   655: aload 4
    //   657: ifnull +8 -> 665
    //   660: aload 4
    //   662: invokevirtual 305	java/io/InputStream:close	()V
    //   665: aload 11
    //   667: ifnull +25 -> 692
    //   670: aload 11
    //   672: invokeinterface 311 1 0
    //   677: ifnull +15 -> 692
    //   680: aload 11
    //   682: invokeinterface 311 1 0
    //   687: invokeinterface 316 1 0
    //   692: aload 12
    //   694: ifnull +8 -> 702
    //   697: aload 12
    //   699: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   702: aload_2
    //   703: ifnull +7 -> 710
    //   706: aload_2
    //   707: invokevirtual 321	android/b/a/a:a	()V
    //   710: aload 6
    //   712: astore 17
    //   714: goto -552 -> 162
    //   717: bipush 40
    //   719: newarray byte
    //   721: astore 35
    //   723: aload 33
    //   725: bipush 216
    //   727: aload 33
    //   729: arraylength
    //   730: getstatic 26	com/avast/android/mobilesecurity/engine/internal/y:b	[B
    //   733: arraylength
    //   734: isub
    //   735: iadd
    //   736: aload 35
    //   738: iconst_0
    //   739: bipush 40
    //   741: invokestatic 355	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   744: bipush 216
    //   746: aload 33
    //   748: arraylength
    //   749: getstatic 26	com/avast/android/mobilesecurity/engine/internal/y:b	[B
    //   752: arraylength
    //   753: isub
    //   754: iadd
    //   755: newarray byte
    //   757: astore 36
    //   759: aload 33
    //   761: iconst_0
    //   762: aload 36
    //   764: iconst_0
    //   765: bipush 216
    //   767: aload 33
    //   769: arraylength
    //   770: getstatic 26	com/avast/android/mobilesecurity/engine/internal/y:b	[B
    //   773: arraylength
    //   774: isub
    //   775: iadd
    //   776: invokestatic 355	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   779: aload 36
    //   781: invokestatic 360	com/avast/android/mobilesecurity/engine/internal/a/o:a	([B)Lcom/avast/android/mobilesecurity/engine/internal/a/o;
    //   784: astore 37
    //   786: aload 37
    //   788: invokevirtual 363	com/avast/android/mobilesecurity/engine/internal/a/o:d	()Z
    //   791: ifne +73 -> 864
    //   794: aload 6
    //   796: getstatic 347	com/avast/android/mobilesecurity/engine/ae:f	Lcom/avast/android/mobilesecurity/engine/ae;
    //   799: putfield 300	com/avast/android/mobilesecurity/engine/ad:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   802: aload 4
    //   804: ifnull +8 -> 812
    //   807: aload 4
    //   809: invokevirtual 305	java/io/InputStream:close	()V
    //   812: aload 11
    //   814: ifnull +25 -> 839
    //   817: aload 11
    //   819: invokeinterface 311 1 0
    //   824: ifnull +15 -> 839
    //   827: aload 11
    //   829: invokeinterface 311 1 0
    //   834: invokeinterface 316 1 0
    //   839: aload 12
    //   841: ifnull +8 -> 849
    //   844: aload 12
    //   846: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   849: aload_2
    //   850: ifnull +7 -> 857
    //   853: aload_2
    //   854: invokevirtual 321	android/b/a/a:a	()V
    //   857: aload 6
    //   859: astore 17
    //   861: goto -699 -> 162
    //   864: aload 37
    //   866: invokevirtual 366	com/avast/android/mobilesecurity/engine/internal/a/o:e	()Lcom/avast/android/mobilesecurity/engine/internal/a/q;
    //   869: astore 38
    //   871: aload 38
    //   873: invokevirtual 369	com/avast/android/mobilesecurity/engine/internal/a/q:d	()Z
    //   876: ifeq +19 -> 895
    //   879: aload 38
    //   881: invokevirtual 371	com/avast/android/mobilesecurity/engine/internal/a/q:f	()Z
    //   884: ifeq +11 -> 895
    //   887: aload 38
    //   889: invokevirtual 373	com/avast/android/mobilesecurity/engine/internal/a/q:b	()Z
    //   892: ifne +73 -> 965
    //   895: aload 6
    //   897: getstatic 347	com/avast/android/mobilesecurity/engine/ae:f	Lcom/avast/android/mobilesecurity/engine/ae;
    //   900: putfield 300	com/avast/android/mobilesecurity/engine/ad:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   903: aload 4
    //   905: ifnull +8 -> 913
    //   908: aload 4
    //   910: invokevirtual 305	java/io/InputStream:close	()V
    //   913: aload 11
    //   915: ifnull +25 -> 940
    //   918: aload 11
    //   920: invokeinterface 311 1 0
    //   925: ifnull +15 -> 940
    //   928: aload 11
    //   930: invokeinterface 311 1 0
    //   935: invokeinterface 316 1 0
    //   940: aload 12
    //   942: ifnull +8 -> 950
    //   945: aload 12
    //   947: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   950: aload_2
    //   951: ifnull +7 -> 958
    //   954: aload_2
    //   955: invokevirtual 321	android/b/a/a:a	()V
    //   958: aload 6
    //   960: astore 17
    //   962: goto -800 -> 162
    //   965: aload 38
    //   967: invokevirtual 375	com/avast/android/mobilesecurity/engine/internal/a/q:c	()Ljava/lang/String;
    //   970: ldc_w 377
    //   973: ldc_w 379
    //   976: invokevirtual 385	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   979: ldc_w 377
    //   982: ldc_w 379
    //   985: invokevirtual 385	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   988: astore 42
    //   990: aload 42
    //   992: invokestatic 391	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   995: invokestatic 395	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   998: astore 47
    //   1000: aload_0
    //   1001: aconst_null
    //   1002: invokestatic 400	com/avast/android/mobilesecurity/engine/i:a	(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;
    //   1005: astore 48
    //   1007: aload 48
    //   1009: ifnull +182 -> 1191
    //   1012: aload 47
    //   1014: aload 48
    //   1016: getfield 403	com/avast/android/mobilesecurity/engine/al:a	Ljava/lang/String;
    //   1019: ldc_w 377
    //   1022: ldc_w 379
    //   1025: invokevirtual 385	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   1028: ldc_w 377
    //   1031: ldc_w 379
    //   1034: invokevirtual 385	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   1037: invokestatic 391	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   1040: invokestatic 395	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1043: invokevirtual 407	java/lang/Integer:compareTo	(Ljava/lang/Integer;)I
    //   1046: ifgt +145 -> 1191
    //   1049: aload 6
    //   1051: getstatic 409	com/avast/android/mobilesecurity/engine/ae:b	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1054: putfield 300	com/avast/android/mobilesecurity/engine/ad:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1057: aload 4
    //   1059: ifnull +8 -> 1067
    //   1062: aload 4
    //   1064: invokevirtual 305	java/io/InputStream:close	()V
    //   1067: aload 11
    //   1069: ifnull +25 -> 1094
    //   1072: aload 11
    //   1074: invokeinterface 311 1 0
    //   1079: ifnull +15 -> 1094
    //   1082: aload 11
    //   1084: invokeinterface 311 1 0
    //   1089: invokeinterface 316 1 0
    //   1094: aload 12
    //   1096: ifnull +8 -> 1104
    //   1099: aload 12
    //   1101: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   1104: aload_2
    //   1105: ifnull +7 -> 1112
    //   1108: aload_2
    //   1109: invokevirtual 321	android/b/a/a:a	()V
    //   1112: aload 6
    //   1114: astore 17
    //   1116: goto -954 -> 162
    //   1119: astore 43
    //   1121: aload 6
    //   1123: getstatic 347	com/avast/android/mobilesecurity/engine/ae:f	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1126: putfield 300	com/avast/android/mobilesecurity/engine/ad:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1129: aload 4
    //   1131: ifnull +8 -> 1139
    //   1134: aload 4
    //   1136: invokevirtual 305	java/io/InputStream:close	()V
    //   1139: aload 11
    //   1141: ifnull +25 -> 1166
    //   1144: aload 11
    //   1146: invokeinterface 311 1 0
    //   1151: ifnull +15 -> 1166
    //   1154: aload 11
    //   1156: invokeinterface 311 1 0
    //   1161: invokeinterface 316 1 0
    //   1166: aload 12
    //   1168: ifnull +8 -> 1176
    //   1171: aload 12
    //   1173: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   1176: aload_2
    //   1177: ifnull +7 -> 1184
    //   1180: aload_2
    //   1181: invokevirtual 321	android/b/a/a:a	()V
    //   1184: aload 6
    //   1186: astore 17
    //   1188: goto -1026 -> 162
    //   1191: invokestatic 413	com/avast/android/mobilesecurity/engine/internal/s:a	()Ljava/lang/String;
    //   1194: aload 38
    //   1196: invokevirtual 415	com/avast/android/mobilesecurity/engine/internal/a/q:g	()Ljava/lang/String;
    //   1199: invokevirtual 419	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1202: ifne +542 -> 1744
    //   1205: invokestatic 413	com/avast/android/mobilesecurity/engine/internal/s:a	()Ljava/lang/String;
    //   1208: ldc_w 421
    //   1211: invokevirtual 425	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1214: astore 52
    //   1216: aload 38
    //   1218: invokevirtual 415	com/avast/android/mobilesecurity/engine/internal/a/q:g	()Ljava/lang/String;
    //   1221: ldc_w 421
    //   1224: invokevirtual 425	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1227: astore 53
    //   1229: iconst_0
    //   1230: istore 54
    //   1232: iload 54
    //   1234: aload 52
    //   1236: arraylength
    //   1237: if_icmpge +437 -> 1674
    //   1240: aload 52
    //   1242: iload 54
    //   1244: aaload
    //   1245: ldc_w 377
    //   1248: invokevirtual 425	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1251: astore 58
    //   1253: aload 58
    //   1255: arraylength
    //   1256: iconst_2
    //   1257: if_icmpge +867 -> 2124
    //   1260: aload 52
    //   1262: iload 54
    //   1264: aaload
    //   1265: ldc_w 377
    //   1268: invokevirtual 425	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1271: astore 59
    //   1273: aload 59
    //   1275: arraylength
    //   1276: iconst_2
    //   1277: if_icmpge +73 -> 1350
    //   1280: aload 6
    //   1282: getstatic 427	com/avast/android/mobilesecurity/engine/ae:g	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1285: putfield 300	com/avast/android/mobilesecurity/engine/ad:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1288: aload 4
    //   1290: ifnull +8 -> 1298
    //   1293: aload 4
    //   1295: invokevirtual 305	java/io/InputStream:close	()V
    //   1298: aload 11
    //   1300: ifnull +25 -> 1325
    //   1303: aload 11
    //   1305: invokeinterface 311 1 0
    //   1310: ifnull +15 -> 1325
    //   1313: aload 11
    //   1315: invokeinterface 311 1 0
    //   1320: invokeinterface 316 1 0
    //   1325: aload 12
    //   1327: ifnull +8 -> 1335
    //   1330: aload 12
    //   1332: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   1335: aload_2
    //   1336: ifnull +7 -> 1343
    //   1339: aload_2
    //   1340: invokevirtual 321	android/b/a/a:a	()V
    //   1343: aload 6
    //   1345: astore 17
    //   1347: goto -1185 -> 162
    //   1350: iconst_0
    //   1351: istore 60
    //   1353: iconst_0
    //   1354: istore 61
    //   1356: iload 60
    //   1358: aload 53
    //   1360: arraylength
    //   1361: if_icmpge +232 -> 1593
    //   1364: aload 53
    //   1366: iload 60
    //   1368: aaload
    //   1369: ldc_w 377
    //   1372: invokevirtual 425	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1375: astore 65
    //   1377: aload 65
    //   1379: arraylength
    //   1380: iconst_2
    //   1381: if_icmpge +16 -> 1397
    //   1384: aload 53
    //   1386: iload 54
    //   1388: aaload
    //   1389: ldc_w 377
    //   1392: invokevirtual 425	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1395: astore 65
    //   1397: aload 65
    //   1399: arraylength
    //   1400: iconst_2
    //   1401: if_icmpge +73 -> 1474
    //   1404: aload 6
    //   1406: getstatic 427	com/avast/android/mobilesecurity/engine/ae:g	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1409: putfield 300	com/avast/android/mobilesecurity/engine/ad:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1412: aload 4
    //   1414: ifnull +8 -> 1422
    //   1417: aload 4
    //   1419: invokevirtual 305	java/io/InputStream:close	()V
    //   1422: aload 11
    //   1424: ifnull +25 -> 1449
    //   1427: aload 11
    //   1429: invokeinterface 311 1 0
    //   1434: ifnull +15 -> 1449
    //   1437: aload 11
    //   1439: invokeinterface 311 1 0
    //   1444: invokeinterface 316 1 0
    //   1449: aload 12
    //   1451: ifnull +8 -> 1459
    //   1454: aload 12
    //   1456: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   1459: aload_2
    //   1460: ifnull +7 -> 1467
    //   1463: aload_2
    //   1464: invokevirtual 321	android/b/a/a:a	()V
    //   1467: aload 6
    //   1469: astore 17
    //   1471: goto -1309 -> 162
    //   1474: aload 65
    //   1476: iconst_0
    //   1477: aaload
    //   1478: aload 59
    //   1480: iconst_0
    //   1481: aaload
    //   1482: invokevirtual 431	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1485: ifeq +102 -> 1587
    //   1488: aload 65
    //   1490: iconst_1
    //   1491: aaload
    //   1492: invokestatic 391	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   1495: invokestatic 395	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1498: aload 59
    //   1500: iconst_1
    //   1501: aaload
    //   1502: invokestatic 391	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   1505: invokestatic 395	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1508: invokevirtual 407	java/lang/Integer:compareTo	(Ljava/lang/Integer;)I
    //   1511: ifle +73 -> 1584
    //   1514: aload 6
    //   1516: getstatic 433	com/avast/android/mobilesecurity/engine/ae:c	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1519: putfield 300	com/avast/android/mobilesecurity/engine/ad:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1522: aload 4
    //   1524: ifnull +8 -> 1532
    //   1527: aload 4
    //   1529: invokevirtual 305	java/io/InputStream:close	()V
    //   1532: aload 11
    //   1534: ifnull +25 -> 1559
    //   1537: aload 11
    //   1539: invokeinterface 311 1 0
    //   1544: ifnull +15 -> 1559
    //   1547: aload 11
    //   1549: invokeinterface 311 1 0
    //   1554: invokeinterface 316 1 0
    //   1559: aload 12
    //   1561: ifnull +8 -> 1569
    //   1564: aload 12
    //   1566: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   1569: aload_2
    //   1570: ifnull +7 -> 1577
    //   1573: aload_2
    //   1574: invokevirtual 321	android/b/a/a:a	()V
    //   1577: aload 6
    //   1579: astore 17
    //   1581: goto -1419 -> 162
    //   1584: iconst_1
    //   1585: istore 61
    //   1587: iinc 60 1
    //   1590: goto -234 -> 1356
    //   1593: iload 61
    //   1595: ifne +73 -> 1668
    //   1598: aload 6
    //   1600: getstatic 433	com/avast/android/mobilesecurity/engine/ae:c	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1603: putfield 300	com/avast/android/mobilesecurity/engine/ad:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1606: aload 4
    //   1608: ifnull +8 -> 1616
    //   1611: aload 4
    //   1613: invokevirtual 305	java/io/InputStream:close	()V
    //   1616: aload 11
    //   1618: ifnull +25 -> 1643
    //   1621: aload 11
    //   1623: invokeinterface 311 1 0
    //   1628: ifnull +15 -> 1643
    //   1631: aload 11
    //   1633: invokeinterface 311 1 0
    //   1638: invokeinterface 316 1 0
    //   1643: aload 12
    //   1645: ifnull +8 -> 1653
    //   1648: aload 12
    //   1650: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   1653: aload_2
    //   1654: ifnull +7 -> 1661
    //   1657: aload_2
    //   1658: invokevirtual 321	android/b/a/a:a	()V
    //   1661: aload 6
    //   1663: astore 17
    //   1665: goto -1503 -> 162
    //   1668: iinc 54 1
    //   1671: goto -439 -> 1232
    //   1674: aload 6
    //   1676: getstatic 409	com/avast/android/mobilesecurity/engine/ae:b	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1679: putfield 300	com/avast/android/mobilesecurity/engine/ad:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1682: aload 4
    //   1684: ifnull +8 -> 1692
    //   1687: aload 4
    //   1689: invokevirtual 305	java/io/InputStream:close	()V
    //   1692: aload 11
    //   1694: ifnull +25 -> 1719
    //   1697: aload 11
    //   1699: invokeinterface 311 1 0
    //   1704: ifnull +15 -> 1719
    //   1707: aload 11
    //   1709: invokeinterface 311 1 0
    //   1714: invokeinterface 316 1 0
    //   1719: aload 12
    //   1721: ifnull +8 -> 1729
    //   1724: aload 12
    //   1726: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   1729: aload_2
    //   1730: ifnull +7 -> 1737
    //   1733: aload_2
    //   1734: invokevirtual 321	android/b/a/a:a	()V
    //   1737: aload 6
    //   1739: astore 17
    //   1741: goto -1579 -> 162
    //   1744: aload 6
    //   1746: getstatic 434	com/avast/android/mobilesecurity/engine/ae:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1749: putfield 300	com/avast/android/mobilesecurity/engine/ad:a	Lcom/avast/android/mobilesecurity/engine/ae;
    //   1752: aload 6
    //   1754: new 274	java/lang/StringBuilder
    //   1757: dup
    //   1758: invokespecial 277	java/lang/StringBuilder:<init>	()V
    //   1761: aload_1
    //   1762: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1765: aload 38
    //   1767: invokevirtual 436	com/avast/android/mobilesecurity/engine/internal/a/q:e	()Ljava/lang/String;
    //   1770: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1773: invokevirtual 282	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1776: putfield 438	com/avast/android/mobilesecurity/engine/ad:b	Ljava/lang/String;
    //   1779: aload 4
    //   1781: ifnull +8 -> 1789
    //   1784: aload 4
    //   1786: invokevirtual 305	java/io/InputStream:close	()V
    //   1789: aload 11
    //   1791: ifnull +25 -> 1816
    //   1794: aload 11
    //   1796: invokeinterface 311 1 0
    //   1801: ifnull +15 -> 1816
    //   1804: aload 11
    //   1806: invokeinterface 311 1 0
    //   1811: invokeinterface 316 1 0
    //   1816: aload 12
    //   1818: ifnull +8 -> 1826
    //   1821: aload 12
    //   1823: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   1826: aload_2
    //   1827: ifnull +7 -> 1834
    //   1830: aload_2
    //   1831: invokevirtual 321	android/b/a/a:a	()V
    //   1834: aload 6
    //   1836: astore 17
    //   1838: goto -1676 -> 162
    //   1841: astore 16
    //   1843: goto -1634 -> 209
    //   1846: astore 14
    //   1848: goto -1602 -> 246
    //   1851: astore 20
    //   1853: goto -1740 -> 113
    //   1856: astore 18
    //   1858: goto -1708 -> 150
    //   1861: astore 89
    //   1863: goto -1399 -> 464
    //   1866: astore 87
    //   1868: goto -1367 -> 501
    //   1871: astore 86
    //   1873: goto -1298 -> 575
    //   1876: astore 84
    //   1878: goto -1266 -> 612
    //   1881: astore 83
    //   1883: goto -1218 -> 665
    //   1886: astore 81
    //   1888: goto -1186 -> 702
    //   1891: astore 80
    //   1893: goto -1081 -> 812
    //   1896: astore 78
    //   1898: goto -1049 -> 849
    //   1901: astore 41
    //   1903: goto -990 -> 913
    //   1906: astore 39
    //   1908: goto -958 -> 950
    //   1911: astore 46
    //   1913: goto -774 -> 1139
    //   1916: astore 44
    //   1918: goto -742 -> 1176
    //   1921: astore 77
    //   1923: goto -856 -> 1067
    //   1926: astore 75
    //   1928: goto -824 -> 1104
    //   1931: astore 74
    //   1933: goto -635 -> 1298
    //   1936: astore 72
    //   1938: goto -603 -> 1335
    //   1941: astore 71
    //   1943: goto -521 -> 1422
    //   1946: astore 69
    //   1948: goto -489 -> 1459
    //   1951: astore 68
    //   1953: goto -421 -> 1532
    //   1956: astore 66
    //   1958: goto -389 -> 1569
    //   1961: astore 64
    //   1963: goto -347 -> 1616
    //   1966: astore 62
    //   1968: goto -315 -> 1653
    //   1971: astore 57
    //   1973: goto -281 -> 1692
    //   1976: astore 55
    //   1978: goto -249 -> 1729
    //   1981: astore 51
    //   1983: goto -194 -> 1789
    //   1986: astore 49
    //   1988: goto -162 -> 1826
    //   1991: astore 50
    //   1993: goto -177 -> 1816
    //   1996: astore 56
    //   1998: goto -279 -> 1719
    //   2001: astore 63
    //   2003: goto -360 -> 1643
    //   2006: astore 67
    //   2008: goto -449 -> 1559
    //   2011: astore 70
    //   2013: goto -564 -> 1449
    //   2016: astore 73
    //   2018: goto -693 -> 1325
    //   2021: astore 76
    //   2023: goto -929 -> 1094
    //   2026: astore 45
    //   2028: goto -862 -> 1166
    //   2031: astore 40
    //   2033: goto -1093 -> 940
    //   2036: astore 79
    //   2038: goto -1199 -> 839
    //   2041: astore 82
    //   2043: goto -1351 -> 692
    //   2046: astore 85
    //   2048: goto -1446 -> 602
    //   2051: astore 88
    //   2053: goto -1562 -> 491
    //   2056: astore 19
    //   2058: goto -1918 -> 140
    //   2061: astore 15
    //   2063: goto -1827 -> 236
    //   2066: astore 21
    //   2068: aload 21
    //   2070: astore 13
    //   2072: aconst_null
    //   2073: astore 12
    //   2075: aconst_null
    //   2076: astore 11
    //   2078: aconst_null
    //   2079: astore 4
    //   2081: goto -1882 -> 199
    //   2084: astore 13
    //   2086: goto -1887 -> 199
    //   2089: astore 10
    //   2091: aload 9
    //   2093: astore 4
    //   2095: aload 8
    //   2097: astore 11
    //   2099: aload 5
    //   2101: astore 12
    //   2103: aload 10
    //   2105: astore 13
    //   2107: goto -1908 -> 199
    //   2110: astore 7
    //   2112: aconst_null
    //   2113: astore 5
    //   2115: aconst_null
    //   2116: astore 8
    //   2118: aconst_null
    //   2119: astore 9
    //   2121: goto -2026 -> 95
    //   2124: aload 58
    //   2126: astore 59
    //   2128: goto -855 -> 1273
    //   2131: iload 28
    //   2133: istore 29
    //   2135: goto -1804 -> 331
    //
    // Exception table:
    //   from	to	target	type
    //   78	86	86	java/io/IOException
    //   165	190	86	java/io/IOException
    //   257	266	86	java/io/IOException
    //   78	86	190	finally
    //   165	190	190	finally
    //   257	266	190	finally
    //   270	347	190	finally
    //   398	407	190	finally
    //   347	378	381	java/io/IOException
    //   426	454	381	java/io/IOException
    //   516	565	381	java/io/IOException
    //   633	655	381	java/io/IOException
    //   717	802	381	java/io/IOException
    //   864	903	381	java/io/IOException
    //   965	990	381	java/io/IOException
    //   990	1000	381	java/io/IOException
    //   1000	1057	381	java/io/IOException
    //   1121	1129	381	java/io/IOException
    //   1191	1288	381	java/io/IOException
    //   1356	1412	381	java/io/IOException
    //   1474	1522	381	java/io/IOException
    //   1598	1606	381	java/io/IOException
    //   1674	1682	381	java/io/IOException
    //   1744	1779	381	java/io/IOException
    //   270	347	410	java/io/IOException
    //   398	407	410	java/io/IOException
    //   990	1000	1119	java/lang/NumberFormatException
    //   204	209	1841	java/io/IOException
    //   241	246	1846	java/io/IOException
    //   108	113	1851	java/io/IOException
    //   145	150	1856	java/io/IOException
    //   459	464	1861	java/io/IOException
    //   496	501	1866	java/io/IOException
    //   570	575	1871	java/io/IOException
    //   607	612	1876	java/io/IOException
    //   660	665	1881	java/io/IOException
    //   697	702	1886	java/io/IOException
    //   807	812	1891	java/io/IOException
    //   844	849	1896	java/io/IOException
    //   908	913	1901	java/io/IOException
    //   945	950	1906	java/io/IOException
    //   1134	1139	1911	java/io/IOException
    //   1171	1176	1916	java/io/IOException
    //   1062	1067	1921	java/io/IOException
    //   1099	1104	1926	java/io/IOException
    //   1293	1298	1931	java/io/IOException
    //   1330	1335	1936	java/io/IOException
    //   1417	1422	1941	java/io/IOException
    //   1454	1459	1946	java/io/IOException
    //   1527	1532	1951	java/io/IOException
    //   1564	1569	1956	java/io/IOException
    //   1611	1616	1961	java/io/IOException
    //   1648	1653	1966	java/io/IOException
    //   1687	1692	1971	java/io/IOException
    //   1724	1729	1976	java/io/IOException
    //   1784	1789	1981	java/io/IOException
    //   1821	1826	1986	java/io/IOException
    //   1804	1816	1991	java/io/IOException
    //   1707	1719	1996	java/io/IOException
    //   1631	1643	2001	java/io/IOException
    //   1547	1559	2006	java/io/IOException
    //   1437	1449	2011	java/io/IOException
    //   1313	1325	2016	java/io/IOException
    //   1082	1094	2021	java/io/IOException
    //   1154	1166	2026	java/io/IOException
    //   928	940	2031	java/io/IOException
    //   827	839	2036	java/io/IOException
    //   680	692	2041	java/io/IOException
    //   590	602	2046	java/io/IOException
    //   479	491	2051	java/io/IOException
    //   128	140	2056	java/io/IOException
    //   224	236	2061	java/io/IOException
    //   62	69	2066	finally
    //   347	378	2084	finally
    //   426	454	2084	finally
    //   516	565	2084	finally
    //   633	655	2084	finally
    //   717	802	2084	finally
    //   864	903	2084	finally
    //   965	990	2084	finally
    //   990	1000	2084	finally
    //   1000	1057	2084	finally
    //   1121	1129	2084	finally
    //   1191	1288	2084	finally
    //   1356	1412	2084	finally
    //   1474	1522	2084	finally
    //   1598	1606	2084	finally
    //   1674	1682	2084	finally
    //   1744	1779	2084	finally
    //   95	103	2089	finally
    //   62	69	2110	java/io/IOException
  }

  public static af a(Context paramContext, File paramFile)
  {
    af localaf1 = new af();
    File localFile1 = paramContext.getDir(s.a, 0);
    File[] arrayOfFile1 = localFile1.listFiles();
    int j;
    af localaf2;
    switch (aa.a[s.a(paramContext).ordinal()])
    {
    default:
      if (arrayOfFile1 != null)
      {
        j = 0;
        if (j < arrayOfFile1.length)
        {
          File localFile4 = new File(localFile1 + "/" + arrayOfFile1[j].getName() + "_old");
          if (!arrayOfFile1[j].renameTo(localFile4))
          {
            localaf1.a = ag.g;
            localaf2 = localaf1;
          }
        }
      }
      break;
    case 1:
    }
    while (true)
    {
      return localaf2;
      localaf1.a = ag.g;
      localaf2 = localaf1;
      continue;
      j++;
      break;
      File localFile2 = new File(localFile1 + "/" + paramFile.getName());
      String str1;
      if (paramFile.renameTo(localFile2))
      {
        str1 = c(paramContext, localFile2);
        if (str1 == null)
        {
          localaf1.a = ag.e;
          localaf2 = localaf1;
        }
      }
      else
      {
        localaf1.a = ag.g;
        localaf2 = localaf1;
        continue;
        v localv = s.a(paramContext, localFile2.getName(), str1);
        switch (aa.b[localv.ordinal()])
        {
        default:
          s.a(paramContext);
          if (!d(paramContext))
          {
            localaf1.a = ag.g;
            localFile2.delete();
            File[] arrayOfFile2 = localFile1.listFiles();
            if (arrayOfFile2 != null)
              for (int i = 0; i < arrayOfFile2.length; i++)
                if (arrayOfFile2[i].getName().endsWith("_old"))
                {
                  String str2 = arrayOfFile2[i].getName();
                  File localFile3 = new File(localFile1 + "/" + str2.substring(0, -5 + str2.length()));
                  arrayOfFile2[i].renameTo(localFile3);
                }
            localaf2 = localaf1;
          }
          else
          {
            localaf1.a = ag.f;
            localaf2 = localaf1;
          }
          break;
        case 1:
          localaf1.a = ag.b;
          localaf2 = localaf1;
        }
      }
    }
  }

  // ERROR //
  @android.annotation.SuppressLint({"NewApi"})
  public static File a(Context paramContext, String paramString, com.avast.android.mobilesecurity.engine.r paramr)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 272	org/apache/http/client/methods/HttpGet
    //   5: dup
    //   6: aload_1
    //   7: invokespecial 285	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   10: astore 4
    //   12: ldc_w 265
    //   15: invokestatic 270	android/b/a/a:a	(Ljava/lang/String;)Landroid/b/a/a;
    //   18: astore 5
    //   20: aload 5
    //   22: aload 4
    //   24: invokevirtual 292	android/b/a/a:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   27: invokeinterface 311 1 0
    //   32: astore 19
    //   34: aload 19
    //   36: astore 11
    //   38: aload 11
    //   40: ifnonnull +115 -> 155
    //   43: new 531	org/apache/http/HttpException
    //   46: dup
    //   47: ldc_w 533
    //   50: invokespecial 534	org/apache/http/HttpException:<init>	(Ljava/lang/String;)V
    //   53: athrow
    //   54: astore 47
    //   56: aconst_null
    //   57: astore 7
    //   59: aconst_null
    //   60: astore 8
    //   62: aload 11
    //   64: astore 9
    //   66: new 531	org/apache/http/HttpException
    //   69: dup
    //   70: invokespecial 535	org/apache/http/HttpException:<init>	()V
    //   73: athrow
    //   74: astore 10
    //   76: aload 9
    //   78: astore 11
    //   80: aload 7
    //   82: astore 12
    //   84: aload 10
    //   86: astore 13
    //   88: aload 8
    //   90: astore 14
    //   92: aload 12
    //   94: ifnull +8 -> 102
    //   97: aload 12
    //   99: invokevirtual 538	com/avast/android/mobilesecurity/engine/internal/k:close	()V
    //   102: aload 11
    //   104: ifnull +10 -> 114
    //   107: aload 11
    //   109: invokeinterface 316 1 0
    //   114: aload 14
    //   116: ifnull +8 -> 124
    //   119: aload 14
    //   121: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   124: aload_3
    //   125: ifnull +7 -> 132
    //   128: aload_3
    //   129: invokevirtual 541	java/io/FileOutputStream:close	()V
    //   132: aload 5
    //   134: ifnull +8 -> 142
    //   137: aload 5
    //   139: invokevirtual 321	android/b/a/a:a	()V
    //   142: aload 13
    //   144: athrow
    //   145: astore 50
    //   147: new 531	org/apache/http/HttpException
    //   150: dup
    //   151: invokespecial 535	org/apache/http/HttpException:<init>	()V
    //   154: athrow
    //   155: aload 11
    //   157: invokeinterface 329 1 0
    //   162: lconst_0
    //   163: lcmp
    //   164: istore 20
    //   166: iconst_0
    //   167: istore 21
    //   169: iload 20
    //   171: ifle +34 -> 205
    //   174: aload 11
    //   176: invokeinterface 329 1 0
    //   181: l2i
    //   182: istore 48
    //   184: iload 48
    //   186: i2l
    //   187: aload 11
    //   189: invokeinterface 329 1 0
    //   194: lcmp
    //   195: istore 49
    //   197: iconst_0
    //   198: istore 21
    //   200: iload 49
    //   202: ifeq +559 -> 761
    //   205: iload 21
    //   207: ifle +100 -> 307
    //   210: new 318	java/io/ByteArrayOutputStream
    //   213: dup
    //   214: iload 21
    //   216: invokespecial 332	java/io/ByteArrayOutputStream:<init>	(I)V
    //   219: astore 14
    //   221: new 543	com/avast/android/mobilesecurity/engine/internal/z
    //   224: dup
    //   225: aload_2
    //   226: invokespecial 546	com/avast/android/mobilesecurity/engine/internal/z:<init>	(Lcom/avast/android/mobilesecurity/engine/r;)V
    //   229: astore 22
    //   231: new 537	com/avast/android/mobilesecurity/engine/internal/k
    //   234: dup
    //   235: aload 11
    //   237: invokeinterface 325 1 0
    //   242: aload 11
    //   244: invokeinterface 329 1 0
    //   249: aload 22
    //   251: invokespecial 549	com/avast/android/mobilesecurity/engine/internal/k:<init>	(Ljava/io/InputStream;JLcom/avast/android/mobilesecurity/engine/r;)V
    //   254: astore 12
    //   256: sipush 4096
    //   259: newarray byte
    //   261: astore 24
    //   263: aload 12
    //   265: aload 24
    //   267: invokevirtual 550	com/avast/android/mobilesecurity/engine/internal/k:read	([B)I
    //   270: istore 25
    //   272: iload 25
    //   274: iflt +58 -> 332
    //   277: aload 14
    //   279: aload 24
    //   281: iconst_0
    //   282: iload 25
    //   284: invokevirtual 340	java/io/ByteArrayOutputStream:write	([BII)V
    //   287: goto -24 -> 263
    //   290: astore 23
    //   292: aload 12
    //   294: astore 7
    //   296: aload 14
    //   298: astore 8
    //   300: aload 11
    //   302: astore 9
    //   304: goto -238 -> 66
    //   307: new 318	java/io/ByteArrayOutputStream
    //   310: dup
    //   311: invokespecial 341	java/io/ByteArrayOutputStream:<init>	()V
    //   314: astore 14
    //   316: goto -95 -> 221
    //   319: astore 13
    //   321: aconst_null
    //   322: astore_3
    //   323: aconst_null
    //   324: astore 12
    //   326: aconst_null
    //   327: astore 14
    //   329: goto -237 -> 92
    //   332: aload 14
    //   334: invokevirtual 345	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   337: astore 26
    //   339: new 451	java/io/File
    //   342: dup
    //   343: new 274	java/lang/StringBuilder
    //   346: dup
    //   347: invokespecial 277	java/lang/StringBuilder:<init>	()V
    //   350: aload_0
    //   351: getstatic 233	com/avast/android/mobilesecurity/engine/internal/y:a	Ljava/lang/String;
    //   354: iconst_0
    //   355: invokevirtual 449	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   358: invokevirtual 553	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   361: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   364: ldc_w 474
    //   367: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   370: aload_1
    //   371: aload_1
    //   372: ldc_w 474
    //   375: invokevirtual 556	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   378: invokevirtual 559	java/lang/String:substring	(I)Ljava/lang/String;
    //   381: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   384: invokevirtual 282	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   387: invokespecial 480	java/io/File:<init>	(Ljava/lang/String;)V
    //   390: astore 27
    //   392: new 540	java/io/FileOutputStream
    //   395: dup
    //   396: aload 27
    //   398: invokespecial 562	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   401: astore 28
    //   403: aload 28
    //   405: aload 26
    //   407: invokevirtual 565	java/io/FileOutputStream:write	([B)V
    //   410: aload 28
    //   412: invokevirtual 568	java/io/FileOutputStream:flush	()V
    //   415: aload 12
    //   417: ifnull +8 -> 425
    //   420: aload 12
    //   422: invokevirtual 538	com/avast/android/mobilesecurity/engine/internal/k:close	()V
    //   425: aload 11
    //   427: ifnull +10 -> 437
    //   430: aload 11
    //   432: invokeinterface 316 1 0
    //   437: aload 14
    //   439: ifnull +8 -> 447
    //   442: aload 14
    //   444: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   447: aload 28
    //   449: ifnull +8 -> 457
    //   452: aload 28
    //   454: invokevirtual 541	java/io/FileOutputStream:close	()V
    //   457: aload 5
    //   459: ifnull +8 -> 467
    //   462: aload 5
    //   464: invokevirtual 321	android/b/a/a:a	()V
    //   467: aload 27
    //   469: areturn
    //   470: astore 45
    //   472: aconst_null
    //   473: astore 30
    //   475: aload 12
    //   477: ifnull +8 -> 485
    //   480: aload 12
    //   482: invokevirtual 538	com/avast/android/mobilesecurity/engine/internal/k:close	()V
    //   485: aload 11
    //   487: ifnull +10 -> 497
    //   490: aload 11
    //   492: invokeinterface 316 1 0
    //   497: aload 14
    //   499: ifnull +8 -> 507
    //   502: aload 14
    //   504: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   507: aload 30
    //   509: ifnull +8 -> 517
    //   512: aload 30
    //   514: invokevirtual 541	java/io/FileOutputStream:close	()V
    //   517: aload 5
    //   519: ifnull +8 -> 527
    //   522: aload 5
    //   524: invokevirtual 321	android/b/a/a:a	()V
    //   527: aconst_null
    //   528: astore 27
    //   530: goto -63 -> 467
    //   533: astore 44
    //   535: aconst_null
    //   536: astore 28
    //   538: aload 12
    //   540: ifnull +8 -> 548
    //   543: aload 12
    //   545: invokevirtual 538	com/avast/android/mobilesecurity/engine/internal/k:close	()V
    //   548: aload 11
    //   550: ifnull +10 -> 560
    //   553: aload 11
    //   555: invokeinterface 316 1 0
    //   560: aload 14
    //   562: ifnull +8 -> 570
    //   565: aload 14
    //   567: invokevirtual 319	java/io/ByteArrayOutputStream:close	()V
    //   570: aload 28
    //   572: ifnull +8 -> 580
    //   575: aload 28
    //   577: invokevirtual 541	java/io/FileOutputStream:close	()V
    //   580: aload 5
    //   582: ifnull +8 -> 590
    //   585: aload 5
    //   587: invokevirtual 321	android/b/a/a:a	()V
    //   590: aconst_null
    //   591: astore 27
    //   593: goto -126 -> 467
    //   596: astore 18
    //   598: goto -496 -> 102
    //   601: astore 17
    //   603: goto -489 -> 114
    //   606: astore 16
    //   608: goto -484 -> 124
    //   611: astore 15
    //   613: goto -481 -> 132
    //   616: astore 34
    //   618: goto -133 -> 485
    //   621: astore 33
    //   623: goto -126 -> 497
    //   626: astore 32
    //   628: goto -121 -> 507
    //   631: astore 31
    //   633: goto -116 -> 517
    //   636: astore 39
    //   638: goto -90 -> 548
    //   641: astore 38
    //   643: goto -83 -> 560
    //   646: astore 37
    //   648: goto -78 -> 570
    //   651: astore 36
    //   653: goto -73 -> 580
    //   656: astore 43
    //   658: goto -233 -> 425
    //   661: astore 42
    //   663: goto -226 -> 437
    //   666: astore 41
    //   668: goto -221 -> 447
    //   671: astore 40
    //   673: goto -216 -> 457
    //   676: astore 13
    //   678: aconst_null
    //   679: astore_3
    //   680: aconst_null
    //   681: astore 12
    //   683: aconst_null
    //   684: astore 14
    //   686: aconst_null
    //   687: astore 11
    //   689: goto -597 -> 92
    //   692: astore 13
    //   694: aconst_null
    //   695: astore_3
    //   696: aconst_null
    //   697: astore 12
    //   699: goto -607 -> 92
    //   702: astore 13
    //   704: aconst_null
    //   705: astore_3
    //   706: goto -614 -> 92
    //   709: astore 13
    //   711: aload 28
    //   713: astore_3
    //   714: goto -622 -> 92
    //   717: astore 6
    //   719: aconst_null
    //   720: astore 7
    //   722: aconst_null
    //   723: astore 8
    //   725: aconst_null
    //   726: astore 9
    //   728: goto -662 -> 66
    //   731: astore 46
    //   733: aload 14
    //   735: astore 8
    //   737: aload 11
    //   739: astore 9
    //   741: aconst_null
    //   742: astore 7
    //   744: goto -678 -> 66
    //   747: astore 35
    //   749: goto -211 -> 538
    //   752: astore 29
    //   754: aload 28
    //   756: astore 30
    //   758: goto -283 -> 475
    //   761: iload 48
    //   763: istore 21
    //   765: goto -560 -> 205
    //
    // Exception table:
    //   from	to	target	type
    //   43	54	54	java/io/IOException
    //   155	221	54	java/io/IOException
    //   307	316	54	java/io/IOException
    //   66	74	74	finally
    //   2	12	145	java/lang/IllegalArgumentException
    //   256	287	290	java/io/IOException
    //   332	339	290	java/io/IOException
    //   43	54	319	finally
    //   155	221	319	finally
    //   307	316	319	finally
    //   339	403	470	java/io/IOException
    //   339	403	533	java/lang/NullPointerException
    //   97	102	596	java/io/IOException
    //   107	114	601	java/io/IOException
    //   119	124	606	java/io/IOException
    //   128	132	611	java/io/IOException
    //   480	485	616	java/io/IOException
    //   490	497	621	java/io/IOException
    //   502	507	626	java/io/IOException
    //   512	517	631	java/io/IOException
    //   543	548	636	java/io/IOException
    //   553	560	641	java/io/IOException
    //   565	570	646	java/io/IOException
    //   575	580	651	java/io/IOException
    //   420	425	656	java/io/IOException
    //   430	437	661	java/io/IOException
    //   442	447	666	java/io/IOException
    //   452	457	671	java/io/IOException
    //   20	34	676	finally
    //   221	256	692	finally
    //   256	287	702	finally
    //   332	339	702	finally
    //   339	403	702	finally
    //   403	415	709	finally
    //   20	34	717	java/io/IOException
    //   221	256	731	java/io/IOException
    //   403	415	747	java/lang/NullPointerException
    //   403	415	752	java/io/IOException
  }

  public static boolean a()
  {
    return true;
  }

  public static int b()
  {
    return h;
  }

  public static boolean b(Context paramContext)
  {
    File[] arrayOfFile = paramContext.getDir(s.a, 0).listFiles();
    if (arrayOfFile != null)
    {
      bool = true;
      for (int i = 0; i < arrayOfFile.length; i++)
        if ((arrayOfFile[i].getName().endsWith("_old")) && (!arrayOfFile[i].delete()))
          bool = false;
    }
    boolean bool = true;
    c(paramContext);
    return bool;
  }

  public static boolean b(Context paramContext, File paramFile)
  {
    try
    {
      boolean bool2 = new ab(paramContext, paramFile).a();
      bool1 = bool2;
      return bool1;
    }
    catch (IOException localIOException)
    {
      while (true)
        boolean bool1 = false;
    }
  }

  // ERROR //
  private static String c(Context paramContext, File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: getstatic 443	com/avast/android/mobilesecurity/engine/internal/s:a	Ljava/lang/String;
    //   4: iconst_0
    //   5: invokevirtual 449	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   8: astore_2
    //   9: new 583	java/util/zip/ZipFile
    //   12: dup
    //   13: aload_1
    //   14: invokespecial 584	java/util/zip/ZipFile:<init>	(Ljava/io/File;)V
    //   17: astore_3
    //   18: aload_3
    //   19: invokevirtual 588	java/util/zip/ZipFile:entries	()Ljava/util/Enumeration;
    //   22: astore 16
    //   24: aconst_null
    //   25: astore 17
    //   27: aconst_null
    //   28: astore 5
    //   30: aconst_null
    //   31: astore 6
    //   33: aload 16
    //   35: invokeinterface 593 1 0
    //   40: ifeq +295 -> 335
    //   43: aload 16
    //   45: invokeinterface 597 1 0
    //   50: checkcast 599	java/util/zip/ZipEntry
    //   53: astore 22
    //   55: aload 22
    //   57: invokevirtual 600	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   60: ldc_w 602
    //   63: invokevirtual 425	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   66: astore 23
    //   68: aload 23
    //   70: ifnull +173 -> 243
    //   73: aload 23
    //   75: iconst_m1
    //   76: aload 23
    //   78: arraylength
    //   79: iadd
    //   80: aaload
    //   81: ldc_w 604
    //   84: invokevirtual 431	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   87: ifeq +156 -> 243
    //   90: aload 22
    //   92: invokevirtual 600	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   95: ldc_w 474
    //   98: invokevirtual 425	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   101: astore 27
    //   103: new 451	java/io/File
    //   106: dup
    //   107: new 274	java/lang/StringBuilder
    //   110: dup
    //   111: invokespecial 277	java/lang/StringBuilder:<init>	()V
    //   114: aload_2
    //   115: invokevirtual 553	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   118: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: ldc_w 474
    //   124: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: aload 27
    //   129: iconst_m1
    //   130: aload 27
    //   132: arraylength
    //   133: iadd
    //   134: aaload
    //   135: invokevirtual 281	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: invokevirtual 282	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   141: invokespecial 480	java/io/File:<init>	(Ljava/lang/String;)V
    //   144: astore 28
    //   146: new 606	java/io/BufferedOutputStream
    //   149: dup
    //   150: new 540	java/io/FileOutputStream
    //   153: dup
    //   154: aload 28
    //   156: iconst_0
    //   157: invokespecial 609	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   160: invokespecial 612	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   163: astore 29
    //   165: aload_3
    //   166: aload 22
    //   168: invokevirtual 616	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   171: astore 32
    //   173: sipush 1024
    //   176: newarray byte
    //   178: astore 36
    //   180: aload 32
    //   182: aload 36
    //   184: invokevirtual 336	java/io/InputStream:read	([B)I
    //   187: istore 37
    //   189: iload 37
    //   191: iflt +297 -> 488
    //   194: aload 29
    //   196: aload 36
    //   198: iconst_0
    //   199: iload 37
    //   201: invokevirtual 619	java/io/OutputStream:write	([BII)V
    //   204: goto -24 -> 180
    //   207: astore 35
    //   209: aload 32
    //   211: astore 5
    //   213: aload 29
    //   215: astore 6
    //   217: aload 6
    //   219: ifnull +8 -> 227
    //   222: aload 6
    //   224: invokevirtual 620	java/io/OutputStream:close	()V
    //   227: aload 5
    //   229: ifnull +8 -> 237
    //   232: aload 5
    //   234: invokevirtual 305	java/io/InputStream:close	()V
    //   237: aconst_null
    //   238: astore 7
    //   240: aload 7
    //   242: areturn
    //   243: aload 17
    //   245: astore 24
    //   247: aload 5
    //   249: astore 25
    //   251: aload 6
    //   253: astore 26
    //   255: aload 26
    //   257: astore 6
    //   259: aload 25
    //   261: astore 5
    //   263: aload 24
    //   265: astore 17
    //   267: goto -234 -> 33
    //   270: astore 13
    //   272: aconst_null
    //   273: astore 5
    //   275: aconst_null
    //   276: astore 6
    //   278: aload 6
    //   280: ifnull +8 -> 288
    //   283: aload 6
    //   285: invokevirtual 620	java/io/OutputStream:close	()V
    //   288: aload 5
    //   290: ifnull +8 -> 298
    //   293: aload 5
    //   295: invokevirtual 305	java/io/InputStream:close	()V
    //   298: aconst_null
    //   299: astore 7
    //   301: goto -61 -> 240
    //   304: astore 10
    //   306: aconst_null
    //   307: astore 5
    //   309: aconst_null
    //   310: astore 6
    //   312: aload 6
    //   314: ifnull +8 -> 322
    //   317: aload 6
    //   319: invokevirtual 620	java/io/OutputStream:close	()V
    //   322: aload 5
    //   324: ifnull +8 -> 332
    //   327: aload 5
    //   329: invokevirtual 305	java/io/InputStream:close	()V
    //   332: aload 10
    //   334: athrow
    //   335: aload 6
    //   337: ifnull +8 -> 345
    //   340: aload 6
    //   342: invokevirtual 620	java/io/OutputStream:close	()V
    //   345: aload 5
    //   347: ifnull +8 -> 355
    //   350: aload 5
    //   352: invokevirtual 305	java/io/InputStream:close	()V
    //   355: aload 17
    //   357: invokevirtual 477	java/io/File:getName	()Ljava/lang/String;
    //   360: astore 7
    //   362: goto -122 -> 240
    //   365: astore 9
    //   367: goto -140 -> 227
    //   370: astore 8
    //   372: goto -135 -> 237
    //   375: astore 15
    //   377: goto -89 -> 288
    //   380: astore 14
    //   382: goto -84 -> 298
    //   385: astore 12
    //   387: goto -65 -> 322
    //   390: astore 11
    //   392: goto -60 -> 332
    //   395: astore 21
    //   397: goto -52 -> 345
    //   400: astore 20
    //   402: goto -47 -> 355
    //   405: astore 34
    //   407: aload 32
    //   409: astore 5
    //   411: aload 29
    //   413: astore 6
    //   415: aload 34
    //   417: astore 10
    //   419: goto -107 -> 312
    //   422: astore 10
    //   424: goto -112 -> 312
    //   427: astore 10
    //   429: aload 29
    //   431: astore 6
    //   433: goto -121 -> 312
    //   436: astore 33
    //   438: aload 32
    //   440: astore 5
    //   442: aload 29
    //   444: astore 6
    //   446: goto -168 -> 278
    //   449: astore 19
    //   451: goto -173 -> 278
    //   454: astore 31
    //   456: aload 29
    //   458: astore 6
    //   460: goto -182 -> 278
    //   463: astore 4
    //   465: aconst_null
    //   466: astore 5
    //   468: aconst_null
    //   469: astore 6
    //   471: goto -254 -> 217
    //   474: astore 18
    //   476: goto -259 -> 217
    //   479: astore 30
    //   481: aload 29
    //   483: astore 6
    //   485: goto -268 -> 217
    //   488: aload 29
    //   490: astore 26
    //   492: aload 28
    //   494: astore 24
    //   496: aload 32
    //   498: astore 25
    //   500: goto -245 -> 255
    //
    // Exception table:
    //   from	to	target	type
    //   173	204	207	java/util/zip/ZipException
    //   9	24	270	java/io/IOException
    //   9	24	304	finally
    //   222	227	365	java/io/IOException
    //   232	237	370	java/io/IOException
    //   283	288	375	java/io/IOException
    //   293	298	380	java/io/IOException
    //   317	322	385	java/io/IOException
    //   327	332	390	java/io/IOException
    //   340	345	395	java/io/IOException
    //   350	355	400	java/io/IOException
    //   173	204	405	finally
    //   33	165	422	finally
    //   165	173	427	finally
    //   173	204	436	java/io/IOException
    //   33	165	449	java/io/IOException
    //   165	173	454	java/io/IOException
    //   9	24	463	java/util/zip/ZipException
    //   33	165	474	java/util/zip/ZipException
    //   165	173	479	java/util/zip/ZipException
  }

  public static void c(Context paramContext)
  {
    File localFile = paramContext.getDir(a, 0);
    File[] arrayOfFile = localFile.listFiles();
    int i = 0;
    if (arrayOfFile != null)
      while (i < arrayOfFile.length)
      {
        arrayOfFile[i].delete();
        i++;
      }
    localFile.delete();
  }

  private static boolean d(Context paramContext)
  {
    File[] arrayOfFile = paramContext.getDir(s.a, 0).listFiles();
    if (arrayOfFile != null)
    {
      bool = true;
      for (int i = 0; i < arrayOfFile.length; i++)
        if ((!arrayOfFile[i].getName().endsWith("_old")) && (!arrayOfFile[i].delete()))
          bool = false;
    }
    boolean bool = true;
    return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.y
 * JD-Core Version:    0.6.2
 */