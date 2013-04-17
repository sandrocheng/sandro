package com.tencent.feedback.b;

import android.content.Context;
import com.qq.taf.jce.JceInputStream;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.f.c;
import com.tencent.feedback.common.strategy.UploadStrategyBean;
import com.tencent.feedback.upload.e.b;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import strategy.IpSource;
import strategy.SpeedMonitorSource;

public class a
  implements e.b
{
  Context a;

  public a()
  {
  }

  public a(Context paramContext)
  {
    this.a = null;
    this.a = paramContext.getApplicationContext();
  }

  // ERROR //
  public static long a(String paramString, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +7 -> 8
    //   4: iload_1
    //   5: ifgt +9 -> 14
    //   8: ldc2_w 27
    //   11: lstore_2
    //   12: lload_2
    //   13: lreturn
    //   14: aconst_null
    //   15: astore 4
    //   17: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   20: lstore 5
    //   22: new 36	java/net/InetSocketAddress
    //   25: dup
    //   26: aload_0
    //   27: iload_1
    //   28: invokespecial 39	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   31: astore 7
    //   33: new 41	java/net/Socket
    //   36: dup
    //   37: invokespecial 42	java/net/Socket:<init>	()V
    //   40: astore 8
    //   42: aload 8
    //   44: aload 7
    //   46: sipush 30000
    //   49: invokevirtual 46	java/net/Socket:connect	(Ljava/net/SocketAddress;I)V
    //   52: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   55: lload 5
    //   57: lsub
    //   58: lstore_2
    //   59: new 48	java/lang/StringBuilder
    //   62: dup
    //   63: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   66: ldc 51
    //   68: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: lload_2
    //   72: invokevirtual 58	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   75: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   81: aload 8
    //   83: invokevirtual 71	java/net/Socket:close	()V
    //   86: goto -74 -> 12
    //   89: astore 13
    //   91: aload 13
    //   93: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   96: aload 13
    //   98: invokevirtual 77	java/io/IOException:getMessage	()Ljava/lang/String;
    //   101: invokestatic 80	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   104: goto -92 -> 12
    //   107: astore 9
    //   109: aload 9
    //   111: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   114: aload 9
    //   116: invokevirtual 82	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   119: invokestatic 80	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   122: new 48	java/lang/StringBuilder
    //   125: dup
    //   126: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   129: ldc 84
    //   131: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: aload_0
    //   135: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: ldc 86
    //   140: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: iload_1
    //   144: invokevirtual 89	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   147: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokestatic 92	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   153: aload 4
    //   155: ifnull +8 -> 163
    //   158: aload 4
    //   160: invokevirtual 71	java/net/Socket:close	()V
    //   163: ldc2_w 27
    //   166: lstore_2
    //   167: goto -155 -> 12
    //   170: astore 12
    //   172: aload 12
    //   174: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   177: aload 12
    //   179: invokevirtual 77	java/io/IOException:getMessage	()Ljava/lang/String;
    //   182: invokestatic 80	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   185: ldc2_w 27
    //   188: lstore_2
    //   189: goto -177 -> 12
    //   192: astore 10
    //   194: aload 4
    //   196: ifnull +8 -> 204
    //   199: aload 4
    //   201: invokevirtual 71	java/net/Socket:close	()V
    //   204: aload 10
    //   206: athrow
    //   207: astore 11
    //   209: aload 11
    //   211: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   214: aload 11
    //   216: invokevirtual 77	java/io/IOException:getMessage	()Ljava/lang/String;
    //   219: invokestatic 80	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   222: goto -18 -> 204
    //   225: astore 10
    //   227: aload 8
    //   229: astore 4
    //   231: goto -37 -> 194
    //   234: astore 9
    //   236: aload 8
    //   238: astore 4
    //   240: goto -131 -> 109
    //
    // Exception table:
    //   from	to	target	type
    //   81	86	89	java/io/IOException
    //   33	42	107	java/lang/Throwable
    //   158	163	170	java/io/IOException
    //   33	42	192	finally
    //   109	153	192	finally
    //   199	204	207	java/io/IOException
    //   42	81	225	finally
    //   42	81	234	java/lang/Throwable
  }

  // ERROR //
  public static b a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: ifnull +12 -> 15
    //   6: aload_0
    //   7: ldc 95
    //   9: invokevirtual 101	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   12: ifeq +7 -> 19
    //   15: aconst_null
    //   16: astore_2
    //   17: aload_2
    //   18: areturn
    //   19: new 103	com/tencent/feedback/b/a$b
    //   22: dup
    //   23: invokespecial 104	com/tencent/feedback/b/a$b:<init>	()V
    //   26: astore_2
    //   27: new 106	java/net/URL
    //   30: dup
    //   31: aload_0
    //   32: invokespecial 108	java/net/URL:<init>	(Ljava/lang/String;)V
    //   35: astore_3
    //   36: aload_3
    //   37: invokevirtual 111	java/net/URL:getHost	()Ljava/lang/String;
    //   40: astore 16
    //   42: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   45: lstore 17
    //   47: aload 16
    //   49: invokestatic 117	java/net/InetAddress:getByName	(Ljava/lang/String;)Ljava/net/InetAddress;
    //   52: astore 19
    //   54: aload_2
    //   55: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   58: lload 17
    //   60: lsub
    //   61: putfield 120	com/tencent/feedback/b/a$b:a	J
    //   64: new 48	java/lang/StringBuilder
    //   67: dup
    //   68: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   71: ldc 122
    //   73: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: aload_2
    //   77: getfield 120	com/tencent/feedback/b/a$b:a	J
    //   80: invokevirtual 58	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   83: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   86: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   89: new 124	java/lang/StringBuffer
    //   92: dup
    //   93: invokespecial 125	java/lang/StringBuffer:<init>	()V
    //   96: astore 20
    //   98: aload 19
    //   100: invokevirtual 129	java/net/InetAddress:getAddress	()[B
    //   103: astore 21
    //   105: iconst_0
    //   106: istore 22
    //   108: iload 22
    //   110: aload 21
    //   112: arraylength
    //   113: if_icmpge +68 -> 181
    //   116: new 48	java/lang/StringBuilder
    //   119: dup
    //   120: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   123: ldc 131
    //   125: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: astore 45
    //   130: aload 21
    //   132: iload 22
    //   134: baload
    //   135: ifge +36 -> 171
    //   138: sipush 256
    //   141: aload 21
    //   143: iload 22
    //   145: baload
    //   146: iadd
    //   147: istore 46
    //   149: aload 20
    //   151: aload 45
    //   153: iload 46
    //   155: invokevirtual 89	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   158: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: invokevirtual 134	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   164: pop
    //   165: iinc 22 1
    //   168: goto -60 -> 108
    //   171: aload 21
    //   173: iload 22
    //   175: baload
    //   176: istore 46
    //   178: goto -29 -> 149
    //   181: aload_2
    //   182: aload 20
    //   184: iconst_1
    //   185: invokevirtual 138	java/lang/StringBuffer:substring	(I)Ljava/lang/String;
    //   188: putfield 142	com/tencent/feedback/b/a$b:f	Ljava/lang/String;
    //   191: aload 20
    //   193: iconst_0
    //   194: invokevirtual 146	java/lang/StringBuffer:setLength	(I)V
    //   197: aload_3
    //   198: invokevirtual 150	java/net/URL:getPort	()I
    //   201: istore 23
    //   203: iload 23
    //   205: iflt +391 -> 596
    //   208: new 36	java/net/InetSocketAddress
    //   211: dup
    //   212: aload 19
    //   214: iload 23
    //   216: invokespecial 153	java/net/InetSocketAddress:<init>	(Ljava/net/InetAddress;I)V
    //   219: astore 24
    //   221: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   224: lstore 25
    //   226: new 41	java/net/Socket
    //   229: dup
    //   230: invokespecial 42	java/net/Socket:<init>	()V
    //   233: astore 6
    //   235: aload 6
    //   237: aload 24
    //   239: sipush 30000
    //   242: invokevirtual 46	java/net/Socket:connect	(Ljava/net/SocketAddress;I)V
    //   245: aload_2
    //   246: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   249: lload 25
    //   251: lsub
    //   252: putfield 156	com/tencent/feedback/b/a$b:b	J
    //   255: new 48	java/lang/StringBuilder
    //   258: dup
    //   259: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   262: ldc 158
    //   264: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: aload_2
    //   268: getfield 156	com/tencent/feedback/b/a$b:b	J
    //   271: invokevirtual 58	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   274: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   277: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   280: new 48	java/lang/StringBuilder
    //   283: dup
    //   284: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   287: aload_3
    //   288: invokevirtual 161	java/net/URL:getPath	()Ljava/lang/String;
    //   291: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   294: astore 28
    //   296: aload_3
    //   297: invokevirtual 164	java/net/URL:getQuery	()Ljava/lang/String;
    //   300: ifnull +303 -> 603
    //   303: new 48	java/lang/StringBuilder
    //   306: dup
    //   307: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   310: ldc 166
    //   312: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   315: aload_3
    //   316: invokevirtual 164	java/net/URL:getQuery	()Ljava/lang/String;
    //   319: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   325: astore 29
    //   327: aload 28
    //   329: aload 29
    //   331: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   337: astore 30
    //   339: new 48	java/lang/StringBuilder
    //   342: dup
    //   343: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   346: ldc 168
    //   348: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   351: aload 30
    //   353: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   356: ldc 170
    //   358: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: aload 16
    //   363: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: ldc 172
    //   368: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   374: astore 31
    //   376: aload 6
    //   378: invokevirtual 176	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   381: astore 32
    //   383: aload 32
    //   385: astore 5
    //   387: aload 6
    //   389: invokevirtual 180	java/net/Socket:getInputStream	()Ljava/io/InputStream;
    //   392: astore 34
    //   394: aload 34
    //   396: astore 11
    //   398: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   401: lstore 35
    //   403: aload 5
    //   405: aload 31
    //   407: ldc 182
    //   409: invokevirtual 186	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   412: invokevirtual 192	java/io/OutputStream:write	([B)V
    //   415: aload 5
    //   417: invokevirtual 195	java/io/OutputStream:flush	()V
    //   420: aload_2
    //   421: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   424: lload 35
    //   426: lsub
    //   427: putfield 198	com/tencent/feedback/b/a$b:c	J
    //   430: new 48	java/lang/StringBuilder
    //   433: dup
    //   434: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   437: ldc 200
    //   439: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   442: aload_2
    //   443: getfield 198	com/tencent/feedback/b/a$b:c	J
    //   446: invokevirtual 58	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   449: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   452: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   455: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   458: lstore 37
    //   460: aload 11
    //   462: invokevirtual 205	java/io/InputStream:read	()I
    //   465: pop
    //   466: aload_2
    //   467: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   470: lload 37
    //   472: lsub
    //   473: putfield 208	com/tencent/feedback/b/a$b:d	J
    //   476: new 48	java/lang/StringBuilder
    //   479: dup
    //   480: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   483: ldc 210
    //   485: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   488: aload_2
    //   489: getfield 208	com/tencent/feedback/b/a$b:d	J
    //   492: invokevirtual 58	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   495: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   498: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   501: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   504: lstore 40
    //   506: aload 11
    //   508: invokevirtual 205	java/io/InputStream:read	()I
    //   511: iconst_m1
    //   512: if_icmpne -6 -> 506
    //   515: aload_2
    //   516: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   519: lload 40
    //   521: lsub
    //   522: putfield 213	com/tencent/feedback/b/a$b:e	J
    //   525: new 48	java/lang/StringBuilder
    //   528: dup
    //   529: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   532: ldc 215
    //   534: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   537: aload_2
    //   538: getfield 213	com/tencent/feedback/b/a$b:e	J
    //   541: invokevirtual 58	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   544: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   547: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   550: aload 5
    //   552: ifnull +8 -> 560
    //   555: aload 5
    //   557: invokevirtual 216	java/io/OutputStream:close	()V
    //   560: aload 11
    //   562: ifnull +8 -> 570
    //   565: aload 11
    //   567: invokevirtual 217	java/io/InputStream:close	()V
    //   570: aload 6
    //   572: invokevirtual 71	java/net/Socket:close	()V
    //   575: goto -558 -> 17
    //   578: astore 42
    //   580: aload 42
    //   582: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   585: aload 42
    //   587: invokevirtual 77	java/io/IOException:getMessage	()Ljava/lang/String;
    //   590: invokestatic 80	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   593: goto -576 -> 17
    //   596: bipush 80
    //   598: istore 23
    //   600: goto -392 -> 208
    //   603: ldc 95
    //   605: astore 29
    //   607: goto -280 -> 327
    //   610: astore 44
    //   612: aload 44
    //   614: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   617: goto -57 -> 560
    //   620: astore 43
    //   622: aload 43
    //   624: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   627: goto -57 -> 570
    //   630: astore 10
    //   632: aconst_null
    //   633: astore 5
    //   635: aconst_null
    //   636: astore 6
    //   638: aconst_null
    //   639: astore 11
    //   641: aload 10
    //   643: astore 12
    //   645: aload 12
    //   647: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   650: aload 12
    //   652: invokevirtual 82	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   655: invokestatic 80	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   658: aload 5
    //   660: ifnull +8 -> 668
    //   663: aload 5
    //   665: invokevirtual 216	java/io/OutputStream:close	()V
    //   668: aload 11
    //   670: ifnull +8 -> 678
    //   673: aload 11
    //   675: invokevirtual 217	java/io/InputStream:close	()V
    //   678: aload 6
    //   680: ifnull -663 -> 17
    //   683: aload 6
    //   685: invokevirtual 71	java/net/Socket:close	()V
    //   688: goto -671 -> 17
    //   691: astore 13
    //   693: aload 13
    //   695: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   698: aload 13
    //   700: invokevirtual 77	java/io/IOException:getMessage	()Ljava/lang/String;
    //   703: invokestatic 80	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   706: goto -689 -> 17
    //   709: astore 15
    //   711: aload 15
    //   713: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   716: goto -48 -> 668
    //   719: astore 14
    //   721: aload 14
    //   723: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   726: goto -48 -> 678
    //   729: astore 4
    //   731: aconst_null
    //   732: astore 5
    //   734: aconst_null
    //   735: astore 6
    //   737: aload 5
    //   739: ifnull +8 -> 747
    //   742: aload 5
    //   744: invokevirtual 216	java/io/OutputStream:close	()V
    //   747: aload_1
    //   748: ifnull +7 -> 755
    //   751: aload_1
    //   752: invokevirtual 217	java/io/InputStream:close	()V
    //   755: aload 6
    //   757: ifnull +8 -> 765
    //   760: aload 6
    //   762: invokevirtual 71	java/net/Socket:close	()V
    //   765: aload 4
    //   767: athrow
    //   768: astore 9
    //   770: aload 9
    //   772: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   775: goto -28 -> 747
    //   778: astore 8
    //   780: aload 8
    //   782: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   785: goto -30 -> 755
    //   788: astore 7
    //   790: aload 7
    //   792: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   795: aload 7
    //   797: invokevirtual 77	java/io/IOException:getMessage	()Ljava/lang/String;
    //   800: invokestatic 80	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   803: goto -38 -> 765
    //   806: astore 4
    //   808: aconst_null
    //   809: astore_1
    //   810: aconst_null
    //   811: astore 5
    //   813: goto -76 -> 737
    //   816: astore 4
    //   818: aconst_null
    //   819: astore_1
    //   820: goto -83 -> 737
    //   823: astore 4
    //   825: aload 11
    //   827: astore_1
    //   828: goto -91 -> 737
    //   831: astore 27
    //   833: aload 27
    //   835: astore 12
    //   837: aconst_null
    //   838: astore 11
    //   840: aconst_null
    //   841: astore 5
    //   843: goto -198 -> 645
    //   846: astore 33
    //   848: aload 33
    //   850: astore 12
    //   852: aconst_null
    //   853: astore 11
    //   855: goto -210 -> 645
    //   858: astore 12
    //   860: goto -215 -> 645
    //
    // Exception table:
    //   from	to	target	type
    //   570	575	578	java/io/IOException
    //   555	560	610	java/io/IOException
    //   565	570	620	java/io/IOException
    //   27	235	630	java/lang/Throwable
    //   683	688	691	java/io/IOException
    //   663	668	709	java/io/IOException
    //   673	678	719	java/io/IOException
    //   27	235	729	finally
    //   742	747	768	java/io/IOException
    //   751	755	778	java/io/IOException
    //   760	765	788	java/io/IOException
    //   235	383	806	finally
    //   387	394	816	finally
    //   398	550	823	finally
    //   645	658	823	finally
    //   235	383	831	java/lang/Throwable
    //   387	394	846	java/lang/Throwable
    //   398	550	858	java/lang/Throwable
  }

  // ERROR //
  public static b a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +12 -> 13
    //   4: aload_0
    //   5: ldc 95
    //   7: invokevirtual 101	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   10: ifeq +7 -> 17
    //   13: aconst_null
    //   14: astore_2
    //   15: aload_2
    //   16: areturn
    //   17: new 103	com/tencent/feedback/b/a$b
    //   20: dup
    //   21: invokespecial 104	com/tencent/feedback/b/a$b:<init>	()V
    //   24: astore_3
    //   25: aconst_null
    //   26: astore 4
    //   28: aconst_null
    //   29: astore 5
    //   31: aconst_null
    //   32: astore 6
    //   34: new 106	java/net/URL
    //   37: dup
    //   38: aload_0
    //   39: invokespecial 108	java/net/URL:<init>	(Ljava/lang/String;)V
    //   42: astore 7
    //   44: invokestatic 223	android/net/Proxy:getDefaultHost	()Ljava/lang/String;
    //   47: astore 14
    //   49: invokestatic 226	android/net/Proxy:getDefaultPort	()I
    //   52: istore 15
    //   54: aconst_null
    //   55: astore 6
    //   57: aconst_null
    //   58: astore 5
    //   60: aconst_null
    //   61: astore 4
    //   63: aload 14
    //   65: ifnull +41 -> 106
    //   68: aload 14
    //   70: invokevirtual 229	java/lang/String:trim	()Ljava/lang/String;
    //   73: invokevirtual 232	java/lang/String:length	()I
    //   76: istore 37
    //   78: aconst_null
    //   79: astore 6
    //   81: aconst_null
    //   82: astore 5
    //   84: aconst_null
    //   85: astore 4
    //   87: iload 37
    //   89: ifeq +17 -> 106
    //   92: aconst_null
    //   93: astore 6
    //   95: aconst_null
    //   96: astore 5
    //   98: aconst_null
    //   99: astore 4
    //   101: iload 15
    //   103: ifgt +640 -> 743
    //   106: ldc 234
    //   108: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   111: aconst_null
    //   112: astore 6
    //   114: aconst_null
    //   115: astore 5
    //   117: aconst_null
    //   118: astore 4
    //   120: aload_1
    //   121: ifnull +821 -> 942
    //   124: aload_1
    //   125: invokevirtual 229	java/lang/String:trim	()Ljava/lang/String;
    //   128: invokevirtual 232	java/lang/String:length	()I
    //   131: istore 32
    //   133: aconst_null
    //   134: astore 6
    //   136: aconst_null
    //   137: astore 5
    //   139: aconst_null
    //   140: astore 4
    //   142: iload 32
    //   144: ifgt +334 -> 478
    //   147: aconst_null
    //   148: astore 6
    //   150: aconst_null
    //   151: astore 5
    //   153: aconst_null
    //   154: astore 4
    //   156: goto +786 -> 942
    //   159: aconst_null
    //   160: astore 6
    //   162: aconst_null
    //   163: astore 5
    //   165: aconst_null
    //   166: astore 4
    //   168: aload 17
    //   170: ifnonnull +683 -> 853
    //   173: aload 7
    //   175: invokevirtual 238	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   178: checkcast 240	java/net/HttpURLConnection
    //   181: astore 4
    //   183: aload 4
    //   185: iconst_1
    //   186: invokevirtual 244	java/net/HttpURLConnection:setDoInput	(Z)V
    //   189: aload 4
    //   191: iconst_1
    //   192: invokevirtual 247	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   195: aload 4
    //   197: sipush 30000
    //   200: invokevirtual 250	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   203: aload 4
    //   205: sipush 30000
    //   208: invokevirtual 253	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   211: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   214: lstore 19
    //   216: aload 4
    //   218: invokevirtual 255	java/net/HttpURLConnection:connect	()V
    //   221: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   224: lstore 21
    //   226: aload 4
    //   228: invokevirtual 256	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   231: astore 6
    //   233: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   236: lstore 23
    //   238: aload 4
    //   240: invokevirtual 257	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   243: astore 5
    //   245: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   248: lstore 25
    //   250: aload 5
    //   252: invokevirtual 205	java/io/InputStream:read	()I
    //   255: iconst_m1
    //   256: if_icmpne -6 -> 250
    //   259: invokestatic 34	java/lang/System:currentTimeMillis	()J
    //   262: lstore 27
    //   264: aload_3
    //   265: ldc2_w 27
    //   268: putfield 120	com/tencent/feedback/b/a$b:a	J
    //   271: aload_3
    //   272: ldc 95
    //   274: putfield 142	com/tencent/feedback/b/a$b:f	Ljava/lang/String;
    //   277: aload_3
    //   278: lload 21
    //   280: lload 19
    //   282: lsub
    //   283: putfield 156	com/tencent/feedback/b/a$b:b	J
    //   286: aload_3
    //   287: lload 23
    //   289: lload 21
    //   291: lsub
    //   292: putfield 198	com/tencent/feedback/b/a$b:c	J
    //   295: aload_3
    //   296: lload 25
    //   298: lload 23
    //   300: lsub
    //   301: putfield 208	com/tencent/feedback/b/a$b:d	J
    //   304: aload_3
    //   305: lload 27
    //   307: lload 25
    //   309: lsub
    //   310: putfield 213	com/tencent/feedback/b/a$b:e	J
    //   313: new 48	java/lang/StringBuilder
    //   316: dup
    //   317: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   320: ldc_w 259
    //   323: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: aload_3
    //   327: getfield 120	com/tencent/feedback/b/a$b:a	J
    //   330: invokevirtual 58	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   333: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   336: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   339: new 48	java/lang/StringBuilder
    //   342: dup
    //   343: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   346: ldc_w 261
    //   349: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   352: aload_3
    //   353: getfield 156	com/tencent/feedback/b/a$b:b	J
    //   356: invokevirtual 58	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   359: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   362: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   365: new 48	java/lang/StringBuilder
    //   368: dup
    //   369: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   372: ldc_w 263
    //   375: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   378: aload_3
    //   379: getfield 198	com/tencent/feedback/b/a$b:c	J
    //   382: invokevirtual 58	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   385: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   388: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   391: new 48	java/lang/StringBuilder
    //   394: dup
    //   395: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   398: ldc_w 265
    //   401: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   404: aload_3
    //   405: getfield 208	com/tencent/feedback/b/a$b:d	J
    //   408: invokevirtual 58	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   411: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   414: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   417: new 48	java/lang/StringBuilder
    //   420: dup
    //   421: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   424: ldc_w 267
    //   427: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   430: aload_3
    //   431: getfield 213	com/tencent/feedback/b/a$b:e	J
    //   434: invokevirtual 58	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   437: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   440: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   443: aload 6
    //   445: ifnull +8 -> 453
    //   448: aload 6
    //   450: invokevirtual 216	java/io/OutputStream:close	()V
    //   453: aload 5
    //   455: ifnull +8 -> 463
    //   458: aload 5
    //   460: invokevirtual 217	java/io/InputStream:close	()V
    //   463: aload 4
    //   465: ifnull +8 -> 473
    //   468: aload 4
    //   470: invokevirtual 270	java/net/HttpURLConnection:disconnect	()V
    //   473: aload_3
    //   474: astore_2
    //   475: goto -460 -> 15
    //   478: new 272	com/tencent/feedback/b/a$a
    //   481: dup
    //   482: invokespecial 273	com/tencent/feedback/b/a$a:<init>	()V
    //   485: astore 16
    //   487: aload_1
    //   488: invokevirtual 276	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   491: astore 33
    //   493: aload 33
    //   495: ldc_w 278
    //   498: invokevirtual 282	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   501: istore 34
    //   503: aconst_null
    //   504: astore 6
    //   506: aconst_null
    //   507: astore 5
    //   509: aconst_null
    //   510: astore 4
    //   512: iload 34
    //   514: ifeq +75 -> 589
    //   517: ldc_w 284
    //   520: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   523: aload 16
    //   525: ldc_w 286
    //   528: putfield 288	com/tencent/feedback/b/a$a:a	Ljava/lang/String;
    //   531: aload 16
    //   533: bipush 80
    //   535: putfield 291	com/tencent/feedback/b/a$a:b	I
    //   538: goto +407 -> 945
    //   541: astore 11
    //   543: aload 11
    //   545: invokevirtual 81	java/lang/Throwable:printStackTrace	()V
    //   548: aload 11
    //   550: invokevirtual 82	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   553: invokestatic 80	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   556: aload 6
    //   558: ifnull +8 -> 566
    //   561: aload 6
    //   563: invokevirtual 216	java/io/OutputStream:close	()V
    //   566: aload 5
    //   568: ifnull +8 -> 576
    //   571: aload 5
    //   573: invokevirtual 217	java/io/InputStream:close	()V
    //   576: aload 4
    //   578: ifnull -105 -> 473
    //   581: aload 4
    //   583: invokevirtual 270	java/net/HttpURLConnection:disconnect	()V
    //   586: goto -113 -> 473
    //   589: aload 33
    //   591: ldc_w 293
    //   594: invokevirtual 282	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   597: istore 35
    //   599: aconst_null
    //   600: astore 6
    //   602: aconst_null
    //   603: astore 5
    //   605: aconst_null
    //   606: astore 4
    //   608: iload 35
    //   610: ifeq +62 -> 672
    //   613: ldc_w 295
    //   616: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   619: aload 16
    //   621: ldc_w 297
    //   624: putfield 288	com/tencent/feedback/b/a$a:a	Ljava/lang/String;
    //   627: aload 16
    //   629: bipush 80
    //   631: putfield 291	com/tencent/feedback/b/a$a:b	I
    //   634: goto +311 -> 945
    //   637: astore 8
    //   639: aload 6
    //   641: ifnull +8 -> 649
    //   644: aload 6
    //   646: invokevirtual 216	java/io/OutputStream:close	()V
    //   649: aload 5
    //   651: ifnull +8 -> 659
    //   654: aload 5
    //   656: invokevirtual 217	java/io/InputStream:close	()V
    //   659: aload 4
    //   661: ifnull +8 -> 669
    //   664: aload 4
    //   666: invokevirtual 270	java/net/HttpURLConnection:disconnect	()V
    //   669: aload 8
    //   671: athrow
    //   672: aload 33
    //   674: ldc_w 299
    //   677: invokevirtual 282	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   680: istore 36
    //   682: aconst_null
    //   683: astore 6
    //   685: aconst_null
    //   686: astore 5
    //   688: aconst_null
    //   689: astore 4
    //   691: iload 36
    //   693: ifeq +252 -> 945
    //   696: ldc_w 301
    //   699: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   702: aload 16
    //   704: ldc_w 297
    //   707: putfield 288	com/tencent/feedback/b/a$a:a	Ljava/lang/String;
    //   710: aload 16
    //   712: bipush 80
    //   714: putfield 291	com/tencent/feedback/b/a$a:b	I
    //   717: aconst_null
    //   718: astore 6
    //   720: aconst_null
    //   721: astore 5
    //   723: aconst_null
    //   724: astore 4
    //   726: goto +219 -> 945
    //   729: aload 16
    //   731: getfield 288	com/tencent/feedback/b/a$a:a	Ljava/lang/String;
    //   734: astore 14
    //   736: aload 16
    //   738: getfield 291	com/tencent/feedback/b/a$a:b	I
    //   741: istore 15
    //   743: aconst_null
    //   744: astore 17
    //   746: aconst_null
    //   747: astore 6
    //   749: aconst_null
    //   750: astore 5
    //   752: aconst_null
    //   753: astore 4
    //   755: aload 14
    //   757: ifnull -598 -> 159
    //   760: aload 14
    //   762: invokevirtual 229	java/lang/String:trim	()Ljava/lang/String;
    //   765: invokevirtual 232	java/lang/String:length	()I
    //   768: istore 31
    //   770: aconst_null
    //   771: astore 17
    //   773: aconst_null
    //   774: astore 6
    //   776: aconst_null
    //   777: astore 5
    //   779: aconst_null
    //   780: astore 4
    //   782: iload 31
    //   784: ifle -625 -> 159
    //   787: new 36	java/net/InetSocketAddress
    //   790: dup
    //   791: aload 14
    //   793: iload 15
    //   795: invokespecial 39	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   798: astore 17
    //   800: new 48	java/lang/StringBuilder
    //   803: dup
    //   804: invokespecial 49	java/lang/StringBuilder:<init>	()V
    //   807: ldc_w 303
    //   810: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   813: aload_1
    //   814: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   817: ldc_w 305
    //   820: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   823: aload 14
    //   825: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   828: ldc 86
    //   830: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   833: iload 15
    //   835: invokevirtual 89	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   838: ldc_w 307
    //   841: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   844: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   847: invokestatic 68	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   850: goto -691 -> 159
    //   853: aload 7
    //   855: new 309	java/net/Proxy
    //   858: dup
    //   859: getstatic 315	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   862: aload 17
    //   864: invokespecial 318	java/net/Proxy:<init>	(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    //   867: invokevirtual 321	java/net/URL:openConnection	(Ljava/net/Proxy;)Ljava/net/URLConnection;
    //   870: checkcast 240	java/net/HttpURLConnection
    //   873: astore 18
    //   875: aload 18
    //   877: astore 4
    //   879: goto -696 -> 183
    //   882: astore 30
    //   884: aload 30
    //   886: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   889: goto -436 -> 453
    //   892: astore 29
    //   894: aload 29
    //   896: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   899: goto -436 -> 463
    //   902: astore 13
    //   904: aload 13
    //   906: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   909: goto -343 -> 566
    //   912: astore 12
    //   914: aload 12
    //   916: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   919: goto -343 -> 576
    //   922: astore 10
    //   924: aload 10
    //   926: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   929: goto -280 -> 649
    //   932: astore 9
    //   934: aload 9
    //   936: invokevirtual 74	java/io/IOException:printStackTrace	()V
    //   939: goto -280 -> 659
    //   942: aconst_null
    //   943: astore 16
    //   945: aload 16
    //   947: ifnonnull -218 -> 729
    //   950: aconst_null
    //   951: astore 17
    //   953: goto -794 -> 159
    //
    // Exception table:
    //   from	to	target	type
    //   34	443	541	java/lang/Throwable
    //   478	538	541	java/lang/Throwable
    //   589	634	541	java/lang/Throwable
    //   672	875	541	java/lang/Throwable
    //   34	443	637	finally
    //   478	538	637	finally
    //   543	556	637	finally
    //   589	634	637	finally
    //   672	875	637	finally
    //   448	453	882	java/io/IOException
    //   458	463	892	java/io/IOException
    //   561	566	902	java/io/IOException
    //   571	576	912	java/io/IOException
    //   644	649	922	java/io/IOException
    //   654	659	932	java/io/IOException
  }

  public void a(int paramInt, byte[] paramArrayOfByte)
  {
    try
    {
      b(paramInt, paramArrayOfByte);
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        ELog.error("onSpeedMonitorSource process error!");
        localThrowable.printStackTrace();
      }
    }
  }

  protected void b(int paramInt, byte[] paramArrayOfByte)
  {
    ELog.debug("OnSpeedMonitorReceivedImp.onSpeedMonitorSource() start");
    if ((paramArrayOfByte == null) || (this.a == null) || (paramInt != 9));
    while (true)
    {
      return;
      SpeedMonitorSource localSpeedMonitorSource = new SpeedMonitorSource();
      localSpeedMonitorSource.readFrom(new JceInputStream(paramArrayOfByte));
      ELog.debug(localSpeedMonitorSource.toString());
      ELog.info("deleted old test!");
      int i = f.c.a(this.a, -1L, new Date().getTime());
      ELog.info("delete num:" + i);
      ELog.info("add new speed test!");
      ArrayList localArrayList1 = localSpeedMonitorSource.a();
      ArrayList localArrayList2 = localSpeedMonitorSource.b();
      if (localArrayList1 != null)
      {
        Iterator localIterator2 = localArrayList1.iterator();
        while (localIterator2.hasNext())
        {
          IpSource localIpSource = (IpSource)localIterator2.next();
          b localb2 = new b();
          localb2.b(localIpSource.a() + ":" + localIpSource.b());
          localb2.b(new Date().getTime());
          localb2.a("IP");
          if (!f.c.a(this.a, localb2))
            ELog.error("add a new ip fail! " + localb2.c());
        }
      }
      if (localArrayList2 != null)
      {
        Iterator localIterator1 = localArrayList2.iterator();
        while (localIterator1.hasNext())
        {
          String str = (String)localIterator1.next();
          b localb1 = new b();
          localb1.b(str);
          localb1.b(new Date().getTime());
          localb1.a("PG");
          if (!f.c.a(this.a, localb1))
            ELog.error("add a new dns fail! " + localb1.c());
        }
      }
      ELog.info("add finish!");
      ELog.info("####get upStrategy in speed response!");
      synchronized (com.tencent.feedback.common.strategy.a.a(this.a).c(this.a))
      {
        if ((???.isSpeedMonitorServerOpen()) && (???.isSpeedMonitorUserOpen()))
        {
          j = 1;
          if (j != 0)
          {
            ELog.info("start to cs!");
            List localList = f.c.a(this.a, 100);
            new c(this.a, localList).run();
          }
          ELog.debug("OnSpeedMonitorReceivedImp.onSpeedMonitorSource() end");
          continue;
        }
        int j = 0;
      }
    }
  }

  static final class a
  {
    public String a = "";
    public int b = -1;
  }

  public static final class b
  {
    public long a = -1L;
    public long b = -1L;
    public long c = -1L;
    public long d = -1L;
    public long e = -1L;
    public String f = "";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.b.a
 * JD-Core Version:    0.6.2
 */