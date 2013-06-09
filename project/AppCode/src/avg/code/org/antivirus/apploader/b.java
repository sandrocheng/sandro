package org.antivirus.apploader;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

final class b extends c
{
  b(a parama, Context paramContext)
  {
    super(parama, paramContext);
  }

  private PendingIntent a(AlarmManager paramAlarmManager)
  {
    Intent localIntent = new Intent(this.b, AppLoaderAlarmReceiver.class);
    localIntent.setAction("com.droidsec.apploaderalarm");
    PendingIntent localPendingIntent = PendingIntent.getBroadcast(this.b, 0, localIntent, 134217728);
    paramAlarmManager.cancel(localPendingIntent);
    return localPendingIntent;
  }

  private boolean a()
  {
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)this.b.getSystemService("connectivity");
      if (localConnectivityManager != null)
      {
        NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
        if ((localNetworkInfo != null) && ((localNetworkInfo.getType() == 1) || (localNetworkInfo.getType() == 9)))
        {
          bool2 = localNetworkInfo.isConnected();
          Intent localIntent = this.b.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
          if ((localIntent != null) && (localIntent.getIntExtra("plugged", 0) != 0))
          {
            i = 1;
            bool1 = false;
            if (bool2)
            {
              bool1 = false;
              if (i != 0)
                bool1 = true;
            }
            return bool1;
          }
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        boolean bool1 = false;
        continue;
        int i = 0;
        continue;
        boolean bool2 = false;
      }
    }
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 90	org/antivirus/apploader/f
    //   5: dup
    //   6: invokespecial 92	org/antivirus/apploader/f:<init>	()V
    //   9: astore_2
    //   10: ldc 94
    //   12: aload_2
    //   13: aload_0
    //   14: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   17: ldc 96
    //   19: ldc 94
    //   21: invokevirtual 99	org/antivirus/apploader/f:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   24: invokevirtual 105	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   27: ifeq +1611 -> 1638
    //   30: aload_2
    //   31: aload_0
    //   32: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   35: invokevirtual 108	org/antivirus/apploader/f:a	(Landroid/content/Context;)Z
    //   38: ifne +500 -> 538
    //   41: aload_0
    //   42: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   45: astore 47
    //   47: new 110	android/content/ContentValues
    //   50: dup
    //   51: invokespecial 111	android/content/ContentValues:<init>	()V
    //   54: astore 48
    //   56: aload_2
    //   57: new 113	org/antivirus/apploader/e
    //   60: dup
    //   61: aload 47
    //   63: ldc 115
    //   65: invokespecial 118	org/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   68: putfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   71: aload_2
    //   72: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   75: invokevirtual 125	org/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   78: astore 59
    //   80: aload 59
    //   82: astore 56
    //   84: aload 56
    //   86: invokevirtual 130	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   89: aload 48
    //   91: invokevirtual 133	android/content/ContentValues:clear	()V
    //   94: aload 48
    //   96: ldc 135
    //   98: ldc 137
    //   100: invokevirtual 141	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   103: aload 48
    //   105: ldc 143
    //   107: ldc 145
    //   109: invokevirtual 141	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   112: aload 56
    //   114: ldc 147
    //   116: aconst_null
    //   117: aload 48
    //   119: invokevirtual 151	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   122: pop2
    //   123: aload 48
    //   125: invokevirtual 133	android/content/ContentValues:clear	()V
    //   128: aload 48
    //   130: ldc 135
    //   132: ldc 153
    //   134: invokevirtual 141	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   137: aload 48
    //   139: ldc 143
    //   141: ldc 155
    //   143: invokevirtual 141	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   146: aload 56
    //   148: ldc 147
    //   150: aconst_null
    //   151: aload 48
    //   153: invokevirtual 151	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   156: pop2
    //   157: aload 47
    //   159: invokevirtual 159	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   162: iconst_0
    //   163: invokevirtual 165	android/content/pm/PackageManager:getInstalledPackages	(I)Ljava/util/List;
    //   166: invokeinterface 171 1 0
    //   171: astore 65
    //   173: aconst_null
    //   174: astore 51
    //   176: aconst_null
    //   177: astore 52
    //   179: aload 65
    //   181: invokeinterface 176 1 0
    //   186: ifeq +631 -> 817
    //   189: aload 65
    //   191: invokeinterface 180 1 0
    //   196: checkcast 182	android/content/pm/PackageInfo
    //   199: astore 69
    //   201: aload 48
    //   203: invokevirtual 133	android/content/ContentValues:clear	()V
    //   206: new 184	java/io/File
    //   209: dup
    //   210: aload 69
    //   212: getfield 188	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   215: getfield 194	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   218: invokespecial 195	java/io/File:<init>	(Ljava/lang/String;)V
    //   221: astore 80
    //   223: aload 80
    //   225: invokevirtual 198	java/io/File:exists	()Z
    //   228: ifeq +1618 -> 1846
    //   231: aload 80
    //   233: invokevirtual 201	java/io/File:canRead	()Z
    //   236: ifeq +1610 -> 1846
    //   239: new 203	java/util/jar/JarFile
    //   242: dup
    //   243: aload 80
    //   245: invokespecial 206	java/util/jar/JarFile:<init>	(Ljava/io/File;)V
    //   248: astore 77
    //   250: aload 77
    //   252: ldc 208
    //   254: invokevirtual 212	java/util/jar/JarFile:getEntry	(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    //   257: astore 83
    //   259: aload 83
    //   261: ifnull +118 -> 379
    //   264: aload 77
    //   266: aload 83
    //   268: invokevirtual 216	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   271: astore 51
    //   273: aload 51
    //   275: ifnull +104 -> 379
    //   278: aload 48
    //   280: ldc 218
    //   282: aload 51
    //   284: invokestatic 223	org/a/a/a/b/a:b	(Ljava/io/InputStream;)Ljava/lang/String;
    //   287: invokevirtual 141	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   290: aload 48
    //   292: ldc 225
    //   294: aload 69
    //   296: getfield 228	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   299: invokevirtual 141	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   302: aload 48
    //   304: ldc 230
    //   306: aload 69
    //   308: getfield 188	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   311: getfield 194	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   314: invokevirtual 141	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   317: aload 48
    //   319: ldc 232
    //   321: new 234	java/lang/StringBuilder
    //   324: dup
    //   325: invokespecial 235	java/lang/StringBuilder:<init>	()V
    //   328: aload 69
    //   330: getfield 239	android/content/pm/PackageInfo:versionCode	I
    //   333: invokevirtual 243	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   336: invokevirtual 247	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   339: invokevirtual 141	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   342: aload 48
    //   344: ldc 249
    //   346: iconst_0
    //   347: invokestatic 255	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   350: invokevirtual 258	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   353: aload 48
    //   355: ldc_w 260
    //   358: invokestatic 266	java/lang/System:currentTimeMillis	()J
    //   361: invokestatic 271	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   364: invokevirtual 274	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   367: aload 56
    //   369: ldc_w 276
    //   372: aconst_null
    //   373: aload 48
    //   375: invokevirtual 151	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   378: pop2
    //   379: aload 51
    //   381: astore 71
    //   383: aload 77
    //   385: astore 72
    //   387: aload 71
    //   389: ifnull +8 -> 397
    //   392: aload 71
    //   394: invokevirtual 281	java/io/InputStream:close	()V
    //   397: aload 72
    //   399: ifnull +407 -> 806
    //   402: aload 72
    //   404: invokevirtual 282	java/util/jar/JarFile:close	()V
    //   407: aload 72
    //   409: astore 52
    //   411: aload 71
    //   413: astore 51
    //   415: goto -236 -> 179
    //   418: astore 82
    //   420: aload 51
    //   422: astore 71
    //   424: aload 77
    //   426: astore 72
    //   428: aload 71
    //   430: ifnull +8 -> 438
    //   433: aload 71
    //   435: invokevirtual 281	java/io/InputStream:close	()V
    //   438: aload 72
    //   440: ifnull +366 -> 806
    //   443: aload 72
    //   445: invokevirtual 282	java/util/jar/JarFile:close	()V
    //   448: aload 72
    //   450: astore 52
    //   452: aload 71
    //   454: astore 51
    //   456: goto -277 -> 179
    //   459: astore 76
    //   461: aload 51
    //   463: ifnull +8 -> 471
    //   466: aload 51
    //   468: invokevirtual 281	java/io/InputStream:close	()V
    //   471: aload 77
    //   473: ifnull +8 -> 481
    //   476: aload 77
    //   478: invokevirtual 282	java/util/jar/JarFile:close	()V
    //   481: aload 76
    //   483: athrow
    //   484: astore 78
    //   486: aload 56
    //   488: astore 50
    //   490: aload 77
    //   492: astore 52
    //   494: aload 50
    //   496: ifnull +8 -> 504
    //   499: aload 50
    //   501: invokevirtual 283	android/database/sqlite/SQLiteDatabase:close	()V
    //   504: aload_2
    //   505: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   508: ifnull +10 -> 518
    //   511: aload_2
    //   512: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   515: invokevirtual 284	org/antivirus/apploader/e:close	()V
    //   518: aload 51
    //   520: ifnull +8 -> 528
    //   523: aload 51
    //   525: invokevirtual 281	java/io/InputStream:close	()V
    //   528: aload 52
    //   530: ifnull +8 -> 538
    //   533: aload 52
    //   535: invokevirtual 282	java/util/jar/JarFile:close	()V
    //   538: aload_2
    //   539: aload_0
    //   540: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   543: ldc 155
    //   545: ldc 153
    //   547: invokevirtual 99	org/antivirus/apploader/f:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   550: invokestatic 288	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   553: istore 6
    //   555: aload_0
    //   556: invokespecial 290	org/antivirus/apploader/b:a	()Z
    //   559: ifeq +386 -> 945
    //   562: iload 6
    //   564: iconst_5
    //   565: if_icmpge +380 -> 945
    //   568: aload_2
    //   569: aload_0
    //   570: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   573: invokevirtual 294	org/antivirus/apploader/f:d	(Landroid/content/Context;)Ljava/util/TreeMap;
    //   576: astore 7
    //   578: aload 7
    //   580: ifnull +1260 -> 1840
    //   583: aload 7
    //   585: invokevirtual 299	java/util/TreeMap:size	()I
    //   588: ifle +1252 -> 1840
    //   591: new 301	org/antivirus/apploader/g
    //   594: dup
    //   595: invokespecial 302	org/antivirus/apploader/g:<init>	()V
    //   598: pop
    //   599: aload_0
    //   600: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   603: aload 7
    //   605: invokestatic 305	org/antivirus/apploader/g:a	(Landroid/content/Context;Ljava/util/TreeMap;)Ljava/util/HashMap;
    //   608: astore 8
    //   610: goto +1247 -> 1857
    //   613: aload 9
    //   615: ifnull +1261 -> 1876
    //   618: ldc_w 307
    //   621: aload 9
    //   623: invokevirtual 105	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   626: ifeq +559 -> 1185
    //   629: aload 8
    //   631: ldc_w 309
    //   634: invokevirtual 315	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   637: checkcast 101	java/lang/String
    //   640: astore 37
    //   642: aload 37
    //   644: ifnull +16 -> 660
    //   647: aload_2
    //   648: aload_0
    //   649: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   652: ldc_w 317
    //   655: aload 37
    //   657: invokevirtual 320	org/antivirus/apploader/f:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   660: aload 8
    //   662: ldc_w 322
    //   665: invokevirtual 315	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   668: checkcast 101	java/lang/String
    //   671: astore 38
    //   673: new 296	java/util/TreeMap
    //   676: dup
    //   677: invokespecial 323	java/util/TreeMap:<init>	()V
    //   680: astore 39
    //   682: aload 38
    //   684: ifnull +300 -> 984
    //   687: aload 38
    //   689: ldc_w 325
    //   692: invokevirtual 329	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   695: astore 40
    //   697: aload 40
    //   699: ifnull +285 -> 984
    //   702: aload 40
    //   704: arraylength
    //   705: istore 41
    //   707: iconst_0
    //   708: istore 42
    //   710: iload 42
    //   712: iload 41
    //   714: if_icmpge +270 -> 984
    //   717: aload 40
    //   719: iload 42
    //   721: aaload
    //   722: ldc_w 331
    //   725: invokevirtual 329	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   728: astore 43
    //   730: aload 43
    //   732: ifnull +68 -> 800
    //   735: aload 43
    //   737: arraylength
    //   738: iconst_2
    //   739: if_icmpne +61 -> 800
    //   742: aload 43
    //   744: iconst_0
    //   745: aaload
    //   746: ifnull +54 -> 800
    //   749: aload 43
    //   751: iconst_1
    //   752: aaload
    //   753: ifnull +47 -> 800
    //   756: aload 43
    //   758: iconst_0
    //   759: aaload
    //   760: invokevirtual 334	java/lang/String:length	()I
    //   763: ifle +37 -> 800
    //   766: aload 43
    //   768: iconst_1
    //   769: aaload
    //   770: invokevirtual 334	java/lang/String:length	()I
    //   773: ifle +27 -> 800
    //   776: aload 39
    //   778: aload 43
    //   780: iconst_0
    //   781: aaload
    //   782: aload 43
    //   784: iconst_1
    //   785: aaload
    //   786: invokevirtual 337	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   789: pop
    //   790: aload 7
    //   792: aload 43
    //   794: iconst_0
    //   795: aaload
    //   796: invokevirtual 340	java/util/TreeMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   799: pop
    //   800: iinc 42 1
    //   803: goto -93 -> 710
    //   806: aload 72
    //   808: astore 52
    //   810: aload 71
    //   812: astore 51
    //   814: goto -635 -> 179
    //   817: aload 56
    //   819: invokevirtual 343	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   822: aload 56
    //   824: invokevirtual 346	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   827: aload 56
    //   829: invokevirtual 283	android/database/sqlite/SQLiteDatabase:close	()V
    //   832: aload_2
    //   833: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   836: invokevirtual 284	org/antivirus/apploader/e:close	()V
    //   839: aload 56
    //   841: ifnull +8 -> 849
    //   844: aload 56
    //   846: invokevirtual 283	android/database/sqlite/SQLiteDatabase:close	()V
    //   849: aload_2
    //   850: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   853: ifnull +10 -> 863
    //   856: aload_2
    //   857: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   860: invokevirtual 284	org/antivirus/apploader/e:close	()V
    //   863: aload 51
    //   865: ifnull +8 -> 873
    //   868: aload 51
    //   870: invokevirtual 281	java/io/InputStream:close	()V
    //   873: aload 52
    //   875: ifnull -337 -> 538
    //   878: aload 52
    //   880: invokevirtual 282	java/util/jar/JarFile:close	()V
    //   883: goto -345 -> 538
    //   886: astore 67
    //   888: goto -350 -> 538
    //   891: astore 55
    //   893: aconst_null
    //   894: astore 56
    //   896: aconst_null
    //   897: astore 52
    //   899: aload 56
    //   901: ifnull +8 -> 909
    //   904: aload 56
    //   906: invokevirtual 283	android/database/sqlite/SQLiteDatabase:close	()V
    //   909: aload_2
    //   910: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   913: ifnull +10 -> 923
    //   916: aload_2
    //   917: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   920: invokevirtual 284	org/antivirus/apploader/e:close	()V
    //   923: aload_1
    //   924: ifnull +7 -> 931
    //   927: aload_1
    //   928: invokevirtual 281	java/io/InputStream:close	()V
    //   931: aload 52
    //   933: ifnull +8 -> 941
    //   936: aload 52
    //   938: invokevirtual 282	java/util/jar/JarFile:close	()V
    //   941: aload 55
    //   943: athrow
    //   944: astore_3
    //   945: aload_0
    //   946: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   949: new 15	android/content/Intent
    //   952: dup
    //   953: aload_0
    //   954: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   957: ldc_w 348
    //   960: invokespecial 24	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   963: invokevirtual 352	android/content/Context:stopService	(Landroid/content/Intent;)Z
    //   966: pop
    //   967: return
    //   968: aload 8
    //   970: ldc_w 354
    //   973: invokevirtual 315	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   976: checkcast 101	java/lang/String
    //   979: astore 9
    //   981: goto -368 -> 613
    //   984: aload 7
    //   986: invokevirtual 299	java/util/TreeMap:size	()I
    //   989: ifle +14 -> 1003
    //   992: aload_2
    //   993: aload_0
    //   994: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   997: aload 7
    //   999: iconst_1
    //   1000: invokevirtual 357	org/antivirus/apploader/f:a	(Landroid/content/Context;Ljava/util/TreeMap;I)V
    //   1003: aload 39
    //   1005: invokevirtual 299	java/util/TreeMap:size	()I
    //   1008: ifle +862 -> 1870
    //   1011: aload_2
    //   1012: aload_0
    //   1013: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1016: aload 39
    //   1018: iconst_2
    //   1019: invokevirtual 357	org/antivirus/apploader/f:a	(Landroid/content/Context;Ljava/util/TreeMap;I)V
    //   1022: goto +848 -> 1870
    //   1025: ldc 94
    //   1027: aload_2
    //   1028: aload_0
    //   1029: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1032: ldc 96
    //   1034: ldc 94
    //   1036: invokevirtual 99	org/antivirus/apploader/f:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1039: invokevirtual 105	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1042: ifeq +472 -> 1514
    //   1045: aload_2
    //   1046: aload_0
    //   1047: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1050: invokevirtual 360	org/antivirus/apploader/f:b	(Landroid/content/Context;)Ljava/lang/String;
    //   1053: astore 18
    //   1055: aload_2
    //   1056: aload_0
    //   1057: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1060: ldc 155
    //   1062: new 234	java/lang/StringBuilder
    //   1065: dup
    //   1066: invokespecial 235	java/lang/StringBuilder:<init>	()V
    //   1069: iload 6
    //   1071: iconst_1
    //   1072: iadd
    //   1073: invokevirtual 243	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1076: invokevirtual 247	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1079: invokevirtual 320	org/antivirus/apploader/f:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   1082: aload 18
    //   1084: invokestatic 366	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1087: ifne +418 -> 1505
    //   1090: aload_0
    //   1091: invokespecial 290	org/antivirus/apploader/b:a	()Z
    //   1094: ifeq +411 -> 1505
    //   1097: iload 10
    //   1099: ifne +406 -> 1505
    //   1102: aload 18
    //   1104: invokestatic 366	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1107: ifne +64 -> 1171
    //   1110: new 184	java/io/File
    //   1113: dup
    //   1114: aload 18
    //   1116: invokespecial 195	java/io/File:<init>	(Ljava/lang/String;)V
    //   1119: astore 20
    //   1121: aload_0
    //   1122: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1125: pop
    //   1126: aload 20
    //   1128: invokestatic 371	org/antivirus/apploader/d:a	(Ljava/io/File;)Z
    //   1131: ifeq +767 -> 1898
    //   1134: aload_2
    //   1135: aload_0
    //   1136: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1139: aload 18
    //   1141: invokevirtual 374	org/antivirus/apploader/f:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   1144: pop
    //   1145: aload_2
    //   1146: aload_0
    //   1147: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1150: ldc 155
    //   1152: ldc 153
    //   1154: invokevirtual 320	org/antivirus/apploader/f:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   1157: aload_2
    //   1158: aload_0
    //   1159: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1162: invokevirtual 360	org/antivirus/apploader/f:b	(Landroid/content/Context;)Ljava/lang/String;
    //   1165: astore 22
    //   1167: aload 22
    //   1169: astore 18
    //   1171: ldc2_w 375
    //   1174: invokestatic 382	java/lang/Thread:sleep	(J)V
    //   1177: goto -95 -> 1082
    //   1180: astore 23
    //   1182: goto -100 -> 1082
    //   1185: ldc_w 384
    //   1188: aload 9
    //   1190: invokevirtual 105	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1193: ifeq +9 -> 1202
    //   1196: iconst_1
    //   1197: istore 10
    //   1199: goto -174 -> 1025
    //   1202: ldc_w 386
    //   1205: aload 9
    //   1207: invokevirtual 105	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1210: ifeq +666 -> 1876
    //   1213: aload_2
    //   1214: aload_0
    //   1215: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1218: ldc 96
    //   1220: ldc 137
    //   1222: invokevirtual 320	org/antivirus/apploader/f:b	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   1225: aload_0
    //   1226: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1229: astore 25
    //   1231: aload_2
    //   1232: new 113	org/antivirus/apploader/e
    //   1235: dup
    //   1236: aload 25
    //   1238: ldc 115
    //   1240: invokespecial 118	org/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   1243: putfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1246: aload_2
    //   1247: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1250: invokevirtual 125	org/antivirus/apploader/e:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   1253: astore 34
    //   1255: aload 34
    //   1257: astore 29
    //   1259: aload 29
    //   1261: invokevirtual 130	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   1264: aload 29
    //   1266: ldc_w 388
    //   1269: invokevirtual 391	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   1272: aload 29
    //   1274: invokevirtual 343	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   1277: aload 29
    //   1279: invokevirtual 346	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   1282: aload 29
    //   1284: invokevirtual 283	android/database/sqlite/SQLiteDatabase:close	()V
    //   1287: aload_2
    //   1288: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1291: invokevirtual 284	org/antivirus/apploader/e:close	()V
    //   1294: aload 29
    //   1296: ifnull +8 -> 1304
    //   1299: aload 29
    //   1301: invokevirtual 283	android/database/sqlite/SQLiteDatabase:close	()V
    //   1304: aload_2
    //   1305: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1308: ifnull +10 -> 1318
    //   1311: aload_2
    //   1312: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1315: invokevirtual 284	org/antivirus/apploader/e:close	()V
    //   1318: aload_0
    //   1319: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1322: astore 30
    //   1324: aload_2
    //   1325: new 113	org/antivirus/apploader/e
    //   1328: dup
    //   1329: aload 30
    //   1331: ldc 115
    //   1333: invokespecial 118	org/antivirus/apploader/e:<init>	(Landroid/content/Context;Ljava/lang/String;)V
    //   1336: putfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1339: aload_2
    //   1340: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1343: invokevirtual 394	org/antivirus/apploader/e:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   1346: astore_1
    //   1347: aload_1
    //   1348: ldc_w 396
    //   1351: invokevirtual 391	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   1354: aload_1
    //   1355: ifnull +7 -> 1362
    //   1358: aload_1
    //   1359: invokevirtual 283	android/database/sqlite/SQLiteDatabase:close	()V
    //   1362: aload_2
    //   1363: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1366: ifnull +10 -> 1376
    //   1369: aload_2
    //   1370: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1373: invokevirtual 284	org/antivirus/apploader/e:close	()V
    //   1376: aload_0
    //   1377: aload_0
    //   1378: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1381: ldc_w 398
    //   1384: invokevirtual 54	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   1387: checkcast 39	android/app/AlarmManager
    //   1390: invokespecial 400	org/antivirus/apploader/b:a	(Landroid/app/AlarmManager;)Landroid/app/PendingIntent;
    //   1393: pop
    //   1394: goto +482 -> 1876
    //   1397: aload 29
    //   1399: ifnull +8 -> 1407
    //   1402: aload 29
    //   1404: invokevirtual 283	android/database/sqlite/SQLiteDatabase:close	()V
    //   1407: aload_2
    //   1408: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1411: ifnull -93 -> 1318
    //   1414: aload_2
    //   1415: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1418: invokevirtual 284	org/antivirus/apploader/e:close	()V
    //   1421: goto -103 -> 1318
    //   1424: aload 27
    //   1426: ifnull +8 -> 1434
    //   1429: aload 27
    //   1431: invokevirtual 283	android/database/sqlite/SQLiteDatabase:close	()V
    //   1434: aload_2
    //   1435: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1438: ifnull +10 -> 1448
    //   1441: aload_2
    //   1442: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1445: invokevirtual 284	org/antivirus/apploader/e:close	()V
    //   1448: aload 26
    //   1450: athrow
    //   1451: astore 32
    //   1453: aload_1
    //   1454: ifnull +7 -> 1461
    //   1457: aload_1
    //   1458: invokevirtual 283	android/database/sqlite/SQLiteDatabase:close	()V
    //   1461: aload_2
    //   1462: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1465: ifnull -89 -> 1376
    //   1468: aload_2
    //   1469: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1472: invokevirtual 284	org/antivirus/apploader/e:close	()V
    //   1475: goto -99 -> 1376
    //   1478: astore 31
    //   1480: aload_1
    //   1481: ifnull +7 -> 1488
    //   1484: aload_1
    //   1485: invokevirtual 283	android/database/sqlite/SQLiteDatabase:close	()V
    //   1488: aload_2
    //   1489: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1492: ifnull +10 -> 1502
    //   1495: aload_2
    //   1496: getfield 121	org/antivirus/apploader/f:b	Lorg/antivirus/apploader/e;
    //   1499: invokevirtual 284	org/antivirus/apploader/e:close	()V
    //   1502: aload 31
    //   1504: athrow
    //   1505: aload_2
    //   1506: aload_0
    //   1507: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1510: invokevirtual 403	org/antivirus/apploader/f:c	(Landroid/content/Context;)Z
    //   1513: pop
    //   1514: iload 6
    //   1516: bipush 6
    //   1518: if_icmpge -573 -> 945
    //   1521: aload_2
    //   1522: aload_0
    //   1523: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1526: ldc_w 317
    //   1529: ldc_w 405
    //   1532: invokevirtual 99	org/antivirus/apploader/f:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1535: astore 11
    //   1537: ldc_w 405
    //   1540: aload 11
    //   1542: invokevirtual 105	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1545: ifeq +43 -> 1588
    //   1548: aload_0
    //   1549: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1552: ldc_w 398
    //   1555: invokevirtual 54	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   1558: checkcast 39	android/app/AlarmManager
    //   1561: astore 16
    //   1563: aload_0
    //   1564: aload 16
    //   1566: invokespecial 400	org/antivirus/apploader/b:a	(Landroid/app/AlarmManager;)Landroid/app/PendingIntent;
    //   1569: astore 17
    //   1571: aload 16
    //   1573: iconst_1
    //   1574: invokestatic 407	org/antivirus/apploader/AppLoaderService:a	()J
    //   1577: ldc2_w 408
    //   1580: aload 17
    //   1582: invokevirtual 413	android/app/AlarmManager:setInexactRepeating	(IJJLandroid/app/PendingIntent;)V
    //   1585: goto -640 -> 945
    //   1588: aload 11
    //   1590: invokestatic 417	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   1593: lstore 12
    //   1595: aload_0
    //   1596: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1599: ldc_w 398
    //   1602: invokevirtual 54	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   1605: checkcast 39	android/app/AlarmManager
    //   1608: astore 14
    //   1610: aload_0
    //   1611: aload 14
    //   1613: invokespecial 400	org/antivirus/apploader/b:a	(Landroid/app/AlarmManager;)Landroid/app/PendingIntent;
    //   1616: astore 15
    //   1618: aload 14
    //   1620: iconst_1
    //   1621: lload 12
    //   1623: invokestatic 266	java/lang/System:currentTimeMillis	()J
    //   1626: ladd
    //   1627: ldc2_w 408
    //   1630: aload 15
    //   1632: invokevirtual 413	android/app/AlarmManager:setInexactRepeating	(IJJLandroid/app/PendingIntent;)V
    //   1635: goto -690 -> 945
    //   1638: aload_0
    //   1639: aload_0
    //   1640: getfield 19	org/antivirus/apploader/b:b	Landroid/content/Context;
    //   1643: ldc_w 398
    //   1646: invokevirtual 54	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   1649: checkcast 39	android/app/AlarmManager
    //   1652: invokespecial 400	org/antivirus/apploader/b:a	(Landroid/app/AlarmManager;)Landroid/app/PendingIntent;
    //   1655: pop
    //   1656: goto -711 -> 945
    //   1659: astore 81
    //   1661: goto -1264 -> 397
    //   1664: astore 75
    //   1666: goto -1228 -> 438
    //   1669: astore 79
    //   1671: goto -1200 -> 471
    //   1674: astore 68
    //   1676: goto -803 -> 873
    //   1679: astore 54
    //   1681: goto -1153 -> 528
    //   1684: astore 53
    //   1686: goto -1148 -> 538
    //   1689: astore 58
    //   1691: goto -760 -> 931
    //   1694: astore 57
    //   1696: goto -755 -> 941
    //   1699: astore 36
    //   1701: aload 29
    //   1703: astore 27
    //   1705: aload 36
    //   1707: astore 26
    //   1709: goto -285 -> 1424
    //   1712: astore 35
    //   1714: goto -317 -> 1397
    //   1717: astore 55
    //   1719: aconst_null
    //   1720: astore 52
    //   1722: aconst_null
    //   1723: astore_1
    //   1724: goto -825 -> 899
    //   1727: astore 74
    //   1729: aload 71
    //   1731: astore_1
    //   1732: aload 72
    //   1734: astore 52
    //   1736: aload 74
    //   1738: astore 55
    //   1740: goto -841 -> 899
    //   1743: astore 55
    //   1745: aload 51
    //   1747: astore_1
    //   1748: goto -849 -> 899
    //   1751: astore 55
    //   1753: aload 51
    //   1755: astore_1
    //   1756: aload 77
    //   1758: astore 52
    //   1760: goto -861 -> 899
    //   1763: astore 49
    //   1765: aconst_null
    //   1766: astore 50
    //   1768: aconst_null
    //   1769: astore 51
    //   1771: aconst_null
    //   1772: astore 52
    //   1774: goto -1280 -> 494
    //   1777: astore 60
    //   1779: aload 56
    //   1781: astore 50
    //   1783: aconst_null
    //   1784: astore 51
    //   1786: aconst_null
    //   1787: astore 52
    //   1789: goto -1295 -> 494
    //   1792: astore 73
    //   1794: aload 72
    //   1796: astore 52
    //   1798: aload 71
    //   1800: astore 51
    //   1802: aload 56
    //   1804: astore 50
    //   1806: goto -1312 -> 494
    //   1809: astore 66
    //   1811: aload 56
    //   1813: astore 50
    //   1815: goto -1321 -> 494
    //   1818: astore 76
    //   1820: aload 52
    //   1822: astore 77
    //   1824: goto -1363 -> 461
    //   1827: astore 70
    //   1829: aload 51
    //   1831: astore 71
    //   1833: aload 52
    //   1835: astore 72
    //   1837: goto -1409 -> 428
    //   1840: aconst_null
    //   1841: astore 8
    //   1843: goto +14 -> 1857
    //   1846: aload 51
    //   1848: astore 71
    //   1850: aload 52
    //   1852: astore 72
    //   1854: goto -1467 -> 387
    //   1857: aload 8
    //   1859: ifnonnull -891 -> 968
    //   1862: ldc_w 386
    //   1865: astore 9
    //   1867: goto -1254 -> 613
    //   1870: iconst_0
    //   1871: istore 10
    //   1873: goto -848 -> 1025
    //   1876: iconst_0
    //   1877: istore 10
    //   1879: goto -854 -> 1025
    //   1882: astore 28
    //   1884: aconst_null
    //   1885: astore 29
    //   1887: goto -490 -> 1397
    //   1890: astore 26
    //   1892: aconst_null
    //   1893: astore 27
    //   1895: goto -471 -> 1424
    //   1898: iconst_1
    //   1899: istore 10
    //   1901: goto -744 -> 1157
    //
    // Exception table:
    //   from	to	target	type
    //   250	379	418	java/lang/Exception
    //   250	379	459	finally
    //   476	484	484	java/lang/Exception
    //   878	883	886	java/lang/Exception
    //   56	80	891	finally
    //   2	56	944	java/lang/Exception
    //   499	518	944	java/lang/Exception
    //   538	800	944	java/lang/Exception
    //   844	863	944	java/lang/Exception
    //   904	923	944	java/lang/Exception
    //   941	944	944	java/lang/Exception
    //   968	1167	944	java/lang/Exception
    //   1185	1231	944	java/lang/Exception
    //   1299	1324	944	java/lang/Exception
    //   1358	1656	944	java/lang/Exception
    //   1171	1177	1180	java/lang/Exception
    //   1324	1354	1451	java/lang/Exception
    //   1324	1354	1478	finally
    //   392	397	1659	java/lang/Exception
    //   433	438	1664	java/lang/Exception
    //   466	471	1669	java/lang/Exception
    //   868	873	1674	java/lang/Exception
    //   523	528	1679	java/lang/Exception
    //   533	538	1684	java/lang/Exception
    //   927	931	1689	java/lang/Exception
    //   936	941	1694	java/lang/Exception
    //   1259	1294	1699	finally
    //   1259	1294	1712	java/lang/Exception
    //   84	173	1717	finally
    //   392	397	1727	finally
    //   402	407	1727	finally
    //   433	438	1727	finally
    //   443	448	1727	finally
    //   179	201	1743	finally
    //   817	839	1743	finally
    //   466	471	1751	finally
    //   476	484	1751	finally
    //   56	80	1763	java/lang/Exception
    //   84	173	1777	java/lang/Exception
    //   402	407	1792	java/lang/Exception
    //   443	448	1792	java/lang/Exception
    //   179	201	1809	java/lang/Exception
    //   817	839	1809	java/lang/Exception
    //   201	250	1818	finally
    //   201	250	1827	java/lang/Exception
    //   1231	1255	1882	java/lang/Exception
    //   1231	1255	1890	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.apploader.b
 * JD-Core Version:    0.6.2
 */