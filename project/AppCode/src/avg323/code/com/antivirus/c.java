package com.antivirus;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.antivirus.c.b;
import com.avg.ui.general.o;

public class c
{
  public static int a;
  public static boolean b;
  public static int[] c;
  private static SharedPreferences d;
  private static SharedPreferences.Editor e;
  private static com.a.a.a.c f;
  private static boolean g;

  static
  {
    if (o.c());
    for (int i = 140; ; i = 100)
    {
      a = i;
      b = true;
      c = new int[] { 14, 1 };
      g = false;
      return;
    }
  }

  public c(Context paramContext)
  {
    d = paramContext.getSharedPreferences("av", 0);
    if (d == null)
      com.avg.toolkit.f.a.a("pref is null");
    while (true)
    {
      return;
      try
      {
        if (C())
          d.edit().putBoolean("tatzpinbekalut", true).commit();
        while (true)
        {
          while (true)
          {
            f = new com.a.a.a.c(paramContext, "noel", 0, bool1);
            try
            {
              d.registerOnSharedPreferenceChangeListener(new d(this));
              if (!f(paramContext))
                break;
              h(paramContext);
            }
            catch (Exception localException2)
            {
              com.avg.toolkit.f.a.a(localException2);
            }
          }
          break;
          try
          {
            boolean bool2 = d.getBoolean("tatzpinbekalut", false);
            bool1 = bool2;
          }
          catch (Exception localException3)
          {
            com.avg.toolkit.f.a.a(localException3);
            bool1 = false;
          }
        }
      }
      catch (Exception localException1)
      {
        while (true)
          com.avg.toolkit.f.a.a(localException1);
      }
    }
  }

  public static float A()
  {
    return d.getFloat("sms_filter_rpc_client_success_ratio", 1.0F);
  }

  public static String B()
  {
    return d.getString("country_iso_code", "");
  }

  private static boolean C()
  {
    return d.getBoolean("first_use", true);
  }

  private static SharedPreferences.Editor D()
  {
    if (e == null)
      e = d.edit();
    return e;
  }

  public static String a(Context paramContext)
  {
    if (f(paramContext))
      h(paramContext);
    return l(d.getString("xx6", ""));
  }

  public static void a(float paramFloat)
  {
    D().putFloat("sms_filter_rpc_client_success_ratio", paramFloat);
    n();
  }

  public static void a(int paramInt)
  {
    D().putInt("buy_notification", paramInt);
    n();
  }

  public static void a(long paramLong)
  {
    D().putLong("version_update_last_time", paramLong);
    n();
  }

  public static void a(String paramString)
  {
    D().putString("user_backup_dir", paramString);
    n();
  }

  public static void a(String paramString1, String paramString2)
  {
    D().putString("commManager_" + paramString1, paramString2);
    n();
  }

  public static void a(boolean paramBoolean)
  {
    D().putBoolean("le", paramBoolean);
  }

  public static boolean a()
  {
    return d.getBoolean("le", false);
  }

  public static String b(Context paramContext)
  {
    if (f(paramContext))
      h(paramContext);
    return f.a("xx1", "");
  }

  public static void b(int paramInt)
  {
    D().putInt("show_spam_warning", paramInt);
    n();
  }

  public static void b(long paramLong)
  {
    D().putLong("last_backup_time", paramLong);
    n();
  }

  private static void b(SharedPreferences paramSharedPreferences, String paramString)
  {
  }

  public static void b(String paramString)
  {
    d.edit().putString("xx6", k(paramString)).commit();
  }

  public static void b(boolean paramBoolean)
  {
    D().putBoolean("ltf", paramBoolean);
  }

  public static boolean b()
  {
    return d.getBoolean("ltf", false);
  }

  public static String c(Context paramContext)
  {
    return f.a("doarxahazala_tajlei", b.a(paramContext));
  }

  public static void c(String paramString)
  {
    f.b("xx1", paramString).commit();
  }

  public static void c(boolean paramBoolean)
  {
    D().putBoolean("send_location", paramBoolean);
  }

  public static boolean c()
  {
    return d.getBoolean("auto_scan_app", true);
  }

  public static void d(String paramString)
  {
    f.b("doarxahazala_tajlei", paramString).commit();
  }

