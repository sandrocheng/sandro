package com.avast.android.generic.app.account;

public class t
{
  // ERROR //
  public static u a(android.content.Context paramContext, com.avast.android.generic.ae paramae)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokestatic 16	com/avast/android/generic/f/b/a:f	(Landroid/content/Context;)Ljava/lang/String;
    //   6: astore_3
    //   7: aload_1
    //   8: invokevirtual 22	com/avast/android/generic/ae:c	()Landroid/content/SharedPreferences;
    //   11: invokeinterface 28 1 0
    //   16: astore 29
    //   18: new 30	java/util/HashMap
    //   21: dup
    //   22: invokespecial 34	java/util/HashMap:<init>	()V
    //   25: astore 30
    //   27: new 36	java/io/File
    //   30: dup
    //   31: ldc 38
    //   33: invokespecial 41	java/io/File:<init>	(Ljava/lang/String;)V
    //   36: invokevirtual 45	java/io/File:exists	()Z
    //   39: ifne +59 -> 98
    //   42: new 47	com/avast/android/generic/app/account/u
    //   45: dup
    //   46: getstatic 53	com/avast/android/generic/app/account/v:b	Lcom/avast/android/generic/app/account/v;
    //   49: ldc 55
    //   51: invokespecial 58	com/avast/android/generic/app/account/u:<init>	(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    //   54: astore 20
    //   56: iconst_0
    //   57: ifeq +7 -> 64
    //   60: aconst_null
    //   61: invokevirtual 63	java/io/FileOutputStream:close	()V
    //   64: iconst_0
    //   65: ifeq +7 -> 72
    //   68: aconst_null
    //   69: invokevirtual 66	java/util/zip/ZipInputStream:close	()V
    //   72: iconst_0
    //   73: ifeq +1910 -> 1983
    //   76: aconst_null
    //   77: invokevirtual 69	java/io/ObjectInputStream:close	()V
    //   80: iconst_0
    //   81: ifeq +7 -> 88
    //   84: aconst_null
    //   85: invokevirtual 72	java/io/FileInputStream:close	()V
    //   88: aload_0
    //   89: ldc 74
    //   91: invokevirtual 80	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   94: pop
    //   95: aload 20
    //   97: areturn
    //   98: new 71	java/io/FileInputStream
    //   101: dup
    //   102: ldc 38
    //   104: invokespecial 81	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   107: astore 36
    //   109: new 65	java/util/zip/ZipInputStream
    //   112: dup
    //   113: aload 36
    //   115: invokespecial 84	java/util/zip/ZipInputStream:<init>	(Ljava/io/InputStream;)V
    //   118: astore 12
    //   120: aload 12
    //   122: invokevirtual 88	java/util/zip/ZipInputStream:getNextEntry	()Ljava/util/zip/ZipEntry;
    //   125: astore 38
    //   127: aload 38
    //   129: ifnonnull +83 -> 212
    //   132: new 47	com/avast/android/generic/app/account/u
    //   135: dup
    //   136: getstatic 90	com/avast/android/generic/app/account/v:c	Lcom/avast/android/generic/app/account/v;
    //   139: ldc 92
    //   141: invokespecial 58	com/avast/android/generic/app/account/u:<init>	(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    //   144: astore 20
    //   146: iconst_0
    //   147: ifeq +7 -> 154
    //   150: aconst_null
    //   151: invokevirtual 63	java/io/FileOutputStream:close	()V
    //   154: aload 12
    //   156: ifnull +8 -> 164
    //   159: aload 12
    //   161: invokevirtual 66	java/util/zip/ZipInputStream:close	()V
    //   164: iconst_0
    //   165: ifeq +1812 -> 1977
    //   168: aconst_null
    //   169: invokevirtual 69	java/io/ObjectInputStream:close	()V
    //   172: aload_2
    //   173: ifnull +7 -> 180
    //   176: aload_2
    //   177: invokevirtual 72	java/io/FileInputStream:close	()V
    //   180: aload_0
    //   181: ldc 74
    //   183: invokevirtual 80	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   186: pop
    //   187: goto -92 -> 95
    //   190: astore 21
    //   192: ldc 94
    //   194: astore 22
    //   196: ldc 96
    //   198: astore 23
    //   200: aload 22
    //   202: aload 23
    //   204: aload 21
    //   206: invokestatic 101	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   209: goto -114 -> 95
    //   212: aload 38
    //   214: invokevirtual 107	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   217: ldc 109
    //   219: invokevirtual 114	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   222: ifeq +1041 -> 1263
    //   225: aload_0
    //   226: ldc 74
    //   228: iconst_0
    //   229: invokevirtual 118	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   232: astore 49
    //   234: aload 12
    //   236: aload_3
    //   237: invokestatic 123	com/avast/android/generic/c/c:a	(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)[B
    //   240: astore 57
    //   242: aload 49
    //   244: aload 57
    //   246: invokevirtual 127	java/io/FileOutputStream:write	([B)V
    //   249: aload 49
    //   251: invokevirtual 130	java/io/FileOutputStream:flush	()V
    //   254: aload 49
    //   256: invokevirtual 63	java/io/FileOutputStream:close	()V
    //   259: aload_0
    //   260: ldc 74
    //   262: invokevirtual 134	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   265: astore 58
    //   267: aload 58
    //   269: astore 13
    //   271: new 68	java/io/ObjectInputStream
    //   274: dup
    //   275: aload 13
    //   277: invokespecial 135	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   280: astore 11
    //   282: aload 11
    //   284: invokevirtual 139	java/io/ObjectInputStream:available	()I
    //   287: ifle +368 -> 655
    //   290: aload 11
    //   292: invokevirtual 142	java/io/ObjectInputStream:readUTF	()Ljava/lang/String;
    //   295: astore 101
    //   297: aload 11
    //   299: invokevirtual 145	java/io/ObjectInputStream:readInt	()I
    //   302: istore 102
    //   304: iload 102
    //   306: iconst_1
    //   307: if_icmpne +214 -> 521
    //   310: aload 30
    //   312: aload 101
    //   314: aload 11
    //   316: invokevirtual 142	java/io/ObjectInputStream:readUTF	()Ljava/lang/String;
    //   319: invokeinterface 151 3 0
    //   324: pop
    //   325: goto -43 -> 282
    //   328: astore 59
    //   330: aload 13
    //   332: astore 8
    //   334: aconst_null
    //   335: astore 9
    //   337: aload 12
    //   339: astore 7
    //   341: aload 11
    //   343: astore 6
    //   345: aload 59
    //   347: astore 5
    //   349: ldc 94
    //   351: ldc 153
    //   353: aload 5
    //   355: invokestatic 101	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   358: new 47	com/avast/android/generic/app/account/u
    //   361: dup
    //   362: getstatic 156	com/avast/android/generic/app/account/v:e	Lcom/avast/android/generic/app/account/v;
    //   365: aload_0
    //   366: aload 5
    //   368: invokestatic 161	com/avast/android/generic/util/q:a	(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;
    //   371: invokespecial 58	com/avast/android/generic/app/account/u:<init>	(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    //   374: astore 20
    //   376: aload 9
    //   378: ifnull +8 -> 386
    //   381: aload 9
    //   383: invokevirtual 63	java/io/FileOutputStream:close	()V
    //   386: aload 7
    //   388: ifnull +8 -> 396
    //   391: aload 7
    //   393: invokevirtual 66	java/util/zip/ZipInputStream:close	()V
    //   396: aload 6
    //   398: ifnull +1588 -> 1986
    //   401: aload 6
    //   403: invokevirtual 69	java/io/ObjectInputStream:close	()V
    //   406: aload_2
    //   407: ifnull +7 -> 414
    //   410: aload_2
    //   411: invokevirtual 72	java/io/FileInputStream:close	()V
    //   414: aload_0
    //   415: ldc 74
    //   417: invokevirtual 80	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   420: pop
    //   421: goto -326 -> 95
    //   424: astore 21
    //   426: ldc 94
    //   428: astore 22
    //   430: ldc 96
    //   432: astore 23
    //   434: goto -234 -> 200
    //   437: astore 51
    //   439: ldc 94
    //   441: ldc 153
    //   443: aload 51
    //   445: invokestatic 101	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   448: new 47	com/avast/android/generic/app/account/u
    //   451: dup
    //   452: getstatic 90	com/avast/android/generic/app/account/v:c	Lcom/avast/android/generic/app/account/v;
    //   455: ldc 163
    //   457: invokespecial 58	com/avast/android/generic/app/account/u:<init>	(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    //   460: astore 20
    //   462: aload 49
    //   464: ifnull +8 -> 472
    //   467: aload 49
    //   469: invokevirtual 63	java/io/FileOutputStream:close	()V
    //   472: aload 12
    //   474: ifnull +8 -> 482
    //   477: aload 12
    //   479: invokevirtual 66	java/util/zip/ZipInputStream:close	()V
    //   482: iconst_0
    //   483: ifeq +1488 -> 1971
    //   486: aconst_null
    //   487: invokevirtual 69	java/io/ObjectInputStream:close	()V
    //   490: aload_2
    //   491: ifnull +7 -> 498
    //   494: aload_2
    //   495: invokevirtual 72	java/io/FileInputStream:close	()V
    //   498: aload_0
    //   499: ldc 74
    //   501: invokevirtual 80	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   504: pop
    //   505: goto -410 -> 95
    //   508: astore 21
    //   510: ldc 94
    //   512: astore 22
    //   514: ldc 96
    //   516: astore 23
    //   518: goto -318 -> 200
    //   521: iload 102
    //   523: iconst_2
    //   524: if_icmpne +77 -> 601
    //   527: aload 30
    //   529: aload 101
    //   531: aload 11
    //   533: invokevirtual 166	java/io/ObjectInputStream:readBoolean	()Z
    //   536: invokestatic 172	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   539: invokeinterface 151 3 0
    //   544: pop
    //   545: goto -263 -> 282
    //   548: astore 10
    //   550: aconst_null
    //   551: astore 9
    //   553: aload 9
    //   555: ifnull +8 -> 563
    //   558: aload 9
    //   560: invokevirtual 63	java/io/FileOutputStream:close	()V
    //   563: aload 12
    //   565: ifnull +8 -> 573
    //   568: aload 12
    //   570: invokevirtual 66	java/util/zip/ZipInputStream:close	()V
    //   573: aload 11
    //   575: ifnull +1417 -> 1992
    //   578: aload 11
    //   580: invokevirtual 69	java/io/ObjectInputStream:close	()V
    //   583: aload_2
    //   584: ifnull +7 -> 591
    //   587: aload_2
    //   588: invokevirtual 72	java/io/FileInputStream:close	()V
    //   591: aload_0
    //   592: ldc 74
    //   594: invokevirtual 80	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   597: pop
    //   598: aload 10
    //   600: athrow
    //   601: iload 102
    //   603: iconst_3
    //   604: if_icmpne +24 -> 628
    //   607: aload 30
    //   609: aload 101
    //   611: aload 11
    //   613: invokevirtual 145	java/io/ObjectInputStream:readInt	()I
    //   616: invokestatic 177	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   619: invokeinterface 151 3 0
    //   624: pop
    //   625: goto -343 -> 282
    //   628: iload 102
    //   630: iconst_4
    //   631: if_icmpne -349 -> 282
    //   634: aload 30
    //   636: aload 101
    //   638: aload 11
    //   640: invokevirtual 181	java/io/ObjectInputStream:readLong	()J
    //   643: invokestatic 186	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   646: invokeinterface 151 3 0
    //   651: pop
    //   652: goto -370 -> 282
    //   655: aload 11
    //   657: invokevirtual 69	java/io/ObjectInputStream:close	()V
    //   660: aload_0
    //   661: ldc 74
    //   663: invokevirtual 80	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   666: pop
    //   667: aload 30
    //   669: invokeinterface 190 1 0
    //   674: invokeinterface 196 1 0
    //   679: astore 62
    //   681: aload 62
    //   683: invokeinterface 201 1 0
    //   688: ifeq +284 -> 972
    //   691: aload 62
    //   693: invokeinterface 205 1 0
    //   698: checkcast 111	java/lang/String
    //   701: astore 85
    //   703: aload 85
    //   705: invokestatic 207	com/avast/android/generic/app/account/t:a	(Ljava/lang/String;)Z
    //   708: ifne -27 -> 681
    //   711: aload 29
    //   713: aload 85
    //   715: invokeinterface 211 2 0
    //   720: ifne +109 -> 829
    //   723: aload 30
    //   725: aload 85
    //   727: invokeinterface 215 2 0
    //   732: ifnull +97 -> 829
    //   735: new 47	com/avast/android/generic/app/account/u
    //   738: dup
    //   739: getstatic 218	com/avast/android/generic/app/account/v:d	Lcom/avast/android/generic/app/account/v;
    //   742: new 220	java/lang/StringBuilder
    //   745: dup
    //   746: invokespecial 221	java/lang/StringBuilder:<init>	()V
    //   749: ldc 223
    //   751: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   754: aload 85
    //   756: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   759: invokevirtual 230	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   762: invokespecial 58	com/avast/android/generic/app/account/u:<init>	(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    //   765: astore 93
    //   767: iconst_0
    //   768: ifeq +7 -> 775
    //   771: aconst_null
    //   772: invokevirtual 63	java/io/FileOutputStream:close	()V
    //   775: aload 12
    //   777: ifnull +8 -> 785
    //   780: aload 12
    //   782: invokevirtual 66	java/util/zip/ZipInputStream:close	()V
    //   785: iconst_0
    //   786: ifeq +1182 -> 1968
    //   789: aconst_null
    //   790: invokevirtual 69	java/io/ObjectInputStream:close	()V
    //   793: iconst_0
    //   794: ifeq +7 -> 801
    //   797: aconst_null
    //   798: invokevirtual 72	java/io/FileInputStream:close	()V
    //   801: aload_0
    //   802: ldc 74
    //   804: invokevirtual 80	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   807: pop
    //   808: aload 93
    //   810: astore 20
    //   812: goto -717 -> 95
    //   815: astore 61
    //   817: ldc 94
    //   819: ldc 96
    //   821: aload 61
    //   823: invokestatic 101	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   826: goto -159 -> 667
    //   829: aload 30
    //   831: aload 85
    //   833: invokeinterface 215 2 0
    //   838: aload 29
    //   840: aload 85
    //   842: invokeinterface 215 2 0
    //   847: invokestatic 233	com/avast/android/generic/app/account/t:a	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   850: ifne -169 -> 681
    //   853: new 47	com/avast/android/generic/app/account/u
    //   856: dup
    //   857: getstatic 218	com/avast/android/generic/app/account/v:d	Lcom/avast/android/generic/app/account/v;
    //   860: new 220	java/lang/StringBuilder
    //   863: dup
    //   864: invokespecial 221	java/lang/StringBuilder:<init>	()V
    //   867: ldc 235
    //   869: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   872: aload 85
    //   874: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   877: ldc 237
    //   879: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   882: aload 30
    //   884: aload 85
    //   886: invokeinterface 215 2 0
    //   891: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   894: ldc 237
    //   896: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   899: aload 29
    //   901: aload 85
    //   903: invokeinterface 215 2 0
    //   908: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   911: ldc 242
    //   913: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   916: invokevirtual 230	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   919: invokespecial 58	com/avast/android/generic/app/account/u:<init>	(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    //   922: astore 86
    //   924: iconst_0
    //   925: ifeq +7 -> 932
    //   928: aconst_null
    //   929: invokevirtual 63	java/io/FileOutputStream:close	()V
    //   932: aload 12
    //   934: ifnull +8 -> 942
    //   937: aload 12
    //   939: invokevirtual 66	java/util/zip/ZipInputStream:close	()V
    //   942: iconst_0
    //   943: ifeq +1022 -> 1965
    //   946: aconst_null
    //   947: invokevirtual 69	java/io/ObjectInputStream:close	()V
    //   950: iconst_0
    //   951: ifeq +7 -> 958
    //   954: aconst_null
    //   955: invokevirtual 72	java/io/FileInputStream:close	()V
    //   958: aload_0
    //   959: ldc 74
    //   961: invokevirtual 80	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   964: pop
    //   965: aload 86
    //   967: astore 20
    //   969: goto -874 -> 95
    //   972: aload 29
    //   974: invokeinterface 190 1 0
    //   979: invokeinterface 196 1 0
    //   984: astore 63
    //   986: aload 63
    //   988: invokeinterface 201 1 0
    //   993: ifeq +341 -> 1334
    //   996: aload 63
    //   998: invokeinterface 205 1 0
    //   1003: checkcast 111	java/lang/String
    //   1006: astore 70
    //   1008: aload 70
    //   1010: invokestatic 207	com/avast/android/generic/app/account/t:a	(Ljava/lang/String;)Z
    //   1013: ifne -27 -> 986
    //   1016: aload 30
    //   1018: aload 70
    //   1020: invokeinterface 211 2 0
    //   1025: ifne +95 -> 1120
    //   1028: aload 29
    //   1030: aload 70
    //   1032: invokeinterface 215 2 0
    //   1037: ifnull +83 -> 1120
    //   1040: new 47	com/avast/android/generic/app/account/u
    //   1043: dup
    //   1044: getstatic 218	com/avast/android/generic/app/account/v:d	Lcom/avast/android/generic/app/account/v;
    //   1047: new 220	java/lang/StringBuilder
    //   1050: dup
    //   1051: invokespecial 221	java/lang/StringBuilder:<init>	()V
    //   1054: ldc 244
    //   1056: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1059: aload 70
    //   1061: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1064: invokevirtual 230	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1067: invokespecial 58	com/avast/android/generic/app/account/u:<init>	(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    //   1070: astore 78
    //   1072: iconst_0
    //   1073: ifeq +7 -> 1080
    //   1076: aconst_null
    //   1077: invokevirtual 63	java/io/FileOutputStream:close	()V
    //   1080: aload 12
    //   1082: ifnull +8 -> 1090
    //   1085: aload 12
    //   1087: invokevirtual 66	java/util/zip/ZipInputStream:close	()V
    //   1090: iconst_0
    //   1091: ifeq +871 -> 1962
    //   1094: aconst_null
    //   1095: invokevirtual 69	java/io/ObjectInputStream:close	()V
    //   1098: iconst_0
    //   1099: ifeq +7 -> 1106
    //   1102: aconst_null
    //   1103: invokevirtual 72	java/io/FileInputStream:close	()V
    //   1106: aload_0
    //   1107: ldc 74
    //   1109: invokevirtual 80	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   1112: pop
    //   1113: aload 78
    //   1115: astore 20
    //   1117: goto -1022 -> 95
    //   1120: aload 30
    //   1122: aload 70
    //   1124: invokeinterface 215 2 0
    //   1129: aload 29
    //   1131: aload 70
    //   1133: invokeinterface 215 2 0
    //   1138: invokestatic 233	com/avast/android/generic/app/account/t:a	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   1141: ifne -155 -> 986
    //   1144: new 47	com/avast/android/generic/app/account/u
    //   1147: dup
    //   1148: getstatic 218	com/avast/android/generic/app/account/v:d	Lcom/avast/android/generic/app/account/v;
    //   1151: new 220	java/lang/StringBuilder
    //   1154: dup
    //   1155: invokespecial 221	java/lang/StringBuilder:<init>	()V
    //   1158: ldc 246
    //   1160: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1163: aload 70
    //   1165: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1168: ldc 237
    //   1170: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1173: aload 30
    //   1175: aload 70
    //   1177: invokeinterface 215 2 0
    //   1182: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1185: ldc 237
    //   1187: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1190: aload 29
    //   1192: aload 70
    //   1194: invokeinterface 215 2 0
    //   1199: invokevirtual 240	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1202: ldc 242
    //   1204: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1207: invokevirtual 230	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1210: invokespecial 58	com/avast/android/generic/app/account/u:<init>	(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    //   1213: astore 71
    //   1215: iconst_0
    //   1216: ifeq +7 -> 1223
    //   1219: aconst_null
    //   1220: invokevirtual 63	java/io/FileOutputStream:close	()V
    //   1223: aload 12
    //   1225: ifnull +8 -> 1233
    //   1228: aload 12
    //   1230: invokevirtual 66	java/util/zip/ZipInputStream:close	()V
    //   1233: iconst_0
    //   1234: ifeq +725 -> 1959
    //   1237: aconst_null
    //   1238: invokevirtual 69	java/io/ObjectInputStream:close	()V
    //   1241: iconst_0
    //   1242: ifeq +7 -> 1249
    //   1245: aconst_null
    //   1246: invokevirtual 72	java/io/FileInputStream:close	()V
    //   1249: aload_0
    //   1250: ldc 74
    //   1252: invokevirtual 80	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   1255: pop
    //   1256: aload 71
    //   1258: astore 20
    //   1260: goto -1165 -> 95
    //   1263: new 47	com/avast/android/generic/app/account/u
    //   1266: dup
    //   1267: getstatic 90	com/avast/android/generic/app/account/v:c	Lcom/avast/android/generic/app/account/v;
    //   1270: ldc 248
    //   1272: invokespecial 58	com/avast/android/generic/app/account/u:<init>	(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    //   1275: astore 20
    //   1277: iconst_0
    //   1278: ifeq +7 -> 1285
    //   1281: aconst_null
    //   1282: invokevirtual 63	java/io/FileOutputStream:close	()V
    //   1285: aload 12
    //   1287: ifnull +8 -> 1295
    //   1290: aload 12
    //   1292: invokevirtual 66	java/util/zip/ZipInputStream:close	()V
    //   1295: iconst_0
    //   1296: ifeq +654 -> 1950
    //   1299: aconst_null
    //   1300: invokevirtual 69	java/io/ObjectInputStream:close	()V
    //   1303: aload_2
    //   1304: ifnull +7 -> 1311
    //   1307: aload_2
    //   1308: invokevirtual 72	java/io/FileInputStream:close	()V
    //   1311: aload_0
    //   1312: ldc 74
    //   1314: invokevirtual 80	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   1317: pop
    //   1318: goto -1223 -> 95
    //   1321: astore 21
    //   1323: ldc 94
    //   1325: astore 22
    //   1327: ldc 96
    //   1329: astore 23
    //   1331: goto -1131 -> 200
    //   1334: aload 12
    //   1336: invokevirtual 251	java/util/zip/ZipInputStream:closeEntry	()V
    //   1339: aload 12
    //   1341: invokevirtual 66	java/util/zip/ZipInputStream:close	()V
    //   1344: iconst_0
    //   1345: ifeq +7 -> 1352
    //   1348: aconst_null
    //   1349: invokevirtual 63	java/io/FileOutputStream:close	()V
    //   1352: aload 12
    //   1354: ifnull +8 -> 1362
    //   1357: aload 12
    //   1359: invokevirtual 66	java/util/zip/ZipInputStream:close	()V
    //   1362: iconst_0
    //   1363: ifeq +593 -> 1956
    //   1366: aconst_null
    //   1367: invokevirtual 69	java/io/ObjectInputStream:close	()V
    //   1370: iconst_0
    //   1371: ifeq +7 -> 1378
    //   1374: aconst_null
    //   1375: invokevirtual 72	java/io/FileInputStream:close	()V
    //   1378: aload_0
    //   1379: ldc 74
    //   1381: invokevirtual 80	android/content/Context:deleteFile	(Ljava/lang/String;)Z
    //   1384: pop
    //   1385: new 47	com/avast/android/generic/app/account/u
    //   1388: dup
    //   1389: getstatic 253	com/avast/android/generic/app/account/v:a	Lcom/avast/android/generic/app/account/v;
    //   1392: ldc 255
    //   1394: invokespecial 58	com/avast/android/generic/app/account/u:<init>	(Lcom/avast/android/generic/app/account/v;Ljava/lang/String;)V
    //   1397: astore 20
    //   1399: goto -1304 -> 95
    //   1402: astore 19
    //   1404: goto -841 -> 563
    //   1407: astore 18
    //   1409: goto -836 -> 573
    //   1412: astore 17
    //   1414: aconst_null
    //   1415: astore_2
    //   1416: goto -833 -> 583
    //   1419: astore 16
    //   1421: goto -830 -> 591
    //   1424: astore 14
    //   1426: ldc 94
    //   1428: ldc 96
    //   1430: aload 14
    //   1432: invokestatic 101	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1435: goto -837 -> 598
    //   1438: astore 28
    //   1440: goto -1054 -> 386
    //   1443: astore 27
    //   1445: goto -1049 -> 396
    //   1448: astore 26
    //   1450: aconst_null
    //   1451: astore_2
    //   1452: goto -1046 -> 406
    //   1455: astore 25
    //   1457: goto -1043 -> 414
    //   1460: astore 35
    //   1462: goto -1398 -> 64
    //   1465: astore 34
    //   1467: goto -1395 -> 72
    //   1470: astore 33
    //   1472: goto -1392 -> 80
    //   1475: astore 32
    //   1477: goto -1389 -> 88
    //   1480: astore 21
    //   1482: ldc 94
    //   1484: astore 22
    //   1486: ldc 96
    //   1488: astore 23
    //   1490: goto -1290 -> 200
    //   1493: astore 43
    //   1495: goto -1341 -> 154
    //   1498: astore 42
    //   1500: goto -1336 -> 164
    //   1503: astore 41
    //   1505: aconst_null
    //   1506: astore_2
    //   1507: goto -1335 -> 172
    //   1510: astore 40
    //   1512: goto -1332 -> 180
    //   1515: astore 56
    //   1517: goto -1045 -> 472
    //   1520: astore 55
    //   1522: goto -1040 -> 482
    //   1525: astore 54
    //   1527: aconst_null
    //   1528: astore_2
    //   1529: goto -1039 -> 490
    //   1532: astore 53
    //   1534: goto -1036 -> 498
    //   1537: astore 99
    //   1539: goto -764 -> 775
    //   1542: astore 98
    //   1544: goto -759 -> 785
    //   1547: astore 97
    //   1549: goto -756 -> 793
    //   1552: astore 96
    //   1554: goto -753 -> 801
    //   1557: astore 94
    //   1559: ldc 94
    //   1561: ldc 96
    //   1563: aload 94
    //   1565: invokestatic 101	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1568: goto -760 -> 808
    //   1571: astore 92
    //   1573: goto -641 -> 932
    //   1576: astore 91
    //   1578: goto -636 -> 942
    //   1581: astore 90
    //   1583: goto -633 -> 950
    //   1586: astore 89
    //   1588: goto -630 -> 958
    //   1591: astore 87
    //   1593: ldc 94
    //   1595: ldc 96
    //   1597: aload 87
    //   1599: invokestatic 101	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1602: goto -637 -> 965
    //   1605: astore 84
    //   1607: goto -527 -> 1080
    //   1610: astore 83
    //   1612: goto -522 -> 1090
    //   1615: astore 82
    //   1617: goto -519 -> 1098
    //   1620: astore 81
    //   1622: goto -516 -> 1106
    //   1625: astore 79
    //   1627: ldc 94
    //   1629: ldc 96
    //   1631: aload 79
    //   1633: invokestatic 101	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1636: goto -523 -> 1113
    //   1639: astore 77
    //   1641: goto -418 -> 1223
    //   1644: astore 76
    //   1646: goto -413 -> 1233
    //   1649: astore 75
    //   1651: goto -410 -> 1241
    //   1654: astore 74
    //   1656: goto -407 -> 1249
    //   1659: astore 72
    //   1661: ldc 94
    //   1663: ldc 96
    //   1665: aload 72
    //   1667: invokestatic 101	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1670: goto -414 -> 1256
    //   1673: astore 69
    //   1675: goto -323 -> 1352
    //   1678: astore 68
    //   1680: goto -318 -> 1362
    //   1683: astore 67
    //   1685: goto -315 -> 1370
    //   1688: astore 66
    //   1690: goto -312 -> 1378
    //   1693: astore 64
    //   1695: ldc 94
    //   1697: ldc 96
    //   1699: aload 64
    //   1701: invokestatic 101	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1704: goto -319 -> 1385
    //   1707: astore 48
    //   1709: goto -424 -> 1285
    //   1712: astore 47
    //   1714: goto -419 -> 1295
    //   1717: astore 46
    //   1719: aconst_null
    //   1720: astore_2
    //   1721: goto -418 -> 1303
    //   1724: astore 45
    //   1726: goto -415 -> 1311
    //   1729: astore 10
    //   1731: aconst_null
    //   1732: astore 11
    //   1734: aconst_null
    //   1735: astore 12
    //   1737: aconst_null
    //   1738: astore 13
    //   1740: aconst_null
    //   1741: astore 9
    //   1743: goto -1190 -> 553
    //   1746: astore 10
    //   1748: aload 36
    //   1750: astore 13
    //   1752: aconst_null
    //   1753: astore 11
    //   1755: aconst_null
    //   1756: astore 12
    //   1758: aconst_null
    //   1759: astore 9
    //   1761: goto -1208 -> 553
    //   1764: astore 10
    //   1766: aload 36
    //   1768: astore 13
    //   1770: aconst_null
    //   1771: astore 11
    //   1773: aconst_null
    //   1774: astore 9
    //   1776: goto -1223 -> 553
    //   1779: astore 10
    //   1781: aload 49
    //   1783: astore 9
    //   1785: aload 36
    //   1787: astore 13
    //   1789: aconst_null
    //   1790: astore 11
    //   1792: goto -1239 -> 553
    //   1795: astore 10
    //   1797: aconst_null
    //   1798: astore 11
    //   1800: aconst_null
    //   1801: astore 9
    //   1803: goto -1250 -> 553
    //   1806: astore 10
    //   1808: aconst_null
    //   1809: astore 11
    //   1811: aconst_null
    //   1812: astore 13
    //   1814: aconst_null
    //   1815: astore 9
    //   1817: goto -1264 -> 553
    //   1820: astore 10
    //   1822: aload 6
    //   1824: astore 11
    //   1826: aload 7
    //   1828: astore 12
    //   1830: aload 8
    //   1832: astore 13
    //   1834: goto -1281 -> 553
    //   1837: astore 4
    //   1839: aload 4
    //   1841: astore 5
    //   1843: aconst_null
    //   1844: astore 6
    //   1846: aconst_null
    //   1847: astore 7
    //   1849: aconst_null
    //   1850: astore 8
    //   1852: aconst_null
    //   1853: astore 9
    //   1855: goto -1506 -> 349
    //   1858: astore 108
    //   1860: aload 36
    //   1862: astore 8
    //   1864: aload 108
    //   1866: astore 5
    //   1868: aconst_null
    //   1869: astore 6
    //   1871: aconst_null
    //   1872: astore 7
    //   1874: aconst_null
    //   1875: astore 9
    //   1877: goto -1528 -> 349
    //   1880: astore 37
    //   1882: aload 12
    //   1884: astore 7
    //   1886: aload 36
    //   1888: astore 8
    //   1890: aload 37
    //   1892: astore 5
    //   1894: aconst_null
    //   1895: astore 6
    //   1897: aconst_null
    //   1898: astore 9
    //   1900: goto -1551 -> 349
    //   1903: astore 50
    //   1905: aload 36
    //   1907: astore 8
    //   1909: aload 49
    //   1911: astore 9
    //   1913: aload 12
    //   1915: astore 7
    //   1917: aload 50
    //   1919: astore 5
    //   1921: aconst_null
    //   1922: astore 6
    //   1924: goto -1575 -> 349
    //   1927: astore 107
    //   1929: aload 107
    //   1931: astore 5
    //   1933: aload 13
    //   1935: astore 8
    //   1937: aload 12
    //   1939: astore 7
    //   1941: aconst_null
    //   1942: astore 6
    //   1944: aconst_null
    //   1945: astore 9
    //   1947: goto -1598 -> 349
    //   1950: aload 36
    //   1952: astore_2
    //   1953: goto -650 -> 1303
    //   1956: goto -586 -> 1370
    //   1959: goto -718 -> 1241
    //   1962: goto -864 -> 1098
    //   1965: goto -1015 -> 950
    //   1968: goto -1175 -> 793
    //   1971: aload 36
    //   1973: astore_2
    //   1974: goto -1484 -> 490
    //   1977: aload 36
    //   1979: astore_2
    //   1980: goto -1808 -> 172
    //   1983: goto -1903 -> 80
    //   1986: aload 8
    //   1988: astore_2
    //   1989: goto -1583 -> 406
    //   1992: aload 13
    //   1994: astore_2
    //   1995: goto -1412 -> 583
    //   1998: astore 60
    //   2000: aload 60
    //   2002: astore 5
    //   2004: aload 12
    //   2006: astore 7
    //   2008: aconst_null
    //   2009: astore 6
    //   2011: aconst_null
    //   2012: astore 8
    //   2014: aconst_null
    //   2015: astore 9
    //   2017: goto -1668 -> 349
    //
    // Exception table:
    //   from	to	target	type
    //   180	187	190	java/lang/Exception
    //   282	325	328	java/io/IOException
    //   527	545	328	java/io/IOException
    //   607	660	328	java/io/IOException
    //   414	421	424	java/lang/Exception
    //   234	242	437	java/lang/Exception
    //   498	505	508	java/lang/Exception
    //   282	325	548	finally
    //   527	545	548	finally
    //   607	660	548	finally
    //   660	667	815	java/lang/Exception
    //   1311	1318	1321	java/lang/Exception
    //   558	563	1402	java/io/IOException
    //   568	573	1407	java/io/IOException
    //   578	583	1412	java/io/IOException
    //   587	591	1419	java/io/IOException
    //   591	598	1424	java/lang/Exception
    //   381	386	1438	java/io/IOException
    //   391	396	1443	java/io/IOException
    //   401	406	1448	java/io/IOException
    //   410	414	1455	java/io/IOException
    //   60	64	1460	java/io/IOException
    //   68	72	1465	java/io/IOException
    //   76	80	1470	java/io/IOException
    //   84	88	1475	java/io/IOException
    //   88	95	1480	java/lang/Exception
    //   150	154	1493	java/io/IOException
    //   159	164	1498	java/io/IOException
    //   168	172	1503	java/io/IOException
    //   176	180	1510	java/io/IOException
    //   467	472	1515	java/io/IOException
    //   477	482	1520	java/io/IOException
    //   486	490	1525	java/io/IOException
    //   494	498	1532	java/io/IOException
    //   771	775	1537	java/io/IOException
    //   780	785	1542	java/io/IOException
    //   789	793	1547	java/io/IOException
    //   797	801	1552	java/io/IOException
    //   801	808	1557	java/lang/Exception
    //   928	932	1571	java/io/IOException
    //   937	942	1576	java/io/IOException
    //   946	950	1581	java/io/IOException
    //   954	958	1586	java/io/IOException
    //   958	965	1591	java/lang/Exception
    //   1076	1080	1605	java/io/IOException
    //   1085	1090	1610	java/io/IOException
    //   1094	1098	1615	java/io/IOException
    //   1102	1106	1620	java/io/IOException
    //   1106	1113	1625	java/lang/Exception
    //   1219	1223	1639	java/io/IOException
    //   1228	1233	1644	java/io/IOException
    //   1237	1241	1649	java/io/IOException
    //   1245	1249	1654	java/io/IOException
    //   1249	1256	1659	java/lang/Exception
    //   1348	1352	1673	java/io/IOException
    //   1357	1362	1678	java/io/IOException
    //   1366	1370	1683	java/io/IOException
    //   1374	1378	1688	java/io/IOException
    //   1378	1385	1693	java/lang/Exception
    //   1281	1285	1707	java/io/IOException
    //   1290	1295	1712	java/io/IOException
    //   1299	1303	1717	java/io/IOException
    //   1307	1311	1724	java/io/IOException
    //   7	56	1729	finally
    //   98	109	1729	finally
    //   109	120	1746	finally
    //   120	146	1764	finally
    //   212	234	1764	finally
    //   259	267	1764	finally
    //   1263	1277	1764	finally
    //   234	242	1779	finally
    //   242	259	1779	finally
    //   439	462	1779	finally
    //   271	282	1795	finally
    //   660	667	1806	finally
    //   667	767	1806	finally
    //   817	924	1806	finally
    //   972	1072	1806	finally
    //   1120	1215	1806	finally
    //   1334	1344	1806	finally
    //   349	376	1820	finally
    //   7	56	1837	java/io/IOException
    //   98	109	1837	java/io/IOException
    //   109	120	1858	java/io/IOException
    //   120	146	1880	java/io/IOException
    //   212	234	1880	java/io/IOException
    //   259	267	1880	java/io/IOException
    //   1263	1277	1880	java/io/IOException
    //   234	242	1903	java/io/IOException
    //   242	259	1903	java/io/IOException
    //   439	462	1903	java/io/IOException
    //   271	282	1927	java/io/IOException
    //   660	667	1998	java/io/IOException
    //   667	767	1998	java/io/IOException
    //   817	924	1998	java/io/IOException
    //   972	1072	1998	java/io/IOException
    //   1120	1215	1998	java/io/IOException
    //   1334	1344	1998	java/io/IOException
  }

  private static boolean a(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 != null) && ((paramObject1 instanceof String)) && (((String)paramObject1).equals("")))
      paramObject1 = null;
    if ((paramObject2 != null) && ((paramObject2 instanceof String)) && (((String)paramObject2).equals("")))
      paramObject2 = null;
    boolean bool;
    if ((paramObject1 == null) && (paramObject2 == null))
      bool = true;
    while (true)
    {
      return bool;
      if ((paramObject1 == null) || (paramObject2 == null))
        bool = false;
      else
        bool = paramObject1.equals(paramObject2);
    }
  }

  private static boolean a(String paramString)
  {
    boolean bool = true;
    if ((paramString == null) || (paramString.equals("")));
    while (true)
    {
      return bool;
      if ((paramString.equals("wipethorough")) || (paramString.equals("allowsms")) || (paramString.equals("locktext")) || (paramString.equals("disadb")) || (paramString.equals("endata")) || (paramString.equals("lockmode")) || (paramString.equals("audiofile")) || (paramString.equals("sirenonlock")) || (paramString.equals("battery")) || (paramString.equals("batteryalways")) || (paramString.equals("gpsautoon")) || (paramString.equals("hidegps")) || (paramString.equals("checkforupdates")) || (paramString.equals("lockprogrammgr")) || (paramString.equals("lockallsettings")) || (paramString.equals("owner")) || (paramString.equals("system")) || (paramString.equals("hidegps")) || (paramString.equals("forceEnableData")) || (paramString.equals("auid")) || (paramString.equals("accountCommPassword")) || (paramString.equals("accountEmail")) || (paramString.equals("accountEncKey")) || (paramString.equals("accountSmsGateway")) || (paramString.equals("not1")) || (paramString.equals("not2")) || (paramString.equals("c2dmowner")) || (paramString.equals("c2dmri")) || (paramString.equals("encaccesscode")) || (paramString.equals("accountSmsSending")) || (paramString.equals("splitcdma")))
        bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.t
 * JD-Core Version:    0.6.2
 */