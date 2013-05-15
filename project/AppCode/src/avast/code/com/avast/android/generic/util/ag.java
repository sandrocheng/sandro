package com.avast.android.generic.util;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import com.avast.android.generic.util.a.a;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.InputStream;
import java.io.OutputStream;

public class ag
{
  private static final String a = Environment.getExternalStorageDirectory() + "/UPDATE.zip";

  private static void a(Context paramContext, String paramString1, String paramString2)
  {
    long l1;
    long l3;
    do
    {
      File localFile;
      try
      {
        StatFs localStatFs = new StatFs(paramString2);
        l1 = localStatFs.getAvailableBlocks() * localStatFs.getBlockSize();
        localFile = new File(paramContext.getFilesDir().getAbsolutePath() + "/" + paramString1);
        if ((!localFile.exists()) || (!localFile.canRead()))
          throw new Exception("File does not exist or cannot be read");
      }
      catch (Exception localException)
      {
        t.a("AvastGeneric", "Can not query free space", localException);
        return;
      }
      long l2 = localFile.length();
      l3 = l2 + 102400L;
    }
    while (l1 >= l3);
    throw new a(l1, l3);
  }

  // ERROR //
  public static void a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean1, int paramInt1, int paramInt2, boolean paramBoolean2, boolean paramBoolean3, int paramInt3, o paramo, am paramam, boolean paramBoolean4)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 12
    //   3: new 10	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   10: astore 13
    //   12: aload_0
    //   13: aload_1
    //   14: ldc 95
    //   16: invokestatic 97	com/avast/android/generic/util/ag:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   19: new 51	java/io/File
    //   22: dup
    //   23: ldc 99
    //   25: invokespecial 62	java/io/File:<init>	(Ljava/lang/String;)V
    //   28: invokevirtual 66	java/io/File:exists	()Z
    //   31: istore 16
    //   33: ldc 101
    //   35: aload 13
    //   37: invokestatic 106	com/avast/android/generic/util/h:a	(Ljava/lang/String;Ljava/lang/StringBuilder;)I
    //   40: pop
    //   41: aload 13
    //   43: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: ldc 108
    //   48: invokevirtual 114	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   51: astore 18
    //   53: aload 18
    //   55: arraylength
    //   56: iconst_1
    //   57: if_icmpge +41 -> 98
    //   60: new 37	java/lang/Exception
    //   63: dup
    //   64: ldc 116
    //   66: invokespecial 72	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   69: athrow
    //   70: astore 14
    //   72: aconst_null
    //   73: astore 15
    //   75: aload 15
    //   77: ifnull +8 -> 85
    //   80: aload 15
    //   82: invokevirtual 121	java/util/zip/ZipOutputStream:close	()V
    //   85: aload 12
    //   87: ifnull +8 -> 95
    //   90: aload 12
    //   92: invokevirtual 124	java/io/BufferedInputStream:close	()V
    //   95: aload 14
    //   97: athrow
    //   98: aconst_null
    //   99: astore 19
    //   101: aconst_null
    //   102: astore 20
    //   104: aconst_null
    //   105: astore 21
    //   107: aconst_null
    //   108: astore 22
    //   110: iconst_0
    //   111: istore 23
    //   113: iload 23
    //   115: aload 18
    //   117: arraylength
    //   118: if_icmpge +124 -> 242
    //   121: aload 18
    //   123: iload 23
    //   125: aaload
    //   126: ldc 126
    //   128: invokevirtual 114	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   131: astore 96
    //   133: aload 96
    //   135: arraylength
    //   136: ifle +2474 -> 2610
    //   139: iconst_0
    //   140: istore 97
    //   142: iload 97
    //   144: aload 96
    //   146: arraylength
    //   147: if_icmpge +2463 -> 2610
    //   150: aload 96
    //   152: iload 97
    //   154: aaload
    //   155: ldc 95
    //   157: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   160: ifeq +36 -> 196
    //   163: iload 97
    //   165: ifne +13 -> 178
    //   168: new 37	java/lang/Exception
    //   171: dup
    //   172: ldc 132
    //   174: invokespecial 72	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   177: athrow
    //   178: aload 96
    //   180: iload 97
    //   182: iconst_1
    //   183: isub
    //   184: aaload
    //   185: astore 22
    //   187: aload 96
    //   189: iconst_0
    //   190: aaload
    //   191: astore 21
    //   193: goto +2411 -> 2604
    //   196: aload 96
    //   198: iload 97
    //   200: aaload
    //   201: ldc 134
    //   203: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   206: ifeq +2398 -> 2604
    //   209: iload 97
    //   211: ifne +13 -> 224
    //   214: new 37	java/lang/Exception
    //   217: dup
    //   218: ldc 132
    //   220: invokespecial 72	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   223: athrow
    //   224: aload 96
    //   226: iload 97
    //   228: iconst_1
    //   229: isub
    //   230: aaload
    //   231: astore 20
    //   233: aload 96
    //   235: iconst_0
    //   236: aaload
    //   237: astore 19
    //   239: goto +2365 -> 2604
    //   242: ldc 74
    //   244: aload_0
    //   245: new 10	java/lang/StringBuilder
    //   248: dup
    //   249: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   252: ldc 136
    //   254: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   257: aload 22
    //   259: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: ldc 138
    //   264: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: aload 21
    //   269: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: ldc 140
    //   274: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: aload 20
    //   279: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: ldc 142
    //   284: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: aload 19
    //   289: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   295: invokestatic 145	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   298: aload 22
    //   300: ifnull +43 -> 343
    //   303: aload 22
    //   305: ldc 147
    //   307: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   310: ifne +33 -> 343
    //   313: aload 22
    //   315: ldc 61
    //   317: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   320: ifne +2277 -> 2597
    //   323: aload 22
    //   325: ldc 153
    //   327: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   330: ifne +2267 -> 2597
    //   333: aload 22
    //   335: ldc 155
    //   337: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   340: ifne +2257 -> 2597
    //   343: aload 21
    //   345: ifnull +43 -> 388
    //   348: aload 21
    //   350: ldc 147
    //   352: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   355: ifne +33 -> 388
    //   358: aload 21
    //   360: ldc 61
    //   362: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   365: ifne +2225 -> 2590
    //   368: aload 21
    //   370: ldc 153
    //   372: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   375: ifne +2215 -> 2590
    //   378: aload 21
    //   380: ldc 155
    //   382: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   385: ifne +2205 -> 2590
    //   388: aload 20
    //   390: ifnull +43 -> 433
    //   393: aload 20
    //   395: ldc 147
    //   397: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   400: ifne +33 -> 433
    //   403: aload 20
    //   405: ldc 61
    //   407: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   410: ifne +2173 -> 2583
    //   413: aload 20
    //   415: ldc 153
    //   417: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   420: ifne +2163 -> 2583
    //   423: aload 20
    //   425: ldc 155
    //   427: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   430: ifne +2153 -> 2583
    //   433: aload 19
    //   435: ifnull +43 -> 478
    //   438: aload 19
    //   440: ldc 147
    //   442: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   445: ifne +33 -> 478
    //   448: aload 19
    //   450: ldc 61
    //   452: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   455: ifne +2161 -> 2616
    //   458: aload 19
    //   460: ldc 153
    //   462: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   465: ifne +2151 -> 2616
    //   468: aload 19
    //   470: ldc 155
    //   472: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   475: ifne +2141 -> 2616
    //   478: new 37	java/lang/Exception
    //   481: dup
    //   482: ldc 157
    //   484: invokespecial 72	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   487: athrow
    //   488: ldc 74
    //   490: aload_0
    //   491: new 10	java/lang/StringBuilder
    //   494: dup
    //   495: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   498: ldc 159
    //   500: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   503: aload 24
    //   505: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   508: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   511: invokestatic 145	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   514: iload 11
    //   516: ifeq +2055 -> 2571
    //   519: aload_2
    //   520: ldc 95
    //   522: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   525: ifeq +2046 -> 2571
    //   528: new 51	java/io/File
    //   531: dup
    //   532: ldc 161
    //   534: invokespecial 62	java/io/File:<init>	(Ljava/lang/String;)V
    //   537: astore 68
    //   539: aload 68
    //   541: invokevirtual 66	java/io/File:exists	()Z
    //   544: istore 69
    //   546: new 51	java/io/File
    //   549: dup
    //   550: ldc 163
    //   552: invokespecial 62	java/io/File:<init>	(Ljava/lang/String;)V
    //   555: astore 70
    //   557: new 165	java/util/LinkedList
    //   560: dup
    //   561: invokespecial 166	java/util/LinkedList:<init>	()V
    //   564: astore 71
    //   566: aload 70
    //   568: invokevirtual 66	java/io/File:exists	()Z
    //   571: istore 72
    //   573: iload 72
    //   575: ifeq +68 -> 643
    //   578: new 168	java/io/FileReader
    //   581: dup
    //   582: aload 70
    //   584: invokespecial 171	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   587: astore 91
    //   589: new 173	java/io/BufferedReader
    //   592: dup
    //   593: aload 91
    //   595: invokespecial 176	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   598: astore 92
    //   600: aload 92
    //   602: invokevirtual 179	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   605: astore 94
    //   607: aload 94
    //   609: ifnull +29 -> 638
    //   612: aload 71
    //   614: aload 94
    //   616: invokevirtual 182	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   619: pop
    //   620: goto -20 -> 600
    //   623: astore 93
    //   625: aload 92
    //   627: ifnull +8 -> 635
    //   630: aload 92
    //   632: invokevirtual 183	java/io/BufferedReader:close	()V
    //   635: aload 93
    //   637: athrow
    //   638: aload 92
    //   640: invokevirtual 183	java/io/BufferedReader:close	()V
    //   643: aload 71
    //   645: ldc 185
    //   647: invokevirtual 188	java/util/LinkedList:contains	(Ljava/lang/Object;)Z
    //   650: ifeq +20 -> 670
    //   653: aload 71
    //   655: ldc 190
    //   657: invokevirtual 188	java/util/LinkedList:contains	(Ljava/lang/Object;)Z
    //   660: istore 90
    //   662: aconst_null
    //   663: astore 75
    //   665: iload 90
    //   667: ifne +96 -> 763
    //   670: aload 71
    //   672: ldc 185
    //   674: invokevirtual 188	java/util/LinkedList:contains	(Ljava/lang/Object;)Z
    //   677: ifne +11 -> 688
    //   680: aload 71
    //   682: ldc 185
    //   684: invokevirtual 182	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   687: pop
    //   688: aload 71
    //   690: ldc 190
    //   692: invokevirtual 188	java/util/LinkedList:contains	(Ljava/lang/Object;)Z
    //   695: ifne +11 -> 706
    //   698: aload 71
    //   700: ldc 190
    //   702: invokevirtual 182	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   705: pop
    //   706: new 10	java/lang/StringBuilder
    //   709: dup
    //   710: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   713: astore 73
    //   715: aload 71
    //   717: invokevirtual 194	java/util/LinkedList:iterator	()Ljava/util/Iterator;
    //   720: astore 74
    //   722: aload 74
    //   724: invokeinterface 199 1 0
    //   729: ifeq +27 -> 756
    //   732: aload 73
    //   734: aload 74
    //   736: invokeinterface 203 1 0
    //   741: checkcast 110	java/lang/String
    //   744: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   747: ldc 108
    //   749: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   752: pop
    //   753: goto -31 -> 722
    //   756: aload 73
    //   758: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   761: astore 75
    //   763: iload 69
    //   765: ifeq +1792 -> 2557
    //   768: new 165	java/util/LinkedList
    //   771: dup
    //   772: invokespecial 166	java/util/LinkedList:<init>	()V
    //   775: astore 76
    //   777: new 173	java/io/BufferedReader
    //   780: dup
    //   781: new 168	java/io/FileReader
    //   784: dup
    //   785: aload 68
    //   787: invokespecial 171	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   790: invokespecial 176	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   793: astore 77
    //   795: aload 77
    //   797: invokevirtual 179	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   800: astore 79
    //   802: aload 79
    //   804: ifnull +58 -> 862
    //   807: aload 79
    //   809: ldc 205
    //   811: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   814: ifne +29 -> 843
    //   817: aload 76
    //   819: aload 79
    //   821: invokevirtual 182	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   824: pop
    //   825: goto -30 -> 795
    //   828: astore 78
    //   830: aload 77
    //   832: ifnull +8 -> 840
    //   835: aload 77
    //   837: invokevirtual 183	java/io/BufferedReader:close	()V
    //   840: aload 78
    //   842: athrow
    //   843: aload 76
    //   845: ldc 185
    //   847: invokevirtual 182	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   850: pop
    //   851: aload 76
    //   853: ldc 190
    //   855: invokevirtual 182	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   858: pop
    //   859: goto -64 -> 795
    //   862: aload 77
    //   864: invokevirtual 183	java/io/BufferedReader:close	()V
    //   867: new 10	java/lang/StringBuilder
    //   870: dup
    //   871: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   874: astore 80
    //   876: aload 76
    //   878: invokevirtual 194	java/util/LinkedList:iterator	()Ljava/util/Iterator;
    //   881: astore 81
    //   883: aload 81
    //   885: invokeinterface 199 1 0
    //   890: ifeq +27 -> 917
    //   893: aload 80
    //   895: aload 81
    //   897: invokeinterface 203 1 0
    //   902: checkcast 110	java/lang/String
    //   905: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   908: ldc 108
    //   910: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   913: pop
    //   914: goto -31 -> 883
    //   917: aload 80
    //   919: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   922: astore 82
    //   924: iload 69
    //   926: istore 25
    //   928: aload 75
    //   930: astore 27
    //   932: aload 82
    //   934: astore 26
    //   936: iload_3
    //   937: ifeq +865 -> 1802
    //   940: new 51	java/io/File
    //   943: dup
    //   944: getstatic 34	com/avast/android/generic/util/ag:a	Ljava/lang/String;
    //   947: invokespecial 62	java/io/File:<init>	(Ljava/lang/String;)V
    //   950: astore 28
    //   952: aload 28
    //   954: invokevirtual 208	java/io/File:createNewFile	()Z
    //   957: pop
    //   958: new 118	java/util/zip/ZipOutputStream
    //   961: dup
    //   962: new 210	java/io/BufferedOutputStream
    //   965: dup
    //   966: new 212	java/io/FileOutputStream
    //   969: dup
    //   970: aload 28
    //   972: invokespecial 213	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   975: invokespecial 216	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   978: invokespecial 217	java/util/zip/ZipOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   981: astore 30
    //   983: aload 10
    //   985: ifnonnull +23 -> 1008
    //   988: getstatic 223	android/os/Build$VERSION:SDK_INT	I
    //   991: istore 47
    //   993: aconst_null
    //   994: astore 12
    //   996: iload 47
    //   998: bipush 8
    //   1000: if_icmpge +429 -> 1429
    //   1003: getstatic 229	com/avast/android/generic/util/am:b	Lcom/avast/android/generic/util/am;
    //   1006: astore 10
    //   1008: aconst_null
    //   1009: astore 12
    //   1011: iload 11
    //   1013: ifeq +136 -> 1149
    //   1016: aconst_null
    //   1017: astore 12
    //   1019: aload 27
    //   1021: ifnull +60 -> 1081
    //   1024: aload 30
    //   1026: new 231	java/util/zip/ZipEntry
    //   1029: dup
    //   1030: ldc 233
    //   1032: invokespecial 234	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   1035: invokevirtual 238	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   1038: new 123	java/io/BufferedInputStream
    //   1041: dup
    //   1042: new 240	java/io/ByteArrayInputStream
    //   1045: dup
    //   1046: aload 27
    //   1048: ldc 242
    //   1050: invokevirtual 246	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   1053: invokespecial 249	java/io/ByteArrayInputStream:<init>	([B)V
    //   1056: invokespecial 252	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   1059: astore 46
    //   1061: aload 46
    //   1063: aload 30
    //   1065: invokestatic 255	com/avast/android/generic/util/ag:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   1068: aload 46
    //   1070: invokevirtual 124	java/io/BufferedInputStream:close	()V
    //   1073: aconst_null
    //   1074: astore 12
    //   1076: aload 30
    //   1078: invokevirtual 258	java/util/zip/ZipOutputStream:closeEntry	()V
    //   1081: iload 25
    //   1083: ifeq +1468 -> 2551
    //   1086: aload 26
    //   1088: ifnull +1463 -> 2551
    //   1091: aload 30
    //   1093: new 231	java/util/zip/ZipEntry
    //   1096: dup
    //   1097: ldc_w 260
    //   1100: invokespecial 234	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   1103: invokevirtual 238	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   1106: new 123	java/io/BufferedInputStream
    //   1109: dup
    //   1110: new 240	java/io/ByteArrayInputStream
    //   1113: dup
    //   1114: aload 26
    //   1116: ldc 242
    //   1118: invokevirtual 246	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   1121: invokespecial 249	java/io/ByteArrayInputStream:<init>	([B)V
    //   1124: invokespecial 252	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   1127: astore 12
    //   1129: aload 12
    //   1131: aload 30
    //   1133: invokestatic 255	com/avast/android/generic/util/ag:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   1136: aload 12
    //   1138: invokevirtual 124	java/io/BufferedInputStream:close	()V
    //   1141: aconst_null
    //   1142: astore 12
    //   1144: aload 30
    //   1146: invokevirtual 258	java/util/zip/ZipOutputStream:closeEntry	()V
    //   1149: getstatic 229	com/avast/android/generic/util/am:b	Lcom/avast/android/generic/util/am;
    //   1152: astore 31
    //   1154: aload 10
    //   1156: astore 32
    //   1158: aconst_null
    //   1159: astore 12
    //   1161: aload 32
    //   1163: aload 31
    //   1165: if_acmpne +272 -> 1437
    //   1168: ldc_w 262
    //   1171: astore 42
    //   1173: aload 30
    //   1175: new 231	java/util/zip/ZipEntry
    //   1178: dup
    //   1179: ldc_w 264
    //   1182: invokespecial 234	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   1185: invokevirtual 238	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   1188: new 10	java/lang/StringBuilder
    //   1191: dup
    //   1192: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   1195: ldc_w 266
    //   1198: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1201: astore 43
    //   1203: aconst_null
    //   1204: astore 12
    //   1206: iload 16
    //   1208: ifeq +1415 -> 2623
    //   1211: aload 43
    //   1213: aload 42
    //   1215: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1218: ldc_w 268
    //   1221: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1224: ldc_w 270
    //   1227: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1230: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1233: astore 44
    //   1235: aconst_null
    //   1236: astore 12
    //   1238: iload 11
    //   1240: ifeq +73 -> 1313
    //   1243: aconst_null
    //   1244: astore 12
    //   1246: aload 27
    //   1248: ifnull +26 -> 1274
    //   1251: new 10	java/lang/StringBuilder
    //   1254: dup
    //   1255: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   1258: aload 44
    //   1260: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1263: ldc_w 272
    //   1266: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1269: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1272: astore 44
    //   1274: aconst_null
    //   1275: astore 12
    //   1277: iload 25
    //   1279: ifeq +34 -> 1313
    //   1282: aconst_null
    //   1283: astore 12
    //   1285: aload 26
    //   1287: ifnull +26 -> 1313
    //   1290: new 10	java/lang/StringBuilder
    //   1293: dup
    //   1294: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   1297: aload 44
    //   1299: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1302: ldc_w 274
    //   1305: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1308: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1311: astore 44
    //   1313: new 10	java/lang/StringBuilder
    //   1316: dup
    //   1317: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   1320: aload 44
    //   1322: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1325: ldc_w 276
    //   1328: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1331: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1334: astore 45
    //   1336: aload 45
    //   1338: astore 40
    //   1340: aload 30
    //   1342: aload 40
    //   1344: invokevirtual 279	java/lang/String:getBytes	()[B
    //   1347: invokevirtual 282	java/util/zip/ZipOutputStream:write	([B)V
    //   1350: aload 30
    //   1352: invokevirtual 258	java/util/zip/ZipOutputStream:closeEntry	()V
    //   1355: aload 30
    //   1357: new 231	java/util/zip/ZipEntry
    //   1360: dup
    //   1361: aload_2
    //   1362: iconst_1
    //   1363: invokevirtual 286	java/lang/String:substring	(I)Ljava/lang/String;
    //   1366: invokespecial 234	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   1369: invokevirtual 238	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   1372: new 123	java/io/BufferedInputStream
    //   1375: dup
    //   1376: aload_0
    //   1377: aload_1
    //   1378: invokevirtual 290	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   1381: invokespecial 252	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   1384: astore 12
    //   1386: aload 12
    //   1388: aload 30
    //   1390: invokestatic 255	com/avast/android/generic/util/ag:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   1393: aload 12
    //   1395: invokevirtual 124	java/io/BufferedInputStream:close	()V
    //   1398: aconst_null
    //   1399: astore 12
    //   1401: aload 30
    //   1403: invokevirtual 258	java/util/zip/ZipOutputStream:closeEntry	()V
    //   1406: aload 30
    //   1408: invokevirtual 293	java/util/zip/ZipOutputStream:flush	()V
    //   1411: aload 30
    //   1413: invokevirtual 121	java/util/zip/ZipOutputStream:close	()V
    //   1416: aload_0
    //   1417: iload 4
    //   1419: iload 5
    //   1421: getstatic 34	com/avast/android/generic/util/ag:a	Ljava/lang/String;
    //   1424: aconst_null
    //   1425: invokestatic 298	com/avast/android/generic/c/d:a	(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    //   1428: return
    //   1429: getstatic 300	com/avast/android/generic/util/am:a	Lcom/avast/android/generic/util/am;
    //   1432: astore 10
    //   1434: goto -426 -> 1008
    //   1437: ldc_w 302
    //   1440: astore 33
    //   1442: aload 30
    //   1444: new 231	java/util/zip/ZipEntry
    //   1447: dup
    //   1448: ldc_w 304
    //   1451: invokespecial 234	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   1454: invokevirtual 238	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   1457: new 123	java/io/BufferedInputStream
    //   1460: dup
    //   1461: aload_0
    //   1462: invokevirtual 308	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   1465: iload 8
    //   1467: invokevirtual 314	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   1470: invokespecial 252	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   1473: astore 34
    //   1475: aload 34
    //   1477: aload 30
    //   1479: invokestatic 255	com/avast/android/generic/util/ag:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   1482: aload 34
    //   1484: invokevirtual 124	java/io/BufferedInputStream:close	()V
    //   1487: aconst_null
    //   1488: astore 12
    //   1490: aload 30
    //   1492: invokevirtual 258	java/util/zip/ZipOutputStream:closeEntry	()V
    //   1495: aload 30
    //   1497: new 231	java/util/zip/ZipEntry
    //   1500: dup
    //   1501: ldc_w 316
    //   1504: invokespecial 234	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   1507: invokevirtual 238	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   1510: new 10	java/lang/StringBuilder
    //   1513: dup
    //   1514: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   1517: ldc_w 318
    //   1520: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1523: aload 24
    //   1525: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1528: ldc_w 320
    //   1531: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1534: ldc_w 322
    //   1537: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1540: aload 24
    //   1542: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1545: ldc_w 324
    //   1548: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1551: astore 35
    //   1553: getstatic 329	com/avast/android/generic/util/o:b	Lcom/avast/android/generic/util/o;
    //   1556: astore 36
    //   1558: aconst_null
    //   1559: astore 12
    //   1561: aload 9
    //   1563: aload 36
    //   1565: if_acmpeq +1065 -> 2630
    //   1568: getstatic 332	com/avast/android/generic/util/o:c	Lcom/avast/android/generic/util/o;
    //   1571: astore 41
    //   1573: aconst_null
    //   1574: astore 12
    //   1576: aload 9
    //   1578: aload 41
    //   1580: if_acmpne +1058 -> 2638
    //   1583: aconst_null
    //   1584: astore 12
    //   1586: goto +1044 -> 2630
    //   1589: aload 35
    //   1591: aload 37
    //   1593: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1596: ldc_w 334
    //   1599: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1602: aload 24
    //   1604: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1607: ldc_w 336
    //   1610: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1613: ldc_w 338
    //   1616: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1619: ldc_w 340
    //   1622: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1625: ldc_w 342
    //   1628: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1631: ldc_w 342
    //   1634: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1637: ldc_w 344
    //   1640: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1643: ldc_w 346
    //   1646: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1649: astore 38
    //   1651: aconst_null
    //   1652: astore 12
    //   1654: iload 16
    //   1656: ifeq +139 -> 1795
    //   1659: aload 38
    //   1661: aload 33
    //   1663: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1666: ldc_w 348
    //   1669: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1672: ldc_w 350
    //   1675: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1678: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1681: astore 39
    //   1683: aconst_null
    //   1684: astore 12
    //   1686: iload 11
    //   1688: ifeq +81 -> 1769
    //   1691: aconst_null
    //   1692: astore 12
    //   1694: iload 11
    //   1696: ifeq +73 -> 1769
    //   1699: aconst_null
    //   1700: astore 12
    //   1702: aload 27
    //   1704: ifnull +26 -> 1730
    //   1707: new 10	java/lang/StringBuilder
    //   1710: dup
    //   1711: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   1714: aload 39
    //   1716: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1719: ldc_w 352
    //   1722: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1725: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1728: astore 39
    //   1730: aconst_null
    //   1731: astore 12
    //   1733: iload 25
    //   1735: ifeq +34 -> 1769
    //   1738: aconst_null
    //   1739: astore 12
    //   1741: aload 26
    //   1743: ifnull +26 -> 1769
    //   1746: new 10	java/lang/StringBuilder
    //   1749: dup
    //   1750: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   1753: aload 39
    //   1755: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1758: ldc_w 354
    //   1761: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1764: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1767: astore 39
    //   1769: new 10	java/lang/StringBuilder
    //   1772: dup
    //   1773: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   1776: aload 39
    //   1778: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1781: ldc_w 356
    //   1784: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1787: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1790: astore 40
    //   1792: goto -452 -> 1340
    //   1795: ldc 147
    //   1797: astore 33
    //   1799: goto -140 -> 1659
    //   1802: iload 11
    //   1804: ifeq +735 -> 2539
    //   1807: aload 27
    //   1809: ifnull +724 -> 2533
    //   1812: ldc_w 358
    //   1815: ldc_w 358
    //   1818: aload_0
    //   1819: invokevirtual 361	android/content/Context:getCacheDir	()Ljava/io/File;
    //   1822: invokestatic 365	java/io/File:createTempFile	(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    //   1825: astore 50
    //   1827: new 123	java/io/BufferedInputStream
    //   1830: dup
    //   1831: new 240	java/io/ByteArrayInputStream
    //   1834: dup
    //   1835: aload 27
    //   1837: ldc 242
    //   1839: invokevirtual 246	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   1842: invokespecial 249	java/io/ByteArrayInputStream:<init>	([B)V
    //   1845: invokespecial 252	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   1848: astore 48
    //   1850: aload 48
    //   1852: new 212	java/io/FileOutputStream
    //   1855: dup
    //   1856: aload 50
    //   1858: invokespecial 213	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   1861: invokestatic 255	com/avast/android/generic/util/ag:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   1864: aload 48
    //   1866: invokevirtual 124	java/io/BufferedInputStream:close	()V
    //   1869: iload 25
    //   1871: ifeq +653 -> 2524
    //   1874: aload 26
    //   1876: ifnull +648 -> 2524
    //   1879: ldc_w 367
    //   1882: ldc_w 367
    //   1885: aload_0
    //   1886: invokevirtual 361	android/content/Context:getCacheDir	()Ljava/io/File;
    //   1889: invokestatic 365	java/io/File:createTempFile	(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    //   1892: astore 67
    //   1894: new 123	java/io/BufferedInputStream
    //   1897: dup
    //   1898: new 240	java/io/ByteArrayInputStream
    //   1901: dup
    //   1902: aload 26
    //   1904: ldc 242
    //   1906: invokevirtual 246	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   1909: invokespecial 249	java/io/ByteArrayInputStream:<init>	([B)V
    //   1912: invokespecial 252	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   1915: astore 48
    //   1917: aload 48
    //   1919: new 212	java/io/FileOutputStream
    //   1922: dup
    //   1923: aload 67
    //   1925: invokespecial 213	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   1928: invokestatic 255	com/avast/android/generic/util/ag:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   1931: aload 48
    //   1933: invokevirtual 124	java/io/BufferedInputStream:close	()V
    //   1936: aconst_null
    //   1937: astore 48
    //   1939: aload 67
    //   1941: astore 49
    //   1943: aload_0
    //   1944: invokevirtual 56	android/content/Context:getFilesDir	()Ljava/io/File;
    //   1947: invokevirtual 59	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   1950: astore 52
    //   1952: new 10	java/lang/StringBuilder
    //   1955: dup
    //   1956: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   1959: ldc_w 369
    //   1962: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1965: aload 24
    //   1967: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1970: ldc_w 371
    //   1973: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1976: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1979: astore 53
    //   1981: aconst_null
    //   1982: astore 48
    //   1984: iload 11
    //   1986: ifeq +139 -> 2125
    //   1989: aconst_null
    //   1990: astore 48
    //   1992: aload 50
    //   1994: ifnull +63 -> 2057
    //   1997: new 10	java/lang/StringBuilder
    //   2000: dup
    //   2001: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   2004: aload 53
    //   2006: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2009: ldc_w 373
    //   2012: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2015: aload 50
    //   2017: invokevirtual 59	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   2020: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2023: ldc_w 375
    //   2026: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2029: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2032: astore 66
    //   2034: new 10	java/lang/StringBuilder
    //   2037: dup
    //   2038: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   2041: aload 66
    //   2043: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2046: ldc_w 377
    //   2049: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2052: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2055: astore 53
    //   2057: aconst_null
    //   2058: astore 48
    //   2060: aload 49
    //   2062: ifnull +63 -> 2125
    //   2065: new 10	java/lang/StringBuilder
    //   2068: dup
    //   2069: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   2072: aload 53
    //   2074: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2077: ldc_w 373
    //   2080: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2083: aload 49
    //   2085: invokevirtual 59	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   2088: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2091: ldc_w 379
    //   2094: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2097: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2100: astore 65
    //   2102: new 10	java/lang/StringBuilder
    //   2105: dup
    //   2106: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   2109: aload 65
    //   2111: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2114: ldc_w 381
    //   2117: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2120: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2123: astore 53
    //   2125: new 10	java/lang/StringBuilder
    //   2128: dup
    //   2129: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   2132: aload 53
    //   2134: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2137: astore 54
    //   2139: aconst_null
    //   2140: astore 48
    //   2142: iload 16
    //   2144: ifeq +217 -> 2361
    //   2147: ldc_w 383
    //   2150: astore 55
    //   2152: aload 54
    //   2154: aload 55
    //   2156: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2159: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2162: astore 56
    //   2164: new 10	java/lang/StringBuilder
    //   2167: dup
    //   2168: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   2171: aload 56
    //   2173: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2176: ldc_w 373
    //   2179: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2182: astore 57
    //   2184: aconst_null
    //   2185: astore 48
    //   2187: iload 6
    //   2189: ifeq +182 -> 2371
    //   2192: aload 57
    //   2194: aload_1
    //   2195: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2198: ldc_w 385
    //   2201: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2204: aload_2
    //   2205: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2208: ldc 108
    //   2210: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2213: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2216: astore 61
    //   2218: new 10	java/lang/StringBuilder
    //   2221: dup
    //   2222: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   2225: aload 61
    //   2227: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2230: ldc_w 387
    //   2233: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2236: aload_2
    //   2237: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2240: ldc 108
    //   2242: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2245: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2248: astore 62
    //   2250: new 10	java/lang/StringBuilder
    //   2253: dup
    //   2254: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   2257: aload 62
    //   2259: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2262: ldc_w 389
    //   2265: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2268: aload 24
    //   2270: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2273: ldc_w 391
    //   2276: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2279: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2282: astore 63
    //   2284: aconst_null
    //   2285: astore 48
    //   2287: iload 7
    //   2289: ifeq +26 -> 2315
    //   2292: new 10	java/lang/StringBuilder
    //   2295: dup
    //   2296: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   2299: aload 63
    //   2301: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2304: ldc_w 393
    //   2307: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2310: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2313: astore 63
    //   2315: aload 63
    //   2317: invokestatic 396	com/avast/android/generic/util/h:a	(Ljava/lang/String;)Ljava/lang/String;
    //   2320: pop
    //   2321: ldc 74
    //   2323: aload_0
    //   2324: ldc_w 398
    //   2327: invokestatic 145	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   2330: goto -902 -> 1428
    //   2333: astore 51
    //   2335: ldc 74
    //   2337: aload_0
    //   2338: ldc_w 400
    //   2341: aload 51
    //   2343: invokestatic 403	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   2346: aload 51
    //   2348: athrow
    //   2349: astore 14
    //   2351: aload 48
    //   2353: astore 12
    //   2355: aconst_null
    //   2356: astore 15
    //   2358: goto -2283 -> 75
    //   2361: ldc 147
    //   2363: astore 55
    //   2365: aconst_null
    //   2366: astore 48
    //   2368: goto -216 -> 2152
    //   2371: new 10	java/lang/StringBuilder
    //   2374: dup
    //   2375: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   2378: aload 52
    //   2380: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2383: astore 58
    //   2385: aload 52
    //   2387: ldc 61
    //   2389: invokevirtual 406	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   2392: istore 59
    //   2394: aconst_null
    //   2395: astore 48
    //   2397: iload 59
    //   2399: ifeq +28 -> 2427
    //   2402: ldc 147
    //   2404: astore 60
    //   2406: aload 58
    //   2408: aload 60
    //   2410: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2413: aload_1
    //   2414: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2417: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2420: astore_1
    //   2421: aconst_null
    //   2422: astore 48
    //   2424: goto -232 -> 2192
    //   2427: ldc 61
    //   2429: astore 60
    //   2431: goto -25 -> 2406
    //   2434: astore 14
    //   2436: aload 30
    //   2438: astore 15
    //   2440: goto -2365 -> 75
    //   2443: astore 14
    //   2445: aload 46
    //   2447: astore 12
    //   2449: aload 30
    //   2451: astore 15
    //   2453: goto -2378 -> 75
    //   2456: astore 14
    //   2458: aload 30
    //   2460: astore 15
    //   2462: aconst_null
    //   2463: astore 12
    //   2465: goto -2390 -> 75
    //   2468: astore 14
    //   2470: aload 34
    //   2472: astore 12
    //   2474: aload 30
    //   2476: astore 15
    //   2478: goto -2403 -> 75
    //   2481: astore 14
    //   2483: aconst_null
    //   2484: astore 15
    //   2486: aconst_null
    //   2487: astore 12
    //   2489: goto -2414 -> 75
    //   2492: astore 51
    //   2494: aconst_null
    //   2495: astore 48
    //   2497: goto -162 -> 2335
    //   2500: astore 51
    //   2502: aconst_null
    //   2503: astore 48
    //   2505: goto -170 -> 2335
    //   2508: astore 78
    //   2510: aconst_null
    //   2511: astore 77
    //   2513: goto -1683 -> 830
    //   2516: astore 93
    //   2518: aconst_null
    //   2519: astore 92
    //   2521: goto -1896 -> 625
    //   2524: aconst_null
    //   2525: astore 48
    //   2527: aconst_null
    //   2528: astore 49
    //   2530: goto -587 -> 1943
    //   2533: aconst_null
    //   2534: astore 50
    //   2536: goto -667 -> 1869
    //   2539: aconst_null
    //   2540: astore 48
    //   2542: aconst_null
    //   2543: astore 49
    //   2545: aconst_null
    //   2546: astore 50
    //   2548: goto -605 -> 1943
    //   2551: aconst_null
    //   2552: astore 12
    //   2554: goto -1405 -> 1149
    //   2557: aload 75
    //   2559: astore 27
    //   2561: iload 69
    //   2563: istore 25
    //   2565: aconst_null
    //   2566: astore 26
    //   2568: goto -1632 -> 936
    //   2571: iconst_0
    //   2572: istore 25
    //   2574: aconst_null
    //   2575: astore 26
    //   2577: aconst_null
    //   2578: astore 27
    //   2580: goto -1644 -> 936
    //   2583: aload 20
    //   2585: astore 24
    //   2587: goto -2099 -> 488
    //   2590: aload 21
    //   2592: astore 24
    //   2594: goto -2106 -> 488
    //   2597: aload 22
    //   2599: astore 24
    //   2601: goto -2113 -> 488
    //   2604: iinc 97 1
    //   2607: goto -2465 -> 142
    //   2610: iinc 23 1
    //   2613: goto -2500 -> 113
    //   2616: aload 19
    //   2618: astore 24
    //   2620: goto -2132 -> 488
    //   2623: ldc 147
    //   2625: astore 42
    //   2627: goto -1416 -> 1211
    //   2630: ldc_w 408
    //   2633: astore 37
    //   2635: goto -1046 -> 1589
    //   2638: ldc_w 410
    //   2641: astore 37
    //   2643: goto -1054 -> 1589
    //
    // Exception table:
    //   from	to	target	type
    //   12	70	70	java/lang/Exception
    //   113	573	70	java/lang/Exception
    //   630	638	70	java/lang/Exception
    //   643	777	70	java/lang/Exception
    //   835	843	70	java/lang/Exception
    //   867	983	70	java/lang/Exception
    //   600	620	623	java/lang/Exception
    //   638	643	623	java/lang/Exception
    //   795	825	828	java/lang/Exception
    //   843	867	828	java/lang/Exception
    //   1850	1869	2333	java/lang/Exception
    //   1917	2330	2333	java/lang/Exception
    //   2361	2431	2333	java/lang/Exception
    //   2335	2349	2349	java/lang/Exception
    //   988	1061	2434	java/lang/Exception
    //   1076	1081	2434	java/lang/Exception
    //   1129	1336	2434	java/lang/Exception
    //   1386	1416	2434	java/lang/Exception
    //   1429	1475	2434	java/lang/Exception
    //   1490	1799	2434	java/lang/Exception
    //   1061	1073	2443	java/lang/Exception
    //   1091	1129	2456	java/lang/Exception
    //   1340	1386	2456	java/lang/Exception
    //   1475	1487	2468	java/lang/Exception
    //   1416	1428	2481	java/lang/Exception
    //   1812	1850	2492	java/lang/Exception
    //   1879	1917	2500	java/lang/Exception
    //   777	795	2508	java/lang/Exception
    //   578	600	2516	java/lang/Exception
  }

  // ERROR //
  public static void a(Context paramContext, String paramString, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, am paramam)
  {
    // Byte code:
    //   0: new 51	java/io/File
    //   3: dup
    //   4: ldc_w 413
    //   7: invokespecial 62	java/io/File:<init>	(Ljava/lang/String;)V
    //   10: invokevirtual 66	java/io/File:exists	()Z
    //   13: istore 7
    //   15: new 51	java/io/File
    //   18: dup
    //   19: ldc 99
    //   21: invokespecial 62	java/io/File:<init>	(Ljava/lang/String;)V
    //   24: invokevirtual 66	java/io/File:exists	()Z
    //   27: istore 8
    //   29: aload_1
    //   30: bipush 47
    //   32: invokevirtual 417	java/lang/String:lastIndexOf	(I)I
    //   35: istore 9
    //   37: iload 9
    //   39: iconst_m1
    //   40: if_icmple +16 -> 56
    //   43: iload 9
    //   45: iconst_1
    //   46: iadd
    //   47: istore 43
    //   49: aload_1
    //   50: iload 43
    //   52: invokevirtual 286	java/lang/String:substring	(I)Ljava/lang/String;
    //   55: astore_1
    //   56: new 10	java/lang/StringBuilder
    //   59: dup
    //   60: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   63: astore 10
    //   65: ldc 101
    //   67: aload 10
    //   69: invokestatic 106	com/avast/android/generic/util/h:a	(Ljava/lang/String;Ljava/lang/StringBuilder;)I
    //   72: pop
    //   73: aload 10
    //   75: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: ldc 108
    //   80: invokevirtual 114	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   83: astore 15
    //   85: aload 15
    //   87: arraylength
    //   88: iconst_1
    //   89: if_icmpge +44 -> 133
    //   92: new 37	java/lang/Exception
    //   95: dup
    //   96: ldc 116
    //   98: invokespecial 72	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   101: athrow
    //   102: astore 11
    //   104: aconst_null
    //   105: astore 12
    //   107: aconst_null
    //   108: astore 13
    //   110: aload 13
    //   112: ifnull +8 -> 120
    //   115: aload 13
    //   117: invokevirtual 121	java/util/zip/ZipOutputStream:close	()V
    //   120: aload 12
    //   122: ifnull +8 -> 130
    //   125: aload 12
    //   127: invokevirtual 124	java/io/BufferedInputStream:close	()V
    //   130: aload 11
    //   132: athrow
    //   133: aconst_null
    //   134: astore 16
    //   136: aconst_null
    //   137: astore 17
    //   139: aconst_null
    //   140: astore 18
    //   142: aconst_null
    //   143: astore 19
    //   145: iconst_0
    //   146: istore 20
    //   148: iload 20
    //   150: aload 15
    //   152: arraylength
    //   153: if_icmpge +124 -> 277
    //   156: aload 15
    //   158: iload 20
    //   160: aaload
    //   161: ldc 126
    //   163: invokevirtual 114	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   166: astore 41
    //   168: aload 41
    //   170: arraylength
    //   171: ifle +1062 -> 1233
    //   174: iconst_0
    //   175: istore 42
    //   177: iload 42
    //   179: aload 41
    //   181: arraylength
    //   182: if_icmpge +1051 -> 1233
    //   185: aload 41
    //   187: iload 42
    //   189: aaload
    //   190: ldc 95
    //   192: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   195: ifeq +36 -> 231
    //   198: iload 42
    //   200: ifne +13 -> 213
    //   203: new 37	java/lang/Exception
    //   206: dup
    //   207: ldc 132
    //   209: invokespecial 72	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   212: athrow
    //   213: aload 41
    //   215: iload 42
    //   217: iconst_1
    //   218: isub
    //   219: aaload
    //   220: astore 19
    //   222: aload 41
    //   224: iconst_0
    //   225: aaload
    //   226: astore 18
    //   228: goto +999 -> 1227
    //   231: aload 41
    //   233: iload 42
    //   235: aaload
    //   236: ldc 134
    //   238: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   241: ifeq +986 -> 1227
    //   244: iload 42
    //   246: ifne +13 -> 259
    //   249: new 37	java/lang/Exception
    //   252: dup
    //   253: ldc 132
    //   255: invokespecial 72	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   258: athrow
    //   259: aload 41
    //   261: iload 42
    //   263: iconst_1
    //   264: isub
    //   265: aaload
    //   266: astore 17
    //   268: aload 41
    //   270: iconst_0
    //   271: aaload
    //   272: astore 16
    //   274: goto +953 -> 1227
    //   277: ldc 74
    //   279: aload_0
    //   280: new 10	java/lang/StringBuilder
    //   283: dup
    //   284: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   287: ldc 136
    //   289: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   292: aload 19
    //   294: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: ldc 138
    //   299: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: aload 18
    //   304: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: ldc 140
    //   309: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: aload 17
    //   314: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   317: ldc 142
    //   319: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: aload 16
    //   324: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   327: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   330: invokestatic 145	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   333: aload 19
    //   335: ifnull +43 -> 378
    //   338: aload 19
    //   340: ldc 147
    //   342: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   345: ifne +33 -> 378
    //   348: aload 19
    //   350: ldc 61
    //   352: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   355: ifne +865 -> 1220
    //   358: aload 19
    //   360: ldc 153
    //   362: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   365: ifne +855 -> 1220
    //   368: aload 19
    //   370: ldc 155
    //   372: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   375: ifne +845 -> 1220
    //   378: aload 18
    //   380: ifnull +43 -> 423
    //   383: aload 18
    //   385: ldc 147
    //   387: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   390: ifne +33 -> 423
    //   393: aload 18
    //   395: ldc 61
    //   397: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   400: ifne +813 -> 1213
    //   403: aload 18
    //   405: ldc 153
    //   407: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   410: ifne +803 -> 1213
    //   413: aload 18
    //   415: ldc 155
    //   417: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   420: ifne +793 -> 1213
    //   423: aload 17
    //   425: ifnull +43 -> 468
    //   428: aload 17
    //   430: ldc 147
    //   432: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   435: ifne +33 -> 468
    //   438: aload 17
    //   440: ldc 61
    //   442: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   445: ifne +761 -> 1206
    //   448: aload 17
    //   450: ldc 153
    //   452: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   455: ifne +751 -> 1206
    //   458: aload 17
    //   460: ldc 155
    //   462: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   465: ifne +741 -> 1206
    //   468: aload 16
    //   470: ifnull +43 -> 513
    //   473: aload 16
    //   475: ldc 147
    //   477: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   480: ifne +33 -> 513
    //   483: aload 16
    //   485: ldc 61
    //   487: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   490: ifne +749 -> 1239
    //   493: aload 16
    //   495: ldc 153
    //   497: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   500: ifne +739 -> 1239
    //   503: aload 16
    //   505: ldc 155
    //   507: invokevirtual 151	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   510: ifne +729 -> 1239
    //   513: new 37	java/lang/Exception
    //   516: dup
    //   517: ldc 157
    //   519: invokespecial 72	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   522: athrow
    //   523: ldc 74
    //   525: aload_0
    //   526: new 10	java/lang/StringBuilder
    //   529: dup
    //   530: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   533: ldc 159
    //   535: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   538: aload 21
    //   540: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   543: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   546: invokestatic 145	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   549: iload_2
    //   550: ifeq +494 -> 1044
    //   553: new 51	java/io/File
    //   556: dup
    //   557: getstatic 34	com/avast/android/generic/util/ag:a	Ljava/lang/String;
    //   560: invokespecial 62	java/io/File:<init>	(Ljava/lang/String;)V
    //   563: astore 22
    //   565: aload 22
    //   567: invokevirtual 208	java/io/File:createNewFile	()Z
    //   570: pop
    //   571: new 118	java/util/zip/ZipOutputStream
    //   574: dup
    //   575: new 210	java/io/BufferedOutputStream
    //   578: dup
    //   579: new 212	java/io/FileOutputStream
    //   582: dup
    //   583: aload 22
    //   585: invokespecial 213	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   588: invokespecial 216	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   591: invokespecial 217	java/util/zip/ZipOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   594: astore 13
    //   596: aload 6
    //   598: ifnonnull +16 -> 614
    //   601: getstatic 223	android/os/Build$VERSION:SDK_INT	I
    //   604: bipush 8
    //   606: if_icmpge +154 -> 760
    //   609: getstatic 229	com/avast/android/generic/util/am:b	Lcom/avast/android/generic/util/am;
    //   612: astore 6
    //   614: getstatic 229	com/avast/android/generic/util/am:b	Lcom/avast/android/generic/util/am;
    //   617: astore 24
    //   619: aload 6
    //   621: aload 24
    //   623: if_acmpne +145 -> 768
    //   626: aload 13
    //   628: new 231	java/util/zip/ZipEntry
    //   631: dup
    //   632: ldc_w 264
    //   635: invokespecial 234	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   638: invokevirtual 238	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   641: ldc_w 419
    //   644: astore 30
    //   646: ldc_w 262
    //   649: astore 31
    //   651: new 10	java/lang/StringBuilder
    //   654: dup
    //   655: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   658: ldc_w 421
    //   661: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   664: aload_1
    //   665: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   668: ldc_w 423
    //   671: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   674: astore 32
    //   676: iload 7
    //   678: ifeq +568 -> 1246
    //   681: aload 32
    //   683: aload 30
    //   685: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   688: astore 33
    //   690: iload 8
    //   692: ifeq +561 -> 1253
    //   695: aload 33
    //   697: aload 31
    //   699: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   702: ldc_w 276
    //   705: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   708: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   711: astore 34
    //   713: aload 34
    //   715: astore 29
    //   717: aconst_null
    //   718: astore 12
    //   720: aload 13
    //   722: aload 29
    //   724: invokevirtual 279	java/lang/String:getBytes	()[B
    //   727: invokevirtual 282	java/util/zip/ZipOutputStream:write	([B)V
    //   730: aload 13
    //   732: invokevirtual 258	java/util/zip/ZipOutputStream:closeEntry	()V
    //   735: aload 13
    //   737: invokevirtual 293	java/util/zip/ZipOutputStream:flush	()V
    //   740: aload 13
    //   742: invokevirtual 121	java/util/zip/ZipOutputStream:close	()V
    //   745: aconst_null
    //   746: astore 13
    //   748: aload_0
    //   749: iload_3
    //   750: iload 4
    //   752: getstatic 34	com/avast/android/generic/util/ag:a	Ljava/lang/String;
    //   755: aconst_null
    //   756: invokestatic 298	com/avast/android/generic/c/d:a	(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    //   759: return
    //   760: getstatic 300	com/avast/android/generic/util/am:a	Lcom/avast/android/generic/util/am;
    //   763: astore 6
    //   765: goto -151 -> 614
    //   768: aload 13
    //   770: new 231	java/util/zip/ZipEntry
    //   773: dup
    //   774: ldc_w 304
    //   777: invokespecial 234	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   780: invokevirtual 238	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   783: new 123	java/io/BufferedInputStream
    //   786: dup
    //   787: aload_0
    //   788: invokevirtual 308	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   791: iload 5
    //   793: invokevirtual 314	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   796: invokespecial 252	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   799: astore 12
    //   801: aload 12
    //   803: aload 13
    //   805: invokestatic 255	com/avast/android/generic/util/ag:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   808: aload 12
    //   810: invokevirtual 124	java/io/BufferedInputStream:close	()V
    //   813: aconst_null
    //   814: astore 12
    //   816: aload 13
    //   818: invokevirtual 258	java/util/zip/ZipOutputStream:closeEntry	()V
    //   821: aload 13
    //   823: new 231	java/util/zip/ZipEntry
    //   826: dup
    //   827: ldc_w 316
    //   830: invokespecial 234	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   833: invokevirtual 238	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   836: ldc_w 425
    //   839: astore 25
    //   841: ldc_w 302
    //   844: astore 26
    //   846: new 10	java/lang/StringBuilder
    //   849: dup
    //   850: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   853: ldc_w 427
    //   856: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   859: aload 21
    //   861: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   864: ldc_w 320
    //   867: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   870: ldc_w 322
    //   873: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   876: aload 21
    //   878: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   881: ldc_w 324
    //   884: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   887: ldc_w 408
    //   890: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   893: ldc_w 334
    //   896: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   899: aload 21
    //   901: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   904: ldc_w 336
    //   907: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   910: ldc_w 338
    //   913: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   916: ldc_w 340
    //   919: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   922: ldc_w 342
    //   925: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   928: ldc_w 344
    //   931: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   934: ldc_w 346
    //   937: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   940: ldc_w 429
    //   943: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   946: aload_1
    //   947: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   950: ldc_w 431
    //   953: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   956: astore 27
    //   958: aconst_null
    //   959: astore 12
    //   961: iload 7
    //   963: ifeq +297 -> 1260
    //   966: aload 27
    //   968: aload 25
    //   970: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   973: astore 28
    //   975: aconst_null
    //   976: astore 12
    //   978: iload 8
    //   980: ifeq +57 -> 1037
    //   983: aload 28
    //   985: aload 26
    //   987: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   990: ldc_w 433
    //   993: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   996: ldc_w 435
    //   999: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1002: ldc_w 437
    //   1005: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1008: ldc_w 439
    //   1011: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1014: ldc_w 441
    //   1017: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1020: ldc_w 443
    //   1023: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1026: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1029: astore 29
    //   1031: aconst_null
    //   1032: astore 12
    //   1034: goto -314 -> 720
    //   1037: ldc 147
    //   1039: astore 26
    //   1041: goto -58 -> 983
    //   1044: new 10	java/lang/StringBuilder
    //   1047: dup
    //   1048: invokespecial 13	java/lang/StringBuilder:<init>	()V
    //   1051: ldc_w 369
    //   1054: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1057: aload 21
    //   1059: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1062: ldc_w 371
    //   1065: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1068: ldc_w 445
    //   1071: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1074: aload_1
    //   1075: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1078: ldc 108
    //   1080: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1083: astore 36
    //   1085: iload 7
    //   1087: ifeq +92 -> 1179
    //   1090: ldc_w 447
    //   1093: astore 37
    //   1095: aload 36
    //   1097: aload 37
    //   1099: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1102: astore 38
    //   1104: iload 8
    //   1106: ifeq +80 -> 1186
    //   1109: ldc_w 383
    //   1112: astore 39
    //   1114: aload 38
    //   1116: aload 39
    //   1118: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1121: ldc_w 449
    //   1124: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1127: ldc_w 389
    //   1130: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1133: aload 21
    //   1135: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1138: ldc_w 391
    //   1141: invokevirtual 28	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1144: invokevirtual 32	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1147: invokestatic 396	com/avast/android/generic/util/h:a	(Ljava/lang/String;)Ljava/lang/String;
    //   1150: pop
    //   1151: ldc 74
    //   1153: aload_0
    //   1154: ldc_w 451
    //   1157: invokestatic 145	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   1160: goto -401 -> 759
    //   1163: astore 35
    //   1165: ldc 74
    //   1167: aload_0
    //   1168: ldc_w 400
    //   1171: aload 35
    //   1173: invokestatic 403	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1176: aload 35
    //   1178: athrow
    //   1179: ldc 147
    //   1181: astore 37
    //   1183: goto -88 -> 1095
    //   1186: ldc 147
    //   1188: astore 39
    //   1190: goto -76 -> 1114
    //   1193: astore 11
    //   1195: aconst_null
    //   1196: astore 12
    //   1198: goto -1088 -> 110
    //   1201: astore 11
    //   1203: goto -1093 -> 110
    //   1206: aload 17
    //   1208: astore 21
    //   1210: goto -687 -> 523
    //   1213: aload 18
    //   1215: astore 21
    //   1217: goto -694 -> 523
    //   1220: aload 19
    //   1222: astore 21
    //   1224: goto -701 -> 523
    //   1227: iinc 42 1
    //   1230: goto -1053 -> 177
    //   1233: iinc 20 1
    //   1236: goto -1088 -> 148
    //   1239: aload 16
    //   1241: astore 21
    //   1243: goto -720 -> 523
    //   1246: ldc 147
    //   1248: astore 30
    //   1250: goto -569 -> 681
    //   1253: ldc 147
    //   1255: astore 31
    //   1257: goto -562 -> 695
    //   1260: ldc 147
    //   1262: astore 25
    //   1264: goto -298 -> 966
    //
    // Exception table:
    //   from	to	target	type
    //   65	102	102	java/lang/Exception
    //   148	596	102	java/lang/Exception
    //   1165	1179	102	java/lang/Exception
    //   1044	1160	1163	java/lang/Exception
    //   601	713	1193	java/lang/Exception
    //   760	801	1193	java/lang/Exception
    //   720	759	1201	java/lang/Exception
    //   801	1041	1201	java/lang/Exception
  }

  public static void a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte[2048];
    while (true)
    {
      int i = paramInputStream.read(arrayOfByte, 0, 2048);
      if (i == -1)
        break;
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }

  public static boolean a(Context paramContext)
  {
    File localFile = new File("/system/build.prop");
    boolean bool1 = localFile.exists();
    boolean bool2 = false;
    if (bool1)
      try
      {
        localBufferedReader = new BufferedReader(new FileReader(localFile));
        try
        {
          boolean bool3;
          do
          {
            String str = localBufferedReader.readLine();
            bool2 = false;
            if (str == null)
              break;
            bool3 = str.toLowerCase().startsWith("ro.modversion");
            bool2 = false;
          }
          while (!bool3);
          bool2 = true;
          break label118;
          localBufferedReader.close();
          bool2 = false;
        }
        catch (Exception localException1)
        {
        }
        if (localBufferedReader != null)
          try
          {
            localBufferedReader.close();
          }
          catch (Exception localException2)
          {
          }
      }
      catch (Exception localException3)
      {
        while (true)
        {
          bool2 = false;
          BufferedReader localBufferedReader = null;
        }
      }
    label118: return bool2;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.ag
 * JD-Core Version:    0.6.2
 */