  public static void d(boolean paramBoolean)
  {
    D().putBoolean("is_user_backup_dir_external", paramBoolean);
    n();
  }

  public static boolean d()
  {
    return d.getBoolean("send_location", false);
  }

  public static boolean d(Context paramContext)
  {
    if (f(paramContext))
      h(paramContext);
    return f.a("xx3", false);
  }

  public static String e(Context paramContext)
  {
    if (f(paramContext))
      h(paramContext);
    return l(d.getString("xx5", k("1234")));
  }

  public static void e(String paramString)
  {
    D().putString("updated_lost_msg", paramString);
    n();
  }

  public static void e(boolean paramBoolean)
  {
    f.b("xx3", paramBoolean).commit();
  }

  public static boolean e()
  {
    return d.getBoolean("show_tutorial", true);
  }

  public static String f(String paramString)
  {
    return d.getString("commManager_" + paramString, "EMPTY");
  }

  public static void f()
  {
    D().putBoolean("show_tutorial", false);
    n();
  }

  public static void f(boolean paramBoolean)
  {
    D().putBoolean("loxxer", paramBoolean);
    n();
  }

  private static boolean f(Context paramContext)
  {
    boolean bool1 = g;
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      try
      {
        int i = d.getInt("version", 0);
        int j = g(paramContext);
        bool2 = false;
        if (i >= j)
          g = true;
      }
      catch (Exception localException)
      {
        while (true)
        {
          com.avg.toolkit.f.a.a(localException);
          bool2 = true;
        }
      }
    }
  }

  private static int g(Context paramContext)
  {
    return paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
  }

  public static void g(String paramString)
  {
    D().remove("commManager_" + paramString);
    n();
  }

  public static void g(boolean paramBoolean)
  {
    D().putBoolean("applocker_timer", paramBoolean);
    n();
  }

  public static boolean g()
  {
    return d.getBoolean("notify_on_data_plan_threshold", false);
  }

  public static int h()
  {
    return d.getInt("data_plan_notification_threshold", 90);
  }

  // ERROR //
  private static void h(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 272	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   4: astore_1
    //   5: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   8: ldc 232
    //   10: iconst_0
    //   11: invokeinterface 236 3 0
    //   16: istore 40
    //   18: iload 40
    //   20: istore_3
    //   21: aload_1
    //   22: invokestatic 239	com/antivirus/c:g	(Landroid/content/Context;)I
    //   25: istore 41
    //   27: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   30: invokeinterface 64 1 0
    //   35: ldc 232
    //   37: iload 41
    //   39: invokeinterface 153 3 0
    //   44: invokeinterface 75 1 0
    //   49: pop
    //   50: iload_3
    //   51: istore 4
    //   53: iload 4
    //   55: ifle +33 -> 88
    //   58: invokestatic 278	java/lang/System:currentTimeMillis	()J
    //   61: ldc2_w 279
    //   64: lsub
    //   65: lstore 38
    //   67: new 282	com/antivirus/core/b
    //   70: dup
    //   71: aload_1
    //   72: invokespecial 284	com/antivirus/core/b:<init>	(Landroid/content/Context;)V
    //   75: lload 38
    //   77: invokevirtual 286	com/antivirus/core/b:b	(J)V
    //   80: aload_1
    //   81: invokestatic 290	com/antivirus/e/b:a	(Landroid/content/Context;)V
    //   84: aload_1
    //   85: invokestatic 293	com/antivirus/core/a/b:a	(Landroid/content/Context;)V
    //   88: iload 4
    //   90: sipush 2626
    //   93: if_icmpgt +121 -> 214
    //   96: sipush 2626
    //   99: istore 4
    //   101: iload 4
    //   103: lookupswitch	default:+97->200, 2626:+287->390, 3081:+651->754, 5172:+728->831, 168756:+765->868, 170538:+802->905, 171702:+923->1026, 172102:+950->1053, 174226:+1006->1109, 174757:+1017->1120, 175892:+1021->1124, 178334:+1032->1135
    //   201: astore_2
    //   202: iconst_0
    //   203: istore_3
    //   204: aload_2
    //   205: invokestatic 102	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   208: iload_3
    //   209: istore 4
    //   211: goto -158 -> 53
    //   214: iload 4
    //   216: sipush 3081
    //   219: if_icmpgt +11 -> 230
    //   222: sipush 3081
    //   225: istore 4
    //   227: goto -126 -> 101
    //   230: iload 4
    //   232: sipush 5172
    //   235: if_icmpgt +11 -> 246
    //   238: sipush 5172
    //   241: istore 4
    //   243: goto -142 -> 101
    //   246: iload 4
    //   248: ldc_w 294
    //   251: if_icmpgt +11 -> 262
    //   254: ldc_w 294
    //   257: istore 4
    //   259: goto -158 -> 101
    //   262: iload 4
    //   264: ldc_w 295
    //   267: if_icmpgt +11 -> 278
    //   270: ldc_w 295
    //   273: istore 4
    //   275: goto -174 -> 101
    //   278: iload 4
    //   280: ldc_w 296
    //   283: if_icmpgt +11 -> 294
    //   286: ldc_w 296
    //   289: istore 4
    //   291: goto -190 -> 101
    //   294: iload 4
    //   296: ldc_w 297
    //   299: if_icmpgt +11 -> 310
    //   302: ldc_w 297
    //   305: istore 4
    //   307: goto -206 -> 101
    //   310: iload 4
    //   312: ldc_w 298
    //   315: if_icmpgt +11 -> 326
    //   318: ldc_w 298
    //   321: istore 4
    //   323: goto -222 -> 101
    //   326: iload 4
    //   328: ldc_w 299
    //   331: if_icmpgt +11 -> 342
    //   334: ldc_w 299
    //   337: istore 4
    //   339: goto -238 -> 101
    //   342: iload 4
    //   344: ldc_w 300
    //   347: if_icmpgt +11 -> 358
    //   350: ldc_w 300
    //   353: istore 4
    //   355: goto -254 -> 101
    //   358: iload 4
    //   360: ldc_w 301
    //   363: if_icmpgt +11 -> 374
    //   366: ldc_w 301
    //   369: istore 4
    //   371: goto -270 -> 101
    //   374: iload 4
    //   376: ldc_w 302
    //   379: if_icmpgt -278 -> 101
    //   382: ldc_w 302
    //   385: istore 4
    //   387: goto -286 -> 101
    //   390: getstatic 84	com/antivirus/c:f	Lcom/a/a/a/c;
    //   393: ifnonnull +18 -> 411
    //   396: new 77	com/a/a/a/c
    //   399: dup
    //   400: aload_1
    //   401: ldc 79
    //   403: iconst_0
    //   404: iconst_0
    //   405: invokespecial 82	com/a/a/a/c:<init>	(Landroid/content/Context;Ljava/lang/String;IZ)V
    //   408: putstatic 84	com/antivirus/c:f	Lcom/a/a/a/c;
    //   411: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   414: invokeinterface 64 1 0
    //   419: ldc_w 304
    //   422: invokeinterface 261 2 0
    //   427: invokeinterface 75 1 0
    //   432: pop
    //   433: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   436: ldc_w 306
    //   439: aconst_null
    //   440: invokeinterface 124 3 0
    //   445: astore 24
    //   447: aload 24
    //   449: ifnull +41 -> 490
    //   452: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   455: invokeinterface 64 1 0
    //   460: ldc_w 306
    //   463: invokeinterface 261 2 0
    //   468: invokeinterface 75 1 0
    //   473: pop
    //   474: getstatic 84	com/antivirus/c:f	Lcom/a/a/a/c;
    //   477: ldc 187
    //   479: aload 24
    //   481: invokevirtual 206	com/a/a/a/c:b	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   484: invokeinterface 75 1 0
    //   489: pop
    //   490: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   493: ldc_w 308
    //   496: invokeinterface 312 2 0
    //   501: ifeq +51 -> 552
    //   504: getstatic 84	com/antivirus/c:f	Lcom/a/a/a/c;
    //   507: ldc 214
    //   509: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   512: ldc_w 308
    //   515: iconst_0
    //   516: invokeinterface 106 3 0
    //   521: invokevirtual 224	com/a/a/a/c:b	(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    //   524: invokeinterface 75 1 0
    //   529: pop
    //   530: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   533: invokeinterface 64 1 0
    //   538: ldc_w 308
    //   541: invokeinterface 261 2 0
    //   546: invokeinterface 75 1 0
    //   551: pop
    //   552: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   555: ldc_w 314
    //   558: aconst_null
    //   559: invokeinterface 124 3 0
    //   564: astore 25
    //   566: aload 25
    //   568: ifnull +52 -> 620
    //   571: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   574: invokeinterface 64 1 0
    //   579: ldc_w 314
    //   582: invokeinterface 261 2 0
    //   587: invokeinterface 75 1 0
    //   592: pop
    //   593: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   596: invokeinterface 64 1 0
    //   601: ldc_w 316
    //   604: aload 25
    //   606: invokestatic 196	com/antivirus/c:k	(Ljava/lang/String;)Ljava/lang/String;
    //   609: invokeinterface 169 3 0
    //   614: invokeinterface 75 1 0
    //   619: pop
    //   620: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   623: ldc_w 318
    //   626: aconst_null
    //   627: invokeinterface 124 3 0
    //   632: astore 26
    //   634: aload 26
    //   636: ifnull +51 -> 687
    //   639: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   642: invokeinterface 64 1 0
    //   647: ldc_w 318
    //   650: invokeinterface 261 2 0
    //   655: invokeinterface 75 1 0
    //   660: pop
    //   661: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   664: invokeinterface 64 1 0
    //   669: ldc 218
    //   671: aload 26
    //   673: invokestatic 196	com/antivirus/c:k	(Ljava/lang/String;)Ljava/lang/String;
    //   676: invokeinterface 169 3 0
    //   681: invokeinterface 75 1 0
    //   686: pop
    //   687: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   690: ldc_w 320
    //   693: aconst_null
    //   694: invokeinterface 124 3 0
    //   699: astore 27
    //   701: aload 27
    //   703: ifnull +51 -> 754
    //   706: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   709: invokeinterface 64 1 0
    //   714: ldc_w 320
    //   717: invokeinterface 261 2 0
    //   722: invokeinterface 75 1 0
    //   727: pop
    //   728: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   731: invokeinterface 64 1 0
    //   736: ldc 132
    //   738: aload 27
    //   740: invokestatic 196	com/antivirus/c:k	(Ljava/lang/String;)Ljava/lang/String;
    //   743: invokeinterface 169 3 0
    //   748: invokeinterface 75 1 0
    //   753: pop
    //   754: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   757: ldc_w 322
    //   760: aconst_null
    //   761: invokeinterface 124 3 0
    //   766: astore 19
    //   768: aload 19
    //   770: ifnull +31 -> 801
    //   773: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   776: invokeinterface 64 1 0
    //   781: ldc_w 322
    //   784: invokeinterface 261 2 0
    //   789: invokeinterface 75 1 0
    //   794: pop
    //   795: aload_1
    //   796: aload 19
    //   798: invokestatic 327	com/antivirus/m:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   801: aload_1
    //   802: invokevirtual 331	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   805: ldc_w 333
    //   808: ldc 120
    //   810: invokestatic 338	android/provider/Settings$System:putString	(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    //   813: pop
    //   814: ldc 120
    //   816: invokestatic 340	com/antivirus/c:c	(Ljava/lang/String;)V
    //   819: new 342	com/antivirus/applocker/c
    //   822: dup
    //   823: invokespecial 343	com/antivirus/applocker/c:<init>	()V
    //   826: aload_1
    //   827: aconst_null
    //   828: invokevirtual 346	com/antivirus/applocker/c:a	(Landroid/content/Context;[Ljava/lang/String;)V
    //   831: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   834: ldc_w 348
    //   837: aconst_null
    //   838: invokeinterface 124 3 0
    //   843: ifnull +25 -> 868
    //   846: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   849: invokeinterface 64 1 0
    //   854: ldc_w 348
    //   857: invokeinterface 261 2 0
    //   862: invokeinterface 75 1 0
    //   867: pop
    //   868: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   871: ldc_w 350
    //   874: aconst_null
    //   875: invokeinterface 124 3 0
    //   880: ifnull +25 -> 905
    //   883: getstatic 48	com/antivirus/c:d	Landroid/content/SharedPreferences;
    //   886: invokeinterface 64 1 0
    //   891: ldc_w 350
    //   894: invokeinterface 261 2 0
    //   899: invokeinterface 75 1 0
    //   904: pop
    //   905: aload_1
    //   906: ldc_w 352
    //   909: iconst_0
    //   910: invokevirtual 46	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   913: astore 10
    //   915: aload 10
    //   917: ldc_w 352
    //   920: ldc 120
    //   922: invokeinterface 124 3 0
    //   927: astore 11
    //   929: aload 11
    //   931: ifnull +68 -> 999
    //   934: aload 11
    //   936: ldc 120
    //   938: invokevirtual 358	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   941: ifne +58 -> 999
    //   944: new 77	com/a/a/a/c
    //   947: dup
    //   948: aload_1
    //   949: ldc_w 360
    //   952: iconst_0
    //   953: iconst_1
    //   954: invokespecial 82	com/a/a/a/c:<init>	(Landroid/content/Context;Ljava/lang/String;IZ)V
    //   957: astore 13
    //   959: aload 13
    //   961: ldc_w 360
    //   964: aload 11
    //   966: invokevirtual 206	com/a/a/a/c:b	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   969: pop
    //   970: aload 13
    //   972: invokevirtual 362	com/a/a/a/c:a	()Z
    //   975: pop
    //   976: aload 10
    //   978: invokeinterface 64 1 0
    //   983: ldc_w 352
    //   986: ldc 120
    //   988: invokeinterface 169 3 0
    //   993: invokeinterface 75 1 0
    //   998: pop
    //   999: new 364	java/io/File
    //   1002: dup
    //   1003: aload_1
    //   1004: invokevirtual 368	android/content/Context:getFilesDir	()Ljava/io/File;
    //   1007: invokevirtual 371	java/io/File:getParent	()Ljava/lang/String;
    //   1010: ldc_w 373
    //   1013: invokevirtual 376	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   1016: ldc_w 378
    //   1019: invokespecial 380	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   1022: invokevirtual 383	java/io/File:delete	()Z
    //   1025: pop
    //   1026: new 364	java/io/File
    //   1029: dup
    //   1030: aload_1
    //   1031: invokevirtual 368	android/content/Context:getFilesDir	()Ljava/io/File;
    //   1034: invokevirtual 371	java/io/File:getParent	()Ljava/lang/String;
    //   1037: ldc_w 373
    //   1040: invokevirtual 376	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   1043: ldc_w 385
    //   1046: invokespecial 380	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   1049: invokevirtual 383	java/io/File:delete	()Z
    //   1052: pop
    //   1053: getstatic 84	com/antivirus/c:f	Lcom/a/a/a/c;
    //   1056: ldc_w 387
    //   1059: ldc 120
    //   1061: invokevirtual 189	com/a/a/a/c:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1064: astore 5
    //   1066: aload 5
    //   1068: ldc 120
    //   1070: invokevirtual 358	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1073: ifne +19 -> 1092
    //   1076: getstatic 84	com/antivirus/c:f	Lcom/a/a/a/c;
    //   1079: ldc 200
    //   1081: aload 5
    //   1083: invokevirtual 206	com/a/a/a/c:b	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    //   1086: invokeinterface 75 1 0
    //   1091: pop
    //   1092: getstatic 84	com/antivirus/c:f	Lcom/a/a/a/c;
    //   1095: ldc_w 387
    //   1098: invokevirtual 389	com/a/a/a/c:a	(Ljava/lang/String;)Z
    //   1101: pop
    //   1102: getstatic 84	com/antivirus/c:f	Lcom/a/a/a/c;
    //   1105: invokevirtual 362	com/a/a/a/c:a	()Z
    //   1108: pop
    //   1109: new 391	com/antivirus/core/e/b
    //   1112: dup
    //   1113: invokespecial 392	com/antivirus/core/e/b:<init>	()V
    //   1116: aload_1
    //   1117: invokevirtual 394	com/antivirus/core/e/b:b	(Landroid/content/Context;)V
    //   1120: aload_1
    //   1121: invokestatic 398	com/antivirus/core/scanners/h:c	(Landroid/content/Context;)V
    //   1124: new 391	com/antivirus/core/e/b
    //   1127: dup
    //   1128: invokespecial 392	com/antivirus/core/e/b:<init>	()V
    //   1131: aload_1
    //   1132: invokevirtual 394	com/antivirus/core/e/b:b	(Landroid/content/Context;)V
    //   1135: aload_1
    //   1136: invokestatic 398	com/antivirus/core/scanners/h:c	(Landroid/content/Context;)V
    //   1139: goto -939 -> 200
    //   1142: astore 20
    //   1144: aload 20
    //   1146: invokestatic 102	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   1149: goto -335 -> 814
    //   1152: astore_2
    //   1153: goto -949 -> 204
    //
    // Exception table:
    //   from	to	target	type
    //   5	18	201	java/lang/Exception
    //   801	814	1142	java/lang/Exception
    //   21	50	1152	java/lang/Exception
  }

  public static void h(String paramString)
  {
    d.edit().putString("xx5", k(paramString)).commit();
  }

  public static void h(boolean paramBoolean)
  {
    D().putBoolean("show_blocked_warning", paramBoolean);
    n();
  }

  public static int i()
  {
    return d.getInt("buy_notification", -1);
  }

  public static void i(String paramString)
  {
    D().putString("default_auto_reject_message", paramString);
    n();
  }

  public static void i(boolean paramBoolean)
  {
    D().putBoolean("AUTO_SCAN_SMS_ENABLED", paramBoolean);
    n();
  }

  public static long j()
  {
    return d.getLong("version_update_last_time", 0L);
  }

  public static void j(String paramString)
  {
    D().putString("country_iso_code", paramString);
    n();
  }

  public static long k()
  {
    return d.getLong("last_backup_time", 0L);
  }

  private static String k(String paramString)
  {
    if (paramString == null)
      com.avg.toolkit.f.a.a("got null");
    byte[] arrayOfByte;
    String str1;
    for (String str2 = null; ; str2 = str1 + new String(a.a.a.a.a.a.a(arrayOfByte, false)))
    {
      return str2;
      arrayOfByte = paramString.getBytes();
      for (int i = 0; i < arrayOfByte.length; i++)
        arrayOfByte[i] = ((byte)(0xC ^ arrayOfByte[i]));
      str1 = "";
      for (int j = 0; j < 5; j++)
        str1 = str1 + '_';
    }
  }

  public static String l()
  {
    return d.getString("user_backup_dir", null);
  }

  private static String l(String paramString)
  {
    if (paramString == null)
    {
      com.avg.toolkit.f.a.a("got null");
      paramString = null;
    }
    while (true)
    {
      return paramString;
      if ((!TextUtils.isEmpty(paramString)) && (paramString.length() > 5))
      {
        int i = 0;
        int j = 0;
        while (i < 5)
        {
          if (paramString.charAt(i) != '_')
            j = 1;
          i++;
        }
        if (j == 0)
        {
          byte[] arrayOfByte = a.a.a.a.a.a.b(paramString.substring(5));
          for (int k = 0; k < arrayOfByte.length; k++)
            arrayOfByte[k] = ((byte)(0xC ^ arrayOfByte[k]));
          paramString = new String(arrayOfByte);
        }
      }
    }
  }

  public static boolean m()
  {
    return d.getBoolean("is_user_backup_dir_external", false);
  }

  public static void n()
  {
    if (e != null)
    {
      e.commit();
      e = null;
    }
  }

  public static String o()
  {
    return d.getString("updated_lost_msg", "");
  }

  public static boolean p()
  {
    return d.getBoolean("loxxer", false);
  }

  public static boolean q()
  {
    return d.getBoolean("applocker_timer", false);
  }

  public static boolean r()
  {
    return d.getBoolean("show_blocked_warning", true);
  }

  public static void s()
  {
    D().putBoolean("show_trusted_warning", false);
    n();
  }

  public static int t()
  {
    return d.getInt("show_spam_warning", -1);
  }

  public static String u()
  {
    return d.getString("default_auto_reject_message", null);
  }

  public static boolean v()
  {
    return d.getBoolean("show_redirect_dialog", true);
  }

  public static void w()
  {
    D().putBoolean("show_redirect_dialog", false);
    n();
  }

  public static boolean x()
  {
    return d.getBoolean("show_sms_auto_scan_dialog", true);
  }

  public static void y()
  {
    D().putBoolean("show_sms_auto_scan_dialog", false);
    n();
  }

  public static boolean z()
  {
    return d.getBoolean("AUTO_SCAN_SMS_ENABLED", false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.c
 * JD-Core Version:    0.6.2
 */