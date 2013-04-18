package com.ijinshan.battery.recommand;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.StatFs;
import java.io.File;

public final class a extends Thread
{
  protected static final int a = 30000;
  public static int d = 0;
  public static int e = 0;
  public static int f = 0;
  public static int g = 0;
  public static int h = 0;
  private static final int m = 1;
  private static final int n = 2;
  private static final int o = 3;
  public String b = null;
  public Context c = null;
  public int i = f;
  public boolean j = false;
  private Handler k = null;
  private boolean l = false;

  public a(Handler paramHandler, Context paramContext)
  {
    this.c = paramContext;
    this.k = paramHandler;
  }

  private void a(boolean paramBoolean)
  {
    try
    {
      this.j = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  private void b()
  {
    // Byte code:
    //   0: new 64	java/net/URL
    //   3: dup
    //   4: ldc 66
    //   6: invokespecial 69	java/net/URL:<init>	(Ljava/lang/String;)V
    //   9: invokevirtual 73	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   12: astore 16
    //   14: aload 16
    //   16: sipush 30000
    //   19: invokevirtual 79	java/net/URLConnection:setConnectTimeout	(I)V
    //   22: aload 16
    //   24: sipush 30000
    //   27: invokevirtual 82	java/net/URLConnection:setReadTimeout	(I)V
    //   30: aload 16
    //   32: invokevirtual 85	java/net/URLConnection:connect	()V
    //   35: aload 16
    //   37: instanceof 87
    //   40: ifeq +122 -> 162
    //   43: aload 16
    //   45: checkcast 87	java/net/HttpURLConnection
    //   48: invokevirtual 91	java/net/HttpURLConnection:getResponseCode	()I
    //   51: sipush 400
    //   54: if_icmplt +108 -> 162
    //   57: aload_0
    //   58: getstatic 35	com/ijinshan/battery/recommand/a:e	I
    //   61: putfield 55	com/ijinshan/battery/recommand/a:i	I
    //   64: aload_0
    //   65: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   68: ifeq +36 -> 104
    //   71: new 93	java/io/File
    //   74: dup
    //   75: new 95	java/lang/StringBuilder
    //   78: dup
    //   79: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   82: aload_0
    //   83: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   86: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: ldc 102
    //   91: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   100: invokevirtual 111	java/io/File:delete	()Z
    //   103: pop
    //   104: return
    //   105: astore 17
    //   107: aload_0
    //   108: getstatic 35	com/ijinshan/battery/recommand/a:e	I
    //   111: putfield 55	com/ijinshan/battery/recommand/a:i	I
    //   114: aload_0
    //   115: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   118: ifeq -14 -> 104
    //   121: new 93	java/io/File
    //   124: dup
    //   125: new 95	java/lang/StringBuilder
    //   128: dup
    //   129: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   132: aload_0
    //   133: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   136: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: ldc 102
    //   141: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   150: invokevirtual 111	java/io/File:delete	()Z
    //   153: pop
    //   154: goto -50 -> 104
    //   157: astore 18
    //   159: goto -55 -> 104
    //   162: aload 16
    //   164: invokevirtual 114	java/net/URLConnection:getContentLength	()I
    //   167: istore 20
    //   169: invokestatic 116	com/ijinshan/battery/recommand/a:d	()Z
    //   172: ifne +72 -> 244
    //   175: lconst_0
    //   176: lstore 22
    //   178: lload 22
    //   180: iload 20
    //   182: iconst_2
    //   183: imul
    //   184: i2l
    //   185: lcmp
    //   186: ifge +88 -> 274
    //   189: aload_0
    //   190: getstatic 41	com/ijinshan/battery/recommand/a:h	I
    //   193: putfield 55	com/ijinshan/battery/recommand/a:i	I
    //   196: aload_0
    //   197: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   200: ifeq -96 -> 104
    //   203: new 93	java/io/File
    //   206: dup
    //   207: new 95	java/lang/StringBuilder
    //   210: dup
    //   211: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   214: aload_0
    //   215: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   218: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   221: ldc 102
    //   223: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   229: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   232: invokevirtual 111	java/io/File:delete	()Z
    //   235: pop
    //   236: goto -132 -> 104
    //   239: astore 51
    //   241: goto -137 -> 104
    //   244: new 118	android/os/StatFs
    //   247: dup
    //   248: invokestatic 120	com/ijinshan/battery/recommand/a:f	()Ljava/lang/String;
    //   251: invokespecial 121	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   254: astore 21
    //   256: aload 21
    //   258: invokevirtual 124	android/os/StatFs:getBlockSize	()I
    //   261: i2l
    //   262: aload 21
    //   264: invokevirtual 127	android/os/StatFs:getAvailableBlocks	()I
    //   267: i2l
    //   268: lmul
    //   269: lstore 22
    //   271: goto -93 -> 178
    //   274: aload_0
    //   275: new 95	java/lang/StringBuilder
    //   278: dup
    //   279: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   282: invokestatic 120	com/ijinshan/battery/recommand/a:f	()Ljava/lang/String;
    //   285: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: getstatic 131	java/io/File:separatorChar	C
    //   291: invokevirtual 134	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   294: ldc 136
    //   296: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   299: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   302: putfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   305: new 93	java/io/File
    //   308: dup
    //   309: aload_0
    //   310: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   313: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   316: invokevirtual 139	java/io/File:exists	()Z
    //   319: ifne +18 -> 337
    //   322: new 93	java/io/File
    //   325: dup
    //   326: aload_0
    //   327: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   330: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   333: invokevirtual 142	java/io/File:mkdirs	()Z
    //   336: pop
    //   337: aload_0
    //   338: new 95	java/lang/StringBuilder
    //   341: dup
    //   342: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   345: aload_0
    //   346: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   349: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   352: getstatic 131	java/io/File:separatorChar	C
    //   355: invokevirtual 134	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   358: ldc 144
    //   360: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   363: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   366: putfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   369: aload_0
    //   370: getfield 47	com/ijinshan/battery/recommand/a:k	Landroid/os/Handler;
    //   373: invokevirtual 150	android/os/Handler:obtainMessage	()Landroid/os/Message;
    //   376: astore 24
    //   378: aload 24
    //   380: iconst_1
    //   381: putfield 155	android/os/Message:what	I
    //   384: aload 24
    //   386: iload 20
    //   388: putfield 158	android/os/Message:arg1	I
    //   391: aload_0
    //   392: getfield 47	com/ijinshan/battery/recommand/a:k	Landroid/os/Handler;
    //   395: aload 24
    //   397: invokevirtual 162	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   400: pop
    //   401: aload 16
    //   403: invokevirtual 166	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   406: astore 26
    //   408: aload 26
    //   410: astore_3
    //   411: sipush 8192
    //   414: newarray byte
    //   416: astore 28
    //   418: new 93	java/io/File
    //   421: dup
    //   422: new 95	java/lang/StringBuilder
    //   425: dup
    //   426: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   429: aload_0
    //   430: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   433: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   436: ldc 102
    //   438: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   441: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   444: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   447: astore 29
    //   449: new 168	java/io/FileOutputStream
    //   452: dup
    //   453: aload 29
    //   455: invokespecial 171	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   458: astore 30
    //   460: iconst_0
    //   461: istore 31
    //   463: aload_0
    //   464: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   467: istore 33
    //   469: iload 33
    //   471: ifeq +64 -> 535
    //   474: aload_3
    //   475: ifnull +7 -> 482
    //   478: aload_3
    //   479: invokevirtual 176	java/io/InputStream:close	()V
    //   482: aload 30
    //   484: invokevirtual 177	java/io/FileOutputStream:close	()V
    //   487: aload_0
    //   488: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   491: ifeq -387 -> 104
    //   494: new 93	java/io/File
    //   497: dup
    //   498: new 95	java/lang/StringBuilder
    //   501: dup
    //   502: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   505: aload_0
    //   506: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   509: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   512: ldc 102
    //   514: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   517: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   520: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   523: invokevirtual 111	java/io/File:delete	()Z
    //   526: pop
    //   527: goto -423 -> 104
    //   530: astore 47
    //   532: goto -428 -> 104
    //   535: aload_3
    //   536: aload 28
    //   538: invokevirtual 181	java/io/InputStream:read	([B)I
    //   541: istore 34
    //   543: iload 34
    //   545: ifle +131 -> 676
    //   548: aload 30
    //   550: aload 28
    //   552: iconst_0
    //   553: iload 34
    //   555: invokevirtual 185	java/io/FileOutputStream:write	([BII)V
    //   558: iload 31
    //   560: iload 34
    //   562: iadd
    //   563: istore 31
    //   565: aload_0
    //   566: getfield 47	com/ijinshan/battery/recommand/a:k	Landroid/os/Handler;
    //   569: invokevirtual 150	android/os/Handler:obtainMessage	()Landroid/os/Message;
    //   572: astore 44
    //   574: aload 44
    //   576: iconst_2
    //   577: putfield 155	android/os/Message:what	I
    //   580: aload 44
    //   582: iload 31
    //   584: putfield 158	android/os/Message:arg1	I
    //   587: aload_0
    //   588: getfield 47	com/ijinshan/battery/recommand/a:k	Landroid/os/Handler;
    //   591: aload 44
    //   593: invokevirtual 162	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   596: pop
    //   597: goto -134 -> 463
    //   600: astore 32
    //   602: aload 30
    //   604: astore_2
    //   605: aload_0
    //   606: getstatic 39	com/ijinshan/battery/recommand/a:g	I
    //   609: putfield 55	com/ijinshan/battery/recommand/a:i	I
    //   612: aload_3
    //   613: ifnull +7 -> 620
    //   616: aload_3
    //   617: invokevirtual 176	java/io/InputStream:close	()V
    //   620: aload_2
    //   621: ifnull +7 -> 628
    //   624: aload_2
    //   625: invokevirtual 177	java/io/FileOutputStream:close	()V
    //   628: aload_0
    //   629: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   632: ifeq -528 -> 104
    //   635: new 93	java/io/File
    //   638: dup
    //   639: new 95	java/lang/StringBuilder
    //   642: dup
    //   643: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   646: aload_0
    //   647: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   650: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   653: ldc 102
    //   655: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   658: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   661: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   664: invokevirtual 111	java/io/File:delete	()Z
    //   667: pop
    //   668: goto -564 -> 104
    //   671: astore 12
    //   673: goto -569 -> 104
    //   676: aload 29
    //   678: new 93	java/io/File
    //   681: dup
    //   682: aload_0
    //   683: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   686: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   689: invokevirtual 189	java/io/File:renameTo	(Ljava/io/File;)Z
    //   692: pop
    //   693: aload_0
    //   694: getstatic 37	com/ijinshan/battery/recommand/a:f	I
    //   697: putfield 55	com/ijinshan/battery/recommand/a:i	I
    //   700: iload 20
    //   702: ifeq +78 -> 780
    //   705: iload 20
    //   707: iload 31
    //   709: if_icmpeq +71 -> 780
    //   712: aload_0
    //   713: getstatic 35	com/ijinshan/battery/recommand/a:e	I
    //   716: putfield 55	com/ijinshan/battery/recommand/a:i	I
    //   719: aload_3
    //   720: ifnull +7 -> 727
    //   723: aload_3
    //   724: invokevirtual 176	java/io/InputStream:close	()V
    //   727: aload 30
    //   729: invokevirtual 177	java/io/FileOutputStream:close	()V
    //   732: aload_0
    //   733: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   736: ifeq -632 -> 104
    //   739: new 93	java/io/File
    //   742: dup
    //   743: new 95	java/lang/StringBuilder
    //   746: dup
    //   747: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   750: aload_0
    //   751: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   754: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   757: ldc 102
    //   759: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   762: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   765: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   768: invokevirtual 111	java/io/File:delete	()Z
    //   771: pop
    //   772: goto -668 -> 104
    //   775: astore 41
    //   777: goto -673 -> 104
    //   780: aload_3
    //   781: ifnull +7 -> 788
    //   784: aload_3
    //   785: invokevirtual 176	java/io/InputStream:close	()V
    //   788: aload 30
    //   790: invokevirtual 177	java/io/FileOutputStream:close	()V
    //   793: aload_0
    //   794: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   797: ifeq -693 -> 104
    //   800: new 93	java/io/File
    //   803: dup
    //   804: new 95	java/lang/StringBuilder
    //   807: dup
    //   808: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   811: aload_0
    //   812: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   815: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   818: ldc 102
    //   820: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   823: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   826: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   829: invokevirtual 111	java/io/File:delete	()Z
    //   832: pop
    //   833: goto -729 -> 104
    //   836: astore 37
    //   838: goto -734 -> 104
    //   841: astore 7
    //   843: aconst_null
    //   844: astore 6
    //   846: aconst_null
    //   847: astore 5
    //   849: aload 5
    //   851: ifnull +8 -> 859
    //   854: aload 5
    //   856: invokevirtual 176	java/io/InputStream:close	()V
    //   859: aload 6
    //   861: ifnull +8 -> 869
    //   864: aload 6
    //   866: invokevirtual 177	java/io/FileOutputStream:close	()V
    //   869: aload_0
    //   870: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   873: ifeq +36 -> 909
    //   876: new 93	java/io/File
    //   879: dup
    //   880: new 95	java/lang/StringBuilder
    //   883: dup
    //   884: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   887: aload_0
    //   888: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   891: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   894: ldc 102
    //   896: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   899: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   902: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   905: invokevirtual 111	java/io/File:delete	()Z
    //   908: pop
    //   909: aload 7
    //   911: athrow
    //   912: astore 49
    //   914: goto -432 -> 482
    //   917: astore 46
    //   919: goto -432 -> 487
    //   922: astore 43
    //   924: goto -197 -> 727
    //   927: astore 40
    //   929: goto -197 -> 732
    //   932: astore 39
    //   934: goto -146 -> 788
    //   937: astore 36
    //   939: goto -146 -> 793
    //   942: astore 15
    //   944: goto -324 -> 620
    //   947: astore 14
    //   949: goto -321 -> 628
    //   952: astore 11
    //   954: goto -95 -> 859
    //   957: astore 10
    //   959: goto -90 -> 869
    //   962: astore 8
    //   964: goto -55 -> 909
    //   967: astore 7
    //   969: aload_3
    //   970: astore 5
    //   972: aconst_null
    //   973: astore 6
    //   975: goto -126 -> 849
    //   978: astore 7
    //   980: aload_3
    //   981: astore 5
    //   983: aload 30
    //   985: astore 6
    //   987: goto -138 -> 849
    //   990: astore 4
    //   992: aload_3
    //   993: astore 5
    //   995: aload_2
    //   996: astore 6
    //   998: aload 4
    //   1000: astore 7
    //   1002: goto -153 -> 849
    //   1005: astore_1
    //   1006: aconst_null
    //   1007: astore_2
    //   1008: aconst_null
    //   1009: astore_3
    //   1010: goto -405 -> 605
    //   1013: astore 27
    //   1015: aconst_null
    //   1016: astore_2
    //   1017: goto -412 -> 605
    //   1020: astore 53
    //   1022: goto -918 -> 104
    //
    // Exception table:
    //   from	to	target	type
    //   30	35	105	java/io/IOException
    //   114	154	157	java/lang/Exception
    //   196	236	239	java/lang/Exception
    //   487	527	530	java/lang/Exception
    //   463	469	600	java/lang/Exception
    //   535	597	600	java/lang/Exception
    //   676	719	600	java/lang/Exception
    //   628	668	671	java/lang/Exception
    //   732	772	775	java/lang/Exception
    //   793	833	836	java/lang/Exception
    //   0	30	841	finally
    //   30	35	841	finally
    //   35	64	841	finally
    //   107	114	841	finally
    //   162	196	841	finally
    //   244	408	841	finally
    //   478	482	912	java/io/IOException
    //   482	487	917	java/io/IOException
    //   723	727	922	java/io/IOException
    //   727	732	927	java/io/IOException
    //   784	788	932	java/io/IOException
    //   788	793	937	java/io/IOException
    //   616	620	942	java/io/IOException
    //   624	628	947	java/io/IOException
    //   854	859	952	java/io/IOException
    //   864	869	957	java/io/IOException
    //   869	909	962	java/lang/Exception
    //   411	460	967	finally
    //   463	469	978	finally
    //   535	597	978	finally
    //   676	719	978	finally
    //   605	612	990	finally
    //   0	30	1005	java/lang/Exception
    //   30	35	1005	java/lang/Exception
    //   35	64	1005	java/lang/Exception
    //   107	114	1005	java/lang/Exception
    //   162	196	1005	java/lang/Exception
    //   244	408	1005	java/lang/Exception
    //   411	460	1013	java/lang/Exception
    //   64	104	1020	java/lang/Exception
  }

  private boolean c()
  {
    try
    {
      boolean bool = this.j;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static boolean d()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  private static long e()
  {
    if (!d());
    StatFs localStatFs;
    for (long l1 = 0L; ; l1 = localStatFs.getBlockSize() * localStatFs.getAvailableBlocks())
    {
      return l1;
      localStatFs = new StatFs(f());
    }
  }

  private static String f()
  {
    if (!d());
    for (String str = null; ; str = Environment.getExternalStorageDirectory().getPath())
      return str;
  }

  public final void a()
  {
    this.l = true;
    this.i = d;
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: invokespecial 213	com/ijinshan/battery/recommand/a:a	(Z)V
    //   5: new 64	java/net/URL
    //   8: dup
    //   9: ldc 66
    //   11: invokespecial 69	java/net/URL:<init>	(Ljava/lang/String;)V
    //   14: invokevirtual 73	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   17: astore 18
    //   19: aload 18
    //   21: sipush 30000
    //   24: invokevirtual 79	java/net/URLConnection:setConnectTimeout	(I)V
    //   27: aload 18
    //   29: sipush 30000
    //   32: invokevirtual 82	java/net/URLConnection:setReadTimeout	(I)V
    //   35: aload 18
    //   37: invokevirtual 85	java/net/URLConnection:connect	()V
    //   40: aload 18
    //   42: instanceof 87
    //   45: ifeq +184 -> 229
    //   48: aload 18
    //   50: checkcast 87	java/net/HttpURLConnection
    //   53: invokevirtual 91	java/net/HttpURLConnection:getResponseCode	()I
    //   56: sipush 400
    //   59: if_icmplt +170 -> 229
    //   62: aload_0
    //   63: getstatic 35	com/ijinshan/battery/recommand/a:e	I
    //   66: putfield 55	com/ijinshan/battery/recommand/a:i	I
    //   69: aload_0
    //   70: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   73: ifeq +36 -> 109
    //   76: new 93	java/io/File
    //   79: dup
    //   80: new 95	java/lang/StringBuilder
    //   83: dup
    //   84: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   87: aload_0
    //   88: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   91: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: ldc 102
    //   96: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   105: invokevirtual 111	java/io/File:delete	()Z
    //   108: pop
    //   109: aload_0
    //   110: iconst_0
    //   111: invokespecial 213	com/ijinshan/battery/recommand/a:a	(Z)V
    //   114: aload_0
    //   115: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   118: ifeq +10 -> 128
    //   121: aload_0
    //   122: getstatic 33	com/ijinshan/battery/recommand/a:d	I
    //   125: putfield 55	com/ijinshan/battery/recommand/a:i	I
    //   128: aload_0
    //   129: getfield 47	com/ijinshan/battery/recommand/a:k	Landroid/os/Handler;
    //   132: invokevirtual 150	android/os/Handler:obtainMessage	()Landroid/os/Message;
    //   135: astore 13
    //   137: aload 13
    //   139: iconst_3
    //   140: putfield 155	android/os/Message:what	I
    //   143: aload 13
    //   145: aload_0
    //   146: getfield 55	com/ijinshan/battery/recommand/a:i	I
    //   149: putfield 158	android/os/Message:arg1	I
    //   152: aload 13
    //   154: aload_0
    //   155: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   158: putfield 217	android/os/Message:obj	Ljava/lang/Object;
    //   161: aload_0
    //   162: getfield 47	com/ijinshan/battery/recommand/a:k	Landroid/os/Handler;
    //   165: aload 13
    //   167: invokevirtual 162	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   170: pop
    //   171: return
    //   172: astore 19
    //   174: aload_0
    //   175: getstatic 35	com/ijinshan/battery/recommand/a:e	I
    //   178: putfield 55	com/ijinshan/battery/recommand/a:i	I
    //   181: aload_0
    //   182: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   185: ifeq -76 -> 109
    //   188: new 93	java/io/File
    //   191: dup
    //   192: new 95	java/lang/StringBuilder
    //   195: dup
    //   196: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   199: aload_0
    //   200: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   203: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: ldc 102
    //   208: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   214: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   217: invokevirtual 111	java/io/File:delete	()Z
    //   220: pop
    //   221: goto -112 -> 109
    //   224: astore 20
    //   226: goto -117 -> 109
    //   229: aload 18
    //   231: invokevirtual 114	java/net/URLConnection:getContentLength	()I
    //   234: istore 22
    //   236: invokestatic 116	com/ijinshan/battery/recommand/a:d	()Z
    //   239: ifne +72 -> 311
    //   242: lconst_0
    //   243: lstore 24
    //   245: lload 24
    //   247: iload 22
    //   249: iconst_2
    //   250: imul
    //   251: i2l
    //   252: lcmp
    //   253: ifge +88 -> 341
    //   256: aload_0
    //   257: getstatic 41	com/ijinshan/battery/recommand/a:h	I
    //   260: putfield 55	com/ijinshan/battery/recommand/a:i	I
    //   263: aload_0
    //   264: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   267: ifeq -158 -> 109
    //   270: new 93	java/io/File
    //   273: dup
    //   274: new 95	java/lang/StringBuilder
    //   277: dup
    //   278: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   281: aload_0
    //   282: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   285: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: ldc 102
    //   290: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   293: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   296: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   299: invokevirtual 111	java/io/File:delete	()Z
    //   302: pop
    //   303: goto -194 -> 109
    //   306: astore 53
    //   308: goto -199 -> 109
    //   311: new 118	android/os/StatFs
    //   314: dup
    //   315: invokestatic 120	com/ijinshan/battery/recommand/a:f	()Ljava/lang/String;
    //   318: invokespecial 121	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   321: astore 23
    //   323: aload 23
    //   325: invokevirtual 124	android/os/StatFs:getBlockSize	()I
    //   328: i2l
    //   329: aload 23
    //   331: invokevirtual 127	android/os/StatFs:getAvailableBlocks	()I
    //   334: i2l
    //   335: lmul
    //   336: lstore 24
    //   338: goto -93 -> 245
    //   341: aload_0
    //   342: new 95	java/lang/StringBuilder
    //   345: dup
    //   346: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   349: invokestatic 120	com/ijinshan/battery/recommand/a:f	()Ljava/lang/String;
    //   352: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   355: getstatic 131	java/io/File:separatorChar	C
    //   358: invokevirtual 134	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   361: ldc 136
    //   363: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   369: putfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   372: new 93	java/io/File
    //   375: dup
    //   376: aload_0
    //   377: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   380: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   383: invokevirtual 139	java/io/File:exists	()Z
    //   386: ifne +18 -> 404
    //   389: new 93	java/io/File
    //   392: dup
    //   393: aload_0
    //   394: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   397: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   400: invokevirtual 142	java/io/File:mkdirs	()Z
    //   403: pop
    //   404: aload_0
    //   405: new 95	java/lang/StringBuilder
    //   408: dup
    //   409: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   412: aload_0
    //   413: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   416: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   419: getstatic 131	java/io/File:separatorChar	C
    //   422: invokevirtual 134	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   425: ldc 144
    //   427: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   430: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   433: putfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   436: aload_0
    //   437: getfield 47	com/ijinshan/battery/recommand/a:k	Landroid/os/Handler;
    //   440: invokevirtual 150	android/os/Handler:obtainMessage	()Landroid/os/Message;
    //   443: astore 26
    //   445: aload 26
    //   447: iconst_1
    //   448: putfield 155	android/os/Message:what	I
    //   451: aload 26
    //   453: iload 22
    //   455: putfield 158	android/os/Message:arg1	I
    //   458: aload_0
    //   459: getfield 47	com/ijinshan/battery/recommand/a:k	Landroid/os/Handler;
    //   462: aload 26
    //   464: invokevirtual 162	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   467: pop
    //   468: aload 18
    //   470: invokevirtual 166	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   473: astore 28
    //   475: aload 28
    //   477: astore_3
    //   478: sipush 8192
    //   481: newarray byte
    //   483: astore 30
    //   485: new 93	java/io/File
    //   488: dup
    //   489: new 95	java/lang/StringBuilder
    //   492: dup
    //   493: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   496: aload_0
    //   497: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   500: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   503: ldc 102
    //   505: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   508: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   511: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   514: astore 31
    //   516: new 168	java/io/FileOutputStream
    //   519: dup
    //   520: aload 31
    //   522: invokespecial 171	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   525: astore 32
    //   527: iconst_0
    //   528: istore 33
    //   530: aload_0
    //   531: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   534: istore 35
    //   536: iload 35
    //   538: ifeq +64 -> 602
    //   541: aload_3
    //   542: ifnull +7 -> 549
    //   545: aload_3
    //   546: invokevirtual 176	java/io/InputStream:close	()V
    //   549: aload 32
    //   551: invokevirtual 177	java/io/FileOutputStream:close	()V
    //   554: aload_0
    //   555: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   558: ifeq -449 -> 109
    //   561: new 93	java/io/File
    //   564: dup
    //   565: new 95	java/lang/StringBuilder
    //   568: dup
    //   569: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   572: aload_0
    //   573: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   576: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   579: ldc 102
    //   581: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   584: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   587: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   590: invokevirtual 111	java/io/File:delete	()Z
    //   593: pop
    //   594: goto -485 -> 109
    //   597: astore 49
    //   599: goto -490 -> 109
    //   602: aload_3
    //   603: aload 30
    //   605: invokevirtual 181	java/io/InputStream:read	([B)I
    //   608: istore 36
    //   610: iload 36
    //   612: ifle +131 -> 743
    //   615: aload 32
    //   617: aload 30
    //   619: iconst_0
    //   620: iload 36
    //   622: invokevirtual 185	java/io/FileOutputStream:write	([BII)V
    //   625: iload 33
    //   627: iload 36
    //   629: iadd
    //   630: istore 33
    //   632: aload_0
    //   633: getfield 47	com/ijinshan/battery/recommand/a:k	Landroid/os/Handler;
    //   636: invokevirtual 150	android/os/Handler:obtainMessage	()Landroid/os/Message;
    //   639: astore 46
    //   641: aload 46
    //   643: iconst_2
    //   644: putfield 155	android/os/Message:what	I
    //   647: aload 46
    //   649: iload 33
    //   651: putfield 158	android/os/Message:arg1	I
    //   654: aload_0
    //   655: getfield 47	com/ijinshan/battery/recommand/a:k	Landroid/os/Handler;
    //   658: aload 46
    //   660: invokevirtual 162	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   663: pop
    //   664: goto -134 -> 530
    //   667: astore 34
    //   669: aload 32
    //   671: astore_2
    //   672: aload_0
    //   673: getstatic 39	com/ijinshan/battery/recommand/a:g	I
    //   676: putfield 55	com/ijinshan/battery/recommand/a:i	I
    //   679: aload_3
    //   680: ifnull +7 -> 687
    //   683: aload_3
    //   684: invokevirtual 176	java/io/InputStream:close	()V
    //   687: aload_2
    //   688: ifnull +7 -> 695
    //   691: aload_2
    //   692: invokevirtual 177	java/io/FileOutputStream:close	()V
    //   695: aload_0
    //   696: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   699: ifeq -590 -> 109
    //   702: new 93	java/io/File
    //   705: dup
    //   706: new 95	java/lang/StringBuilder
    //   709: dup
    //   710: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   713: aload_0
    //   714: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   717: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   720: ldc 102
    //   722: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   725: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   728: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   731: invokevirtual 111	java/io/File:delete	()Z
    //   734: pop
    //   735: goto -626 -> 109
    //   738: astore 12
    //   740: goto -631 -> 109
    //   743: aload 31
    //   745: new 93	java/io/File
    //   748: dup
    //   749: aload_0
    //   750: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   753: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   756: invokevirtual 189	java/io/File:renameTo	(Ljava/io/File;)Z
    //   759: pop
    //   760: aload_0
    //   761: getstatic 37	com/ijinshan/battery/recommand/a:f	I
    //   764: putfield 55	com/ijinshan/battery/recommand/a:i	I
    //   767: iload 22
    //   769: ifeq +78 -> 847
    //   772: iload 22
    //   774: iload 33
    //   776: if_icmpeq +71 -> 847
    //   779: aload_0
    //   780: getstatic 35	com/ijinshan/battery/recommand/a:e	I
    //   783: putfield 55	com/ijinshan/battery/recommand/a:i	I
    //   786: aload_3
    //   787: ifnull +7 -> 794
    //   790: aload_3
    //   791: invokevirtual 176	java/io/InputStream:close	()V
    //   794: aload 32
    //   796: invokevirtual 177	java/io/FileOutputStream:close	()V
    //   799: aload_0
    //   800: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   803: ifeq -694 -> 109
    //   806: new 93	java/io/File
    //   809: dup
    //   810: new 95	java/lang/StringBuilder
    //   813: dup
    //   814: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   817: aload_0
    //   818: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   821: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   824: ldc 102
    //   826: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   829: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   832: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   835: invokevirtual 111	java/io/File:delete	()Z
    //   838: pop
    //   839: goto -730 -> 109
    //   842: astore 43
    //   844: goto -735 -> 109
    //   847: aload_3
    //   848: ifnull +7 -> 855
    //   851: aload_3
    //   852: invokevirtual 176	java/io/InputStream:close	()V
    //   855: aload 32
    //   857: invokevirtual 177	java/io/FileOutputStream:close	()V
    //   860: aload_0
    //   861: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   864: ifeq -755 -> 109
    //   867: new 93	java/io/File
    //   870: dup
    //   871: new 95	java/lang/StringBuilder
    //   874: dup
    //   875: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   878: aload_0
    //   879: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   882: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   885: ldc 102
    //   887: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   890: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   893: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   896: invokevirtual 111	java/io/File:delete	()Z
    //   899: pop
    //   900: goto -791 -> 109
    //   903: astore 39
    //   905: goto -796 -> 109
    //   908: astore 7
    //   910: aconst_null
    //   911: astore 6
    //   913: aconst_null
    //   914: astore 5
    //   916: aload 5
    //   918: ifnull +8 -> 926
    //   921: aload 5
    //   923: invokevirtual 176	java/io/InputStream:close	()V
    //   926: aload 6
    //   928: ifnull +8 -> 936
    //   931: aload 6
    //   933: invokevirtual 177	java/io/FileOutputStream:close	()V
    //   936: aload_0
    //   937: getfield 49	com/ijinshan/battery/recommand/a:l	Z
    //   940: ifeq +36 -> 976
    //   943: new 93	java/io/File
    //   946: dup
    //   947: new 95	java/lang/StringBuilder
    //   950: dup
    //   951: invokespecial 96	java/lang/StringBuilder:<init>	()V
    //   954: aload_0
    //   955: getfield 51	com/ijinshan/battery/recommand/a:b	Ljava/lang/String;
    //   958: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   961: ldc 102
    //   963: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   966: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   969: invokespecial 107	java/io/File:<init>	(Ljava/lang/String;)V
    //   972: invokevirtual 111	java/io/File:delete	()Z
    //   975: pop
    //   976: aload 7
    //   978: athrow
    //   979: astore 51
    //   981: goto -432 -> 549
    //   984: astore 48
    //   986: goto -432 -> 554
    //   989: astore 45
    //   991: goto -197 -> 794
    //   994: astore 42
    //   996: goto -197 -> 799
    //   999: astore 41
    //   1001: goto -146 -> 855
    //   1004: astore 38
    //   1006: goto -146 -> 860
    //   1009: astore 17
    //   1011: goto -324 -> 687
    //   1014: astore 16
    //   1016: goto -321 -> 695
    //   1019: astore 11
    //   1021: goto -95 -> 926
    //   1024: astore 10
    //   1026: goto -90 -> 936
    //   1029: astore 8
    //   1031: goto -55 -> 976
    //   1034: astore 7
    //   1036: aload_3
    //   1037: astore 5
    //   1039: aconst_null
    //   1040: astore 6
    //   1042: goto -126 -> 916
    //   1045: astore 7
    //   1047: aload_3
    //   1048: astore 5
    //   1050: aload 32
    //   1052: astore 6
    //   1054: goto -138 -> 916
    //   1057: astore 4
    //   1059: aload_3
    //   1060: astore 5
    //   1062: aload_2
    //   1063: astore 6
    //   1065: aload 4
    //   1067: astore 7
    //   1069: goto -153 -> 916
    //   1072: astore_1
    //   1073: aconst_null
    //   1074: astore_2
    //   1075: aconst_null
    //   1076: astore_3
    //   1077: goto -405 -> 672
    //   1080: astore 29
    //   1082: aconst_null
    //   1083: astore_2
    //   1084: goto -412 -> 672
    //   1087: astore 55
    //   1089: goto -980 -> 109
    //
    // Exception table:
    //   from	to	target	type
    //   35	40	172	java/io/IOException
    //   181	221	224	java/lang/Exception
    //   263	303	306	java/lang/Exception
    //   554	594	597	java/lang/Exception
    //   530	536	667	java/lang/Exception
    //   602	664	667	java/lang/Exception
    //   743	786	667	java/lang/Exception
    //   695	735	738	java/lang/Exception
    //   799	839	842	java/lang/Exception
    //   860	900	903	java/lang/Exception
    //   5	35	908	finally
    //   35	40	908	finally
    //   40	69	908	finally
    //   174	181	908	finally
    //   229	263	908	finally
    //   311	475	908	finally
    //   545	549	979	java/io/IOException
    //   549	554	984	java/io/IOException
    //   790	794	989	java/io/IOException
    //   794	799	994	java/io/IOException
    //   851	855	999	java/io/IOException
    //   855	860	1004	java/io/IOException
    //   683	687	1009	java/io/IOException
    //   691	695	1014	java/io/IOException
    //   921	926	1019	java/io/IOException
    //   931	936	1024	java/io/IOException
    //   936	976	1029	java/lang/Exception
    //   478	527	1034	finally
    //   530	536	1045	finally
    //   602	664	1045	finally
    //   743	786	1045	finally
    //   672	679	1057	finally
    //   5	35	1072	java/lang/Exception
    //   35	40	1072	java/lang/Exception
    //   40	69	1072	java/lang/Exception
    //   174	181	1072	java/lang/Exception
    //   229	263	1072	java/lang/Exception
    //   311	475	1072	java/lang/Exception
    //   478	527	1080	java/lang/Exception
    //   69	109	1087	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.battery.recommand.a
 * JD-Core Version:    0.6.2
 */