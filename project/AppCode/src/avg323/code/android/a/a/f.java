package android.a.a;

import java.util.HashMap;

public class f
{
  public static final HashMap a = new HashMap();
  private static final float[] b = { 0.0039063F, 3.051758E-005F, 1.192093E-007F, 4.656613E-010F };
  private static final String[] c = { "px", "dip", "sp", "pt", "in", "mm", "", "" };
  private static final String[] d = { "%", "%p", "", "", "", "", "", "" };

  static
  {
    a.put("activity", Integer.valueOf(0));
    a.put("service", Integer.valueOf(1));
    a.put("receiver", Integer.valueOf(2));
    a.put("provider", Integer.valueOf(3));
    a.put("uses-permission", Integer.valueOf(4));
    a.put("manifest", Integer.valueOf(5));
    a.put("intent-filter", Integer.valueOf(6));
    a.put("action", Integer.valueOf(7));
    a.put("data", Integer.valueOf(8));
    a.put("meta-data", Integer.valueOf(9));
  }

  public static float a(int paramInt)
  {
    return (paramInt & 0xFFFFFF00) * b[(0x3 & paramInt >> 4)];
  }

  // ERROR //
  public static com.antivirus.core.scanners.a.a a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 88	android/a/a/a
    //   5: dup
    //   6: invokespecial 89	android/a/a/a:<init>	()V
    //   9: astore_2
    //   10: aload_2
    //   11: aload_0
    //   12: invokevirtual 92	android/a/a/a:a	(Ljava/io/InputStream;)V
    //   15: new 94	com/antivirus/core/scanners/a/a
    //   18: dup
    //   19: invokespecial 95	com/antivirus/core/scanners/a/a:<init>	()V
    //   22: astore_3
    //   23: ldc 72
    //   25: astore 4
    //   27: aconst_null
    //   28: astore 5
    //   30: aload_2
    //   31: invokevirtual 99	android/a/a/a:next	()I
    //   34: istore 8
    //   36: iload 8
    //   38: iconst_1
    //   39: if_icmpne +1218 -> 1257
    //   42: iconst_0
    //   43: istore 68
    //   45: iload 68
    //   47: aload_3
    //   48: getfield 102	com/antivirus/core/scanners/a/a:a	Ljava/util/ArrayList;
    //   51: invokevirtual 107	java/util/ArrayList:size	()I
    //   54: if_icmpge +1173 -> 1227
    //   57: aload_3
    //   58: getfield 102	com/antivirus/core/scanners/a/a:a	Ljava/util/ArrayList;
    //   61: iload 68
    //   63: invokevirtual 111	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   66: checkcast 113	java/lang/CharSequence
    //   69: invokestatic 119	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   72: ifne +1179 -> 1251
    //   75: aload_3
    //   76: getfield 102	com/antivirus/core/scanners/a/a:a	Ljava/util/ArrayList;
    //   79: iload 68
    //   81: invokevirtual 111	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   84: checkcast 58	java/lang/String
    //   87: ldc 121
    //   89: invokevirtual 125	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   92: ifeq +1159 -> 1251
    //   95: aload_3
    //   96: getfield 102	com/antivirus/core/scanners/a/a:a	Ljava/util/ArrayList;
    //   99: iload 68
    //   101: new 127	java/lang/StringBuilder
    //   104: dup
    //   105: invokespecial 128	java/lang/StringBuilder:<init>	()V
    //   108: aload 4
    //   110: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: aload_3
    //   114: getfield 102	com/antivirus/core/scanners/a/a:a	Ljava/util/ArrayList;
    //   117: iload 68
    //   119: invokevirtual 111	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   122: checkcast 58	java/lang/String
    //   125: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokevirtual 140	java/util/ArrayList:set	(ILjava/lang/Object;)Ljava/lang/Object;
    //   134: pop
    //   135: goto +1116 -> 1251
    //   138: getstatic 20	android/a/a/f:a	Ljava/util/HashMap;
    //   141: aload_2
    //   142: invokevirtual 143	android/a/a/a:getName	()Ljava/lang/String;
    //   145: invokevirtual 146	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   148: checkcast 24	java/lang/Integer
    //   151: astore 13
    //   153: aload 13
    //   155: ifnull +1133 -> 1288
    //   158: aload 13
    //   160: invokevirtual 149	java/lang/Integer:intValue	()I
    //   163: tableswitch	default:+1155 -> 1318, 0:+1166->1329, 1:+1189->1352, 2:+1216->1379, 3:+1243->1406, 4:+1266->1429, 5:+398->561, 6:+533->696, 7:+544->707, 8:+1306->1469, 9:+904->1067
    //   217: lstore_1
    //   218: aload_2
    //   219: invokevirtual 152	android/a/a/a:getAttributeCount	()I
    //   222: if_icmpge +1113 -> 1335
    //   225: aload_2
    //   226: iload 64
    //   228: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   231: getstatic 161	android/a/a/c:c	[I
    //   234: iconst_3
    //   235: iaload
    //   236: if_icmpne +1110 -> 1346
    //   239: aload_2
    //   240: iload 64
    //   242: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   245: astore 65
    //   247: aload 65
    //   249: ifnull +1086 -> 1335
    //   252: aload_3
    //   253: getfield 102	com/antivirus/core/scanners/a/a:a	Ljava/util/ArrayList;
    //   256: aload 65
    //   258: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   261: pop
    //   262: aload_3
    //   263: getfield 170	com/antivirus/core/scanners/a/a:b	Ljava/util/ArrayList;
    //   266: aload 65
    //   268: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   271: pop
    //   272: aload_3
    //   273: iconst_1
    //   274: aload_3
    //   275: getfield 174	com/antivirus/core/scanners/a/a:k	I
    //   278: iadd
    //   279: putfield 174	com/antivirus/core/scanners/a/a:k	I
    //   282: goto +1053 -> 1335
    //   285: iload 57
    //   287: aload_2
    //   288: invokevirtual 152	android/a/a/a:getAttributeCount	()I
    //   291: if_icmpge +953 -> 1244
    //   294: aload_2
    //   295: iload 57
    //   297: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   300: getstatic 177	android/a/a/c:v	[I
    //   303: iconst_2
    //   304: iaload
    //   305: if_icmpne +1068 -> 1373
    //   308: aload_2
    //   309: iload 57
    //   311: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   314: astore 60
    //   316: aload 60
    //   318: ifnull +926 -> 1244
    //   321: aload_3
    //   322: getfield 102	com/antivirus/core/scanners/a/a:a	Ljava/util/ArrayList;
    //   325: aload 60
    //   327: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   330: pop
    //   331: new 179	com/antivirus/core/scanners/a/a/a
    //   334: dup
    //   335: invokespecial 180	com/antivirus/core/scanners/a/a/a:<init>	()V
    //   338: astore 62
    //   340: aload 62
    //   342: aload 60
    //   344: putfield 183	com/antivirus/core/scanners/a/a/a:a	Ljava/lang/String;
    //   347: aload_3
    //   348: getfield 185	com/antivirus/core/scanners/a/a:c	Ljava/util/ArrayList;
    //   351: aload 62
    //   353: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   356: pop
    //   357: aload_3
    //   358: iconst_1
    //   359: aload_3
    //   360: getfield 188	com/antivirus/core/scanners/a/a:l	I
    //   363: iadd
    //   364: putfield 188	com/antivirus/core/scanners/a/a:l	I
    //   367: aload 62
    //   369: astore 58
    //   371: goto +987 -> 1358
    //   374: iload 50
    //   376: aload_2
    //   377: invokevirtual 152	android/a/a/a:getAttributeCount	()I
    //   380: if_icmpge +857 -> 1237
    //   383: aload_2
    //   384: iload 50
    //   386: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   389: getstatic 191	android/a/a/c:u	[I
    //   392: iconst_2
    //   393: iaload
    //   394: if_icmpne +1006 -> 1400
    //   397: aload_2
    //   398: iload 50
    //   400: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   403: astore 53
    //   405: aload 53
    //   407: ifnull +830 -> 1237
    //   410: aload_3
    //   411: getfield 102	com/antivirus/core/scanners/a/a:a	Ljava/util/ArrayList;
    //   414: aload 53
    //   416: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   419: pop
    //   420: new 179	com/antivirus/core/scanners/a/a/a
    //   423: dup
    //   424: invokespecial 180	com/antivirus/core/scanners/a/a/a:<init>	()V
    //   427: astore 55
    //   429: aload 55
    //   431: aload 53
    //   433: putfield 183	com/antivirus/core/scanners/a/a/a:a	Ljava/lang/String;
    //   436: aload_3
    //   437: getfield 193	com/antivirus/core/scanners/a/a:d	Ljava/util/ArrayList;
    //   440: aload 55
    //   442: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   445: pop
    //   446: aload_3
    //   447: iconst_1
    //   448: aload_3
    //   449: getfield 196	com/antivirus/core/scanners/a/a:m	I
    //   452: iadd
    //   453: putfield 196	com/antivirus/core/scanners/a/a:m	I
    //   456: aload 55
    //   458: astore 51
    //   460: goto +925 -> 1385
    //   463: iload 47
    //   465: aload_2
    //   466: invokevirtual 152	android/a/a/a:getAttributeCount	()I
    //   469: if_icmpge +943 -> 1412
    //   472: aload_2
    //   473: iload 47
    //   475: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   478: getstatic 199	android/a/a/c:t	[I
    //   481: iconst_2
    //   482: iaload
    //   483: if_icmpne +940 -> 1423
    //   486: aload_2
    //   487: iload 47
    //   489: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   492: astore 48
    //   494: aload 48
    //   496: ifnull +916 -> 1412
    //   499: aload_3
    //   500: getfield 202	com/antivirus/core/scanners/a/a:h	Ljava/util/ArrayList;
    //   503: aload 48
    //   505: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   508: pop
    //   509: goto +903 -> 1412
    //   512: iload 44
    //   514: aload_2
    //   515: invokevirtual 152	android/a/a/a:getAttributeCount	()I
    //   518: if_icmpge +917 -> 1435
    //   521: aload_2
    //   522: iload 44
    //   524: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   527: getstatic 205	android/a/a/c:A	[I
    //   530: iconst_0
    //   531: iaload
    //   532: if_icmpne +914 -> 1446
    //   535: aload_2
    //   536: iload 44
    //   538: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   541: astore 45
    //   543: aload 45
    //   545: ifnull +890 -> 1435
    //   548: aload_3
    //   549: getfield 208	com/antivirus/core/scanners/a/a:g	Ljava/util/ArrayList;
    //   552: aload 45
    //   554: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   557: pop
    //   558: goto +877 -> 1435
    //   561: aload_2
    //   562: aconst_null
    //   563: ldc 210
    //   565: invokevirtual 214	android/a/a/a:getAttributeValue	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   568: astore 10
    //   570: aload_3
    //   571: getfield 102	com/antivirus/core/scanners/a/a:a	Ljava/util/ArrayList;
    //   574: aload 10
    //   576: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   579: pop
    //   580: aload_3
    //   581: getfield 217	com/antivirus/core/scanners/a/a:f	Ljava/util/ArrayList;
    //   584: aload 10
    //   586: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   589: pop
    //   590: iconst_0
    //   591: istore 40
    //   593: iload 40
    //   595: aload_2
    //   596: invokevirtual 152	android/a/a/a:getAttributeCount	()I
    //   599: if_icmpge +90 -> 689
    //   602: aload_2
    //   603: iload 40
    //   605: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   608: getstatic 219	android/a/a/c:a	[I
    //   611: iconst_1
    //   612: iaload
    //   613: if_icmpne +31 -> 644
    //   616: aload_2
    //   617: iload 40
    //   619: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   622: astore 42
    //   624: aload 42
    //   626: ifnull +12 -> 638
    //   629: aload_3
    //   630: aload 42
    //   632: invokestatic 225	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   635: putfield 229	com/antivirus/core/scanners/a/a:i	J
    //   638: iinc 40 1
    //   641: goto -48 -> 593
    //   644: aload_2
    //   645: iload 40
    //   647: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   650: getstatic 219	android/a/a/c:a	[I
    //   653: iconst_2
    //   654: iaload
    //   655: if_icmpne -17 -> 638
    //   658: aload_2
    //   659: iload 40
    //   661: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   664: astore 41
    //   666: aload 41
    //   668: ifnull -30 -> 638
    //   671: aload_3
    //   672: aload 41
    //   674: putfield 232	com/antivirus/core/scanners/a/a:j	Ljava/lang/String;
    //   677: goto -39 -> 638
    //   680: astore 7
    //   682: aload 7
    //   684: invokestatic 237	com/avg/toolkit/f/a:a	(Ljava/lang/Throwable;)V
    //   687: aload_1
    //   688: areturn
    //   689: aload 5
    //   691: astore 11
    //   693: goto +603 -> 1296
    //   696: aload 4
    //   698: astore 10
    //   700: aload 5
    //   702: astore 11
    //   704: goto +592 -> 1296
    //   707: aload 5
    //   709: ifnull +579 -> 1288
    //   712: iconst_0
    //   713: istore 35
    //   715: iload 35
    //   717: aload_2
    //   718: invokevirtual 152	android/a/a/a:getAttributeCount	()I
    //   721: if_icmpge +731 -> 1452
    //   724: aload_2
    //   725: iload 35
    //   727: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   730: getstatic 239	android/a/a/c:b	[I
    //   733: iconst_0
    //   734: iaload
    //   735: if_icmpne +728 -> 1463
    //   738: aload_2
    //   739: iload 35
    //   741: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   744: astore 36
    //   746: aload 36
    //   748: ifnull +704 -> 1452
    //   751: aload 5
    //   753: getfield 240	com/antivirus/core/scanners/a/a/a:c	Ljava/util/ArrayList;
    //   756: aload 36
    //   758: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   761: pop
    //   762: goto +690 -> 1452
    //   765: iload 20
    //   767: aload_2
    //   768: invokevirtual 152	android/a/a/a:getAttributeCount	()I
    //   771: if_icmpge +715 -> 1486
    //   774: aload_2
    //   775: iload 20
    //   777: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   780: getstatic 242	android/a/a/c:h	[I
    //   783: iconst_1
    //   784: iaload
    //   785: if_icmpne +30 -> 815
    //   788: aload_2
    //   789: iload 20
    //   791: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   794: astore 33
    //   796: aload 33
    //   798: ifnull +682 -> 1480
    //   801: aload 5
    //   803: getfield 243	com/antivirus/core/scanners/a/a/a:d	Ljava/util/ArrayList;
    //   806: aload 33
    //   808: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   811: pop
    //   812: goto +668 -> 1480
    //   815: aload_2
    //   816: iload 20
    //   818: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   821: getstatic 242	android/a/a/c:h	[I
    //   824: iconst_3
    //   825: iaload
    //   826: if_icmpne +35 -> 861
    //   829: aload_2
    //   830: iload 20
    //   832: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   835: astore 31
    //   837: aload 31
    //   839: ifnull +641 -> 1480
    //   842: aload 5
    //   844: getfield 243	com/antivirus/core/scanners/a/a/a:d	Ljava/util/ArrayList;
    //   847: aload 31
    //   849: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   852: pop
    //   853: goto +627 -> 1480
    //   856: astore 6
    //   858: aload 6
    //   860: athrow
    //   861: aload_2
    //   862: iload 20
    //   864: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   867: getstatic 242	android/a/a/c:h	[I
    //   870: iconst_0
    //   871: iaload
    //   872: if_icmpne +30 -> 902
    //   875: aload_2
    //   876: iload 20
    //   878: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   881: astore 29
    //   883: aload 29
    //   885: ifnull +595 -> 1480
    //   888: aload 5
    //   890: getfield 243	com/antivirus/core/scanners/a/a/a:d	Ljava/util/ArrayList;
    //   893: aload 29
    //   895: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   898: pop
    //   899: goto +581 -> 1480
    //   902: aload_2
    //   903: iload 20
    //   905: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   908: getstatic 242	android/a/a/c:h	[I
    //   911: iconst_2
    //   912: iaload
    //   913: if_icmpne +30 -> 943
    //   916: aload_2
    //   917: iload 20
    //   919: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   922: astore 27
    //   924: aload 27
    //   926: ifnull +554 -> 1480
    //   929: aload 5
    //   931: getfield 243	com/antivirus/core/scanners/a/a/a:d	Ljava/util/ArrayList;
    //   934: aload 27
    //   936: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   939: pop
    //   940: goto +540 -> 1480
    //   943: aload_2
    //   944: iload 20
    //   946: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   949: getstatic 242	android/a/a/c:h	[I
    //   952: iconst_4
    //   953: iaload
    //   954: if_icmpne +30 -> 984
    //   957: aload_2
    //   958: iload 20
    //   960: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   963: astore 25
    //   965: aload 25
    //   967: ifnull +513 -> 1480
    //   970: aload 5
    //   972: getfield 243	com/antivirus/core/scanners/a/a/a:d	Ljava/util/ArrayList;
    //   975: aload 25
    //   977: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   980: pop
    //   981: goto +499 -> 1480
    //   984: aload_2
    //   985: iload 20
    //   987: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   990: getstatic 242	android/a/a/c:h	[I
    //   993: bipush 6
    //   995: iaload
    //   996: if_icmpne +30 -> 1026
    //   999: aload_2
    //   1000: iload 20
    //   1002: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   1005: astore 23
    //   1007: aload 23
    //   1009: ifnull +471 -> 1480
    //   1012: aload 5
    //   1014: getfield 243	com/antivirus/core/scanners/a/a/a:d	Ljava/util/ArrayList;
    //   1017: aload 23
    //   1019: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1022: pop
    //   1023: goto +457 -> 1480
    //   1026: aload_2
    //   1027: iload 20
    //   1029: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   1032: getstatic 242	android/a/a/c:h	[I
    //   1035: iconst_5
    //   1036: iaload
    //   1037: if_icmpne +443 -> 1480
    //   1040: aload_2
    //   1041: iload 20
    //   1043: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   1046: astore 21
    //   1048: aload 21
    //   1050: ifnull +430 -> 1480
    //   1053: aload 5
    //   1055: getfield 243	com/antivirus/core/scanners/a/a/a:d	Ljava/util/ArrayList;
    //   1058: aload 21
    //   1060: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1063: pop
    //   1064: goto +416 -> 1480
    //   1067: new 179	com/antivirus/core/scanners/a/a/a
    //   1070: dup
    //   1071: invokespecial 180	com/antivirus/core/scanners/a/a/a:<init>	()V
    //   1074: astore 14
    //   1076: iconst_0
    //   1077: istore 15
    //   1079: iload 15
    //   1081: aload_2
    //   1082: invokevirtual 152	android/a/a/a:getAttributeCount	()I
    //   1085: if_icmpge +81 -> 1166
    //   1088: aload_2
    //   1089: iload 15
    //   1091: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   1094: getstatic 245	android/a/a/c:l	[I
    //   1097: iconst_0
    //   1098: iaload
    //   1099: if_icmpne +26 -> 1125
    //   1102: aload_2
    //   1103: iload 15
    //   1105: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   1108: astore 19
    //   1110: aload 19
    //   1112: ifnull +385 -> 1497
    //   1115: aload 14
    //   1117: aload 19
    //   1119: putfield 183	com/antivirus/core/scanners/a/a/a:a	Ljava/lang/String;
    //   1122: goto +375 -> 1497
    //   1125: aload_2
    //   1126: iload 15
    //   1128: invokevirtual 156	android/a/a/a:getAttributeNameResource	(I)I
    //   1131: getstatic 245	android/a/a/c:l	[I
    //   1134: iconst_1
    //   1135: iaload
    //   1136: if_icmpne +361 -> 1497
    //   1139: aload_2
    //   1140: iload 15
    //   1142: invokestatic 164	android/a/a/f:a	(Landroid/a/a/a;I)Ljava/lang/String;
    //   1145: astore 17
    //   1147: aload 17
    //   1149: ifnull +348 -> 1497
    //   1152: aload 14
    //   1154: getfield 240	com/antivirus/core/scanners/a/a/a:c	Ljava/util/ArrayList;
    //   1157: aload 17
    //   1159: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1162: pop
    //   1163: goto +334 -> 1497
    //   1166: aload_3
    //   1167: getfield 248	com/antivirus/core/scanners/a/a:e	Ljava/util/ArrayList;
    //   1170: aload 14
    //   1172: invokevirtual 168	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1175: pop
    //   1176: aload 4
    //   1178: astore 10
    //   1180: aload 5
    //   1182: astore 11
    //   1184: goto +112 -> 1296
    //   1187: aload_2
    //   1188: invokevirtual 143	android/a/a/a:getName	()Ljava/lang/String;
    //   1191: astore 9
    //   1193: ldc 36
    //   1195: aload 9
    //   1197: invokevirtual 251	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1200: ifne +17 -> 1217
    //   1203: ldc 34
    //   1205: aload 9
    //   1207: invokevirtual 251	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1210: istore 12
    //   1212: iload 12
    //   1214: ifeq +74 -> 1288
    //   1217: aload 4
    //   1219: astore 10
    //   1221: aconst_null
    //   1222: astore 11
    //   1224: goto +72 -> 1296
    //   1227: aload_3
    //   1228: astore_1
    //   1229: goto -542 -> 687
    //   1232: astore 43
    //   1234: goto -596 -> 638
    //   1237: aload 5
    //   1239: astore 51
    //   1241: goto +144 -> 1385
    //   1244: aload 5
    //   1246: astore 58
    //   1248: goto +110 -> 1358
    //   1251: iinc 68 1
    //   1254: goto -1209 -> 45
    //   1257: iload 8
    //   1259: tableswitch	default:+29 -> 1288, 0:+48->1307, 1:+29->1288, 2:+-1121->138, 3:+-72->1187
    //   1289: iconst_1
    //   1290: astore 10
    //   1292: aload 5
    //   1294: astore 11
    //   1296: aload 11
    //   1298: astore 5
    //   1300: aload 10
    //   1302: astore 4
    //   1304: goto -1274 -> 30
    //   1307: aload 4
    //   1309: astore 10
    //   1311: aload 5
    //   1313: astore 11
    //   1315: goto -19 -> 1296
    //   1318: aload 4
    //   1320: astore 10
    //   1322: aload 5
    //   1324: astore 11
    //   1326: goto -30 -> 1296
    //   1329: iconst_0
    //   1330: istore 64
    //   1332: goto -1116 -> 216
    //   1335: aload 4
    //   1337: astore 10
    //   1339: aload 5
    //   1341: astore 11
    //   1343: goto -47 -> 1296
    //   1346: iinc 64 1
    //   1349: goto -1133 -> 216
    //   1352: iconst_0
    //   1353: istore 57
    //   1355: goto -1070 -> 285
    //   1358: aload 4
    //   1360: astore 59
    //   1362: aload 58
    //   1364: astore 11
    //   1366: aload 59
    //   1368: astore 10
    //   1370: goto -74 -> 1296
    //   1373: iinc 57 1
    //   1376: goto -1091 -> 285
    //   1379: iconst_0
    //   1380: istore 50
    //   1382: goto -1008 -> 374
    //   1385: aload 4
    //   1387: astore 52
    //   1389: aload 51
    //   1391: astore 11
    //   1393: aload 52
    //   1395: astore 10
    //   1397: goto -101 -> 1296
    //   1400: iinc 50 1
    //   1403: goto -1029 -> 374
    //   1406: iconst_0
    //   1407: istore 47
    //   1409: goto -946 -> 463
    //   1412: aload 4
    //   1414: astore 10
    //   1416: aload 5
    //   1418: astore 11
    //   1420: goto -124 -> 1296
    //   1423: iinc 47 1
    //   1426: goto -963 -> 463
    //   1429: iconst_0
    //   1430: istore 44
    //   1432: goto -920 -> 512
    //   1435: aload 4
    //   1437: astore 10
    //   1439: aload 5
    //   1441: astore 11
    //   1443: goto -147 -> 1296
    //   1446: iinc 44 1
    //   1449: goto -937 -> 512
    //   1452: aload 4
    //   1454: astore 10
    //   1456: aload 5
    //   1458: astore 11
    //   1460: goto -164 -> 1296
    //   1463: iinc 35 1
    //   1466: goto -751 -> 715
    //   1469: aload 5
    //   1471: ifnull -183 -> 1288
    //   1474: iconst_0
    //   1475: istore 20
    //   1477: goto -712 -> 765
    //   1480: iinc 20 1
    //   1483: goto -718 -> 765
    //   1486: aload 4
    //   1488: astore 10
    //   1490: aload 5
    //   1492: astore 11
    //   1494: goto -198 -> 1296
    //   1497: iinc 15 1
    //   1500: goto -421 -> 1079
    //
    // Exception table:
    //   from	to	target	type
    //   30	624	680	java/lang/Throwable
    //   629	638	680	java/lang/Throwable
    //   644	677	680	java/lang/Throwable
    //   715	853	680	java/lang/Throwable
    //   861	1212	680	java/lang/Throwable
    //   30	624	856	finally
    //   629	638	856	finally
    //   644	677	856	finally
    //   682	687	856	finally
    //   715	853	856	finally
    //   861	1212	856	finally
    //   629	638	1232	java/lang/Exception
  }

  private static String a(a parama, int paramInt)
  {
    int i = parama.a(paramInt);
    int j = parama.b(paramInt);
    String str;
    if (i == 3)
      str = parama.getAttributeValue(paramInt);
    while (true)
    {
      return str;
      if (i == 2)
      {
        Object[] arrayOfObject5 = new Object[2];
        arrayOfObject5[0] = b(j);
        arrayOfObject5[1] = Integer.valueOf(j);
        str = String.format("?%s%08X", arrayOfObject5);
      }
      else if (i == 1)
      {
        Object[] arrayOfObject4 = new Object[2];
        arrayOfObject4[0] = b(j);
        arrayOfObject4[1] = Integer.valueOf(j);
        str = String.format("@%s%08X", arrayOfObject4);
      }
      else if (i == 4)
      {
        str = String.valueOf(Float.intBitsToFloat(j));
      }
      else if (i == 17)
      {
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(j);
        str = String.format("0x%08X", arrayOfObject3);
      }
      else if (i == 18)
      {
        if (j != 0)
          str = "true";
        else
          str = "false";
      }
      else if (i == 5)
      {
        str = Float.toString(a(j)) + c[(j & 0xF)];
      }
      else if (i == 6)
      {
        str = Float.toString(a(j)) + d[(j & 0xF)];
      }
      else if ((i >= 28) && (i <= 31))
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(j);
        str = String.format("#%08X", arrayOfObject2);
      }
      else if ((i >= 16) && (i <= 31))
      {
        str = String.valueOf(j);
      }
      else
      {
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = Integer.valueOf(j);
        arrayOfObject1[1] = Integer.valueOf(i);
        str = String.format("<0x%X, type 0x%02X>", arrayOfObject1);
      }
    }
  }

  private static String b(int paramInt)
  {
    if (paramInt >>> 24 == 1);
    for (String str = "android:"; ; str = "")
      return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.a.a.f
 * JD-Core Version:    0.6.2
 */