package com.keniu.security.f;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import java.io.File;
import java.util.Map;

public final class ab
{
  private static final String A = ".bak";
  private static final String B = ".dwn";
  private static final String C = ".unz";
  private static final String D = ".pat";
  private static final String E = ".zip";
  private static final String F = "version_data";
  private static final String G = "is_force_update";
  private static final String H = "update_time";
  private static final String I = "check_is_from_update";
  private static final String J = "com.ijinshan.mguard.update.UpdateManager";
  private static ab K;
  private static final String m = "utf-8";
  private static final String n = "version.ini";
  private static final String o = "url_root";
  private static final String p = "version_apk_ini";
  private static final String q = "version_apk_new_ini";
  private static final String r = "version_data_ini";
  private static final String s = "version";
  private static final String t = "type";
  private static final String u = "path_cache";
  private static final String v = "path_res";
  private static final String w = "path_data";
  private static final String x = "description";
  private static final String y = "path_external";
  private static final String z = "path_other";
  private Context a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private Map j;
  private Handler k;
  private HandlerThread l;

  public static ab a()
  {
    try
    {
      if (K == null)
        K = new ab();
      ab localab = K;
      return localab;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(Runnable paramRunnable)
  {
    try
    {
      Handler localHandler = this.k;
      if (localHandler == null);
      while (true)
      {
        return;
        this.k.removeCallbacks(paramRunnable);
      }
    }
    finally
    {
    }
  }

  public static boolean a(int paramInt)
  {
    if ((f.e() >= paramInt) || (f.g() >= paramInt));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  // ERROR //
  public static boolean a(File paramFile, Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 130	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   4: astore_2
    //   5: aload_0
    //   6: invokevirtual 136	java/io/File:exists	()Z
    //   9: ifeq +26 -> 35
    //   12: aload_0
    //   13: invokevirtual 139	java/io/File:length	()J
    //   16: aload_2
    //   17: ldc 140
    //   19: invokevirtual 146	android/content/res/Resources:openRawResourceFd	(I)Landroid/content/res/AssetFileDescriptor;
    //   22: invokevirtual 151	android/content/res/AssetFileDescriptor:getLength	()J
    //   25: lcmp
    //   26: ifne +9 -> 35
    //   29: iconst_0
    //   30: istore 11
    //   32: iload 11
    //   34: ireturn
    //   35: new 153	java/io/FileOutputStream
    //   38: dup
    //   39: aload_0
    //   40: iconst_0
    //   41: invokespecial 156	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   44: astore_3
    //   45: aload_1
    //   46: invokevirtual 130	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   49: ldc 140
    //   51: invokevirtual 160	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   54: astore 13
    //   56: aload 13
    //   58: astore 7
    //   60: sipush 1024
    //   63: newarray byte
    //   65: astore 16
    //   67: aload 7
    //   69: aload 16
    //   71: invokevirtual 166	java/io/InputStream:read	([B)I
    //   74: istore 17
    //   76: iload 17
    //   78: ifle +55 -> 133
    //   81: aload_3
    //   82: aload 16
    //   84: iconst_0
    //   85: iload 17
    //   87: invokevirtual 170	java/io/FileOutputStream:write	([BII)V
    //   90: goto -23 -> 67
    //   93: astore 15
    //   95: aload_3
    //   96: astore 5
    //   98: aload 15
    //   100: astore 6
    //   102: aload 6
    //   104: invokevirtual 173	java/lang/Exception:printStackTrace	()V
    //   107: aload 5
    //   109: ifnull +8 -> 117
    //   112: aload 5
    //   114: invokevirtual 176	java/io/FileOutputStream:close	()V
    //   117: aload 7
    //   119: ifnull +8 -> 127
    //   122: aload 7
    //   124: invokevirtual 177	java/io/InputStream:close	()V
    //   127: iconst_0
    //   128: istore 11
    //   130: goto -98 -> 32
    //   133: aload_3
    //   134: invokevirtual 176	java/io/FileOutputStream:close	()V
    //   137: aload 7
    //   139: ifnull +8 -> 147
    //   142: aload 7
    //   144: invokevirtual 177	java/io/InputStream:close	()V
    //   147: iconst_1
    //   148: istore 11
    //   150: goto -118 -> 32
    //   153: astore 18
    //   155: aload 18
    //   157: invokevirtual 178	java/io/IOException:printStackTrace	()V
    //   160: goto -13 -> 147
    //   163: astore 10
    //   165: aload 10
    //   167: invokevirtual 178	java/io/IOException:printStackTrace	()V
    //   170: goto -43 -> 127
    //   173: astore 8
    //   175: aconst_null
    //   176: astore 7
    //   178: aconst_null
    //   179: astore 5
    //   181: aload 5
    //   183: ifnull +8 -> 191
    //   186: aload 5
    //   188: invokevirtual 176	java/io/FileOutputStream:close	()V
    //   191: aload 7
    //   193: ifnull +8 -> 201
    //   196: aload 7
    //   198: invokevirtual 177	java/io/InputStream:close	()V
    //   201: aload 8
    //   203: athrow
    //   204: astore 9
    //   206: aload 9
    //   208: invokevirtual 178	java/io/IOException:printStackTrace	()V
    //   211: goto -10 -> 201
    //   214: astore 12
    //   216: aload_3
    //   217: astore 5
    //   219: aload 12
    //   221: astore 8
    //   223: aconst_null
    //   224: astore 7
    //   226: goto -45 -> 181
    //   229: astore 14
    //   231: aload_3
    //   232: astore 5
    //   234: aload 14
    //   236: astore 8
    //   238: goto -57 -> 181
    //   241: astore 8
    //   243: goto -62 -> 181
    //   246: astore 6
    //   248: aconst_null
    //   249: astore 7
    //   251: aconst_null
    //   252: astore 5
    //   254: goto -152 -> 102
    //   257: astore 4
    //   259: aload_3
    //   260: astore 5
    //   262: aload 4
    //   264: astore 6
    //   266: aconst_null
    //   267: astore 7
    //   269: goto -167 -> 102
    //
    // Exception table:
    //   from	to	target	type
    //   60	90	93	java/lang/Exception
    //   133	147	153	java/io/IOException
    //   112	127	163	java/io/IOException
    //   35	45	173	finally
    //   186	201	204	java/io/IOException
    //   45	56	214	finally
    //   60	90	229	finally
    //   102	107	241	finally
    //   35	45	246	java/lang/Exception
    //   45	56	257	java/lang/Exception
  }

  public static boolean b(int paramInt)
  {
    if (f.g() >= paramInt);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void h(String paramString)
  {
    long l1 = System.currentTimeMillis();
    SharedPreferences.Editor localEditor = this.a.getSharedPreferences("com.ijinshan.mguard.update.UpdateManager", 0).edit();
    localEditor.putString("update_time", paramString + "_" + l1);
    localEditor.commit();
  }

  private static void i(String paramString)
  {
    new File(paramString + ".bak").delete();
    new File(paramString + ".dwn").delete();
    new File(paramString + ".unz").delete();
    new File(paramString + ".pat").delete();
  }

  private String o()
  {
    return f.a(this.a.getApplicationInfo().dataDir) + "tmp" + File.separatorChar + "mosecurity.apk";
  }

  private String p()
  {
    return f.a(new StringBuilder().append(f.f()).append(this.c).toString()) + "mosecurity.apk";
  }

  public final void a(Runnable paramRunnable, long paramLong)
  {
    try
    {
      if (this.l == null)
      {
        this.l = new HandlerThread("update_manager");
        this.l.start();
        this.k = new Handler(this.l.getLooper());
      }
      this.k.postDelayed(paramRunnable, paramLong);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public final boolean a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: putfield 186	com/keniu/security/f/ab:a	Landroid/content/Context;
    //   5: new 277	com/keniu/security/f/h
    //   8: dup
    //   9: invokespecial 278	com/keniu/security/f/h:<init>	()V
    //   12: astore 4
    //   14: aload_1
    //   15: invokevirtual 282	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   18: astore 5
    //   20: aload 5
    //   22: ldc 43
    //   24: invokevirtual 288	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   27: astore 9
    //   29: new 290	java/io/InputStreamReader
    //   32: dup
    //   33: aload 9
    //   35: ldc 40
    //   37: invokespecial 293	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   40: astore 10
    //   42: aload 4
    //   44: aload 10
    //   46: invokevirtual 296	com/keniu/security/f/h:a	(Ljava/io/Reader;)Z
    //   49: istore 12
    //   51: iload 12
    //   53: ifne +21 -> 74
    //   56: aload 10
    //   58: invokevirtual 297	java/io/InputStreamReader:close	()V
    //   61: aload 9
    //   63: ifnull +998 -> 1061
    //   66: aload 9
    //   68: invokevirtual 177	java/io/InputStream:close	()V
    //   71: goto +990 -> 1061
    //   74: aload 10
    //   76: invokevirtual 297	java/io/InputStreamReader:close	()V
    //   79: aload 9
    //   81: ifnull +8 -> 89
    //   84: aload 9
    //   86: invokevirtual 177	java/io/InputStream:close	()V
    //   89: aload_0
    //   90: aload 4
    //   92: ldc_w 299
    //   95: ldc 46
    //   97: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   100: invokestatic 238	com/keniu/security/f/f:a	(Ljava/lang/String;)Ljava/lang/String;
    //   103: putfield 304	com/keniu/security/f/ab:f	Ljava/lang/String;
    //   106: aload_0
    //   107: aload 4
    //   109: ldc_w 299
    //   112: ldc 49
    //   114: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   117: putfield 306	com/keniu/security/f/ab:g	Ljava/lang/String;
    //   120: aload_0
    //   121: aload 4
    //   123: ldc_w 299
    //   126: ldc 55
    //   128: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   131: putfield 308	com/keniu/security/f/ab:i	Ljava/lang/String;
    //   134: aload_0
    //   135: aload 4
    //   137: ldc_w 299
    //   140: ldc 52
    //   142: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   145: putfield 310	com/keniu/security/f/ab:h	Ljava/lang/String;
    //   148: aload_0
    //   149: getfield 310	com/keniu/security/f/ab:h	Ljava/lang/String;
    //   152: invokestatic 315	com/keniu/security/f/k:a	(Ljava/lang/String;)Z
    //   155: ifeq +11 -> 166
    //   158: aload_0
    //   159: aload_0
    //   160: getfield 306	com/keniu/security/f/ab:g	Ljava/lang/String;
    //   163: putfield 310	com/keniu/security/f/ab:h	Ljava/lang/String;
    //   166: aload_1
    //   167: invokevirtual 319	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   170: astore 13
    //   172: aload 13
    //   174: aload_1
    //   175: invokevirtual 322	android/content/Context:getPackageName	()Ljava/lang/String;
    //   178: iconst_0
    //   179: invokevirtual 327	android/content/pm/PackageManager:getApplicationInfo	(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    //   182: astore 14
    //   184: aload_0
    //   185: aload 14
    //   187: getfield 330	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   190: putfield 332	com/keniu/security/f/ab:e	Ljava/lang/String;
    //   193: aload_0
    //   194: aload 4
    //   196: ldc_w 334
    //   199: ldc 76
    //   201: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   204: putfield 252	com/keniu/security/f/ab:c	Ljava/lang/String;
    //   207: aload_0
    //   208: new 198	java/lang/StringBuilder
    //   211: dup
    //   212: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   215: aload 14
    //   217: getfield 235	android/content/pm/ApplicationInfo:dataDir	Ljava/lang/String;
    //   220: invokestatic 238	com/keniu/security/f/f:a	(Ljava/lang/String;)Ljava/lang/String;
    //   223: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: aload 4
    //   228: ldc_w 334
    //   231: ldc 70
    //   233: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   236: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   242: putfield 336	com/keniu/security/f/ab:b	Ljava/lang/String;
    //   245: aload_0
    //   246: aload_0
    //   247: getfield 336	com/keniu/security/f/ab:b	Ljava/lang/String;
    //   250: invokestatic 238	com/keniu/security/f/f:a	(Ljava/lang/String;)Ljava/lang/String;
    //   253: putfield 336	com/keniu/security/f/ab:b	Ljava/lang/String;
    //   256: new 132	java/io/File
    //   259: dup
    //   260: aload_0
    //   261: getfield 336	com/keniu/security/f/ab:b	Ljava/lang/String;
    //   264: invokespecial 223	java/io/File:<init>	(Ljava/lang/String;)V
    //   267: invokevirtual 339	java/io/File:mkdirs	()Z
    //   270: pop
    //   271: invokestatic 344	com/keniu/security/f/s:a	()Lcom/keniu/security/f/s;
    //   274: new 198	java/lang/StringBuilder
    //   277: dup
    //   278: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   281: aload_0
    //   282: getfield 336	com/keniu/security/f/ab:b	Ljava/lang/String;
    //   285: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: aload 4
    //   290: ldc_w 334
    //   293: ldc 64
    //   295: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   298: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   301: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   304: invokevirtual 346	com/keniu/security/f/s:a	(Ljava/lang/String;)V
    //   307: aload 4
    //   309: ldc_w 334
    //   312: ldc 79
    //   314: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   317: astore 16
    //   319: aload 16
    //   321: invokestatic 315	com/keniu/security/f/k:a	(Ljava/lang/String;)Z
    //   324: ifne +102 -> 426
    //   327: aload 16
    //   329: ldc_w 348
    //   332: invokevirtual 354	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   335: astore 34
    //   337: aload 34
    //   339: ifnull +87 -> 426
    //   342: aload 34
    //   344: arraylength
    //   345: istore 35
    //   347: iconst_0
    //   348: istore 36
    //   350: iload 36
    //   352: iload 35
    //   354: if_icmpge +72 -> 426
    //   357: aload 34
    //   359: iload 36
    //   361: aaload
    //   362: astore 37
    //   364: new 132	java/io/File
    //   367: dup
    //   368: new 198	java/lang/StringBuilder
    //   371: dup
    //   372: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   375: aload_0
    //   376: getfield 336	com/keniu/security/f/ab:b	Ljava/lang/String;
    //   379: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   382: aload 37
    //   384: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   387: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   390: invokespecial 223	java/io/File:<init>	(Ljava/lang/String;)V
    //   393: invokevirtual 339	java/io/File:mkdirs	()Z
    //   396: pop
    //   397: iinc 36 1
    //   400: goto -50 -> 350
    //   403: aload 7
    //   405: ifnull +8 -> 413
    //   408: aload 7
    //   410: invokevirtual 297	java/io/InputStreamReader:close	()V
    //   413: aload 8
    //   415: ifnull +8 -> 423
    //   418: aload 8
    //   420: invokevirtual 177	java/io/InputStream:close	()V
    //   423: aload 6
    //   425: athrow
    //   426: aload_0
    //   427: aload 13
    //   429: aload_1
    //   430: invokevirtual 322	android/content/Context:getPackageName	()Ljava/lang/String;
    //   433: iconst_0
    //   434: invokevirtual 358	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   437: getfield 363	android/content/pm/PackageInfo:versionCode	I
    //   440: invokestatic 368	com/keniu/security/f/ag:a	(I)Ljava/lang/String;
    //   443: putfield 370	com/keniu/security/f/ab:d	Ljava/lang/String;
    //   446: aload_0
    //   447: invokespecial 372	com/keniu/security/f/ab:p	()Ljava/lang/String;
    //   450: invokestatic 374	com/keniu/security/f/ab:i	(Ljava/lang/String;)V
    //   453: aload_0
    //   454: invokespecial 376	com/keniu/security/f/ab:o	()Ljava/lang/String;
    //   457: invokestatic 374	com/keniu/security/f/ab:i	(Ljava/lang/String;)V
    //   460: new 132	java/io/File
    //   463: dup
    //   464: aload_0
    //   465: invokespecial 376	com/keniu/security/f/ab:o	()Ljava/lang/String;
    //   468: invokespecial 223	java/io/File:<init>	(Ljava/lang/String;)V
    //   471: invokevirtual 226	java/io/File:delete	()Z
    //   474: pop
    //   475: aload_1
    //   476: ldc 35
    //   478: iconst_0
    //   479: invokevirtual 190	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   482: astore 18
    //   484: aload 4
    //   486: ldc_w 334
    //   489: ldc 58
    //   491: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   494: astore 19
    //   496: aload 19
    //   498: aload 18
    //   500: ldc 23
    //   502: aconst_null
    //   503: invokeinterface 379 3 0
    //   508: invokestatic 382	com/keniu/security/f/ag:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   511: ifle +32 -> 543
    //   514: aload 18
    //   516: invokeinterface 196 1 0
    //   521: astore 31
    //   523: aload 31
    //   525: ldc 23
    //   527: aload 19
    //   529: invokeinterface 218 3 0
    //   534: pop
    //   535: aload 31
    //   537: invokeinterface 221 1 0
    //   542: pop
    //   543: aload 18
    //   545: ldc 32
    //   547: new 198	java/lang/StringBuilder
    //   550: dup
    //   551: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   554: aload_0
    //   555: getfield 370	com/keniu/security/f/ab:d	Ljava/lang/String;
    //   558: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   561: ldc 205
    //   563: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   566: ldc_w 384
    //   569: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   572: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   575: invokeinterface 379 3 0
    //   580: new 198	java/lang/StringBuilder
    //   583: dup
    //   584: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   587: aload_0
    //   588: getfield 370	com/keniu/security/f/ab:d	Ljava/lang/String;
    //   591: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   594: ldc 205
    //   596: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   599: ldc_w 386
    //   602: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   605: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   608: invokevirtual 389	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   611: ifne +75 -> 686
    //   614: aload_0
    //   615: invokevirtual 391	com/keniu/security/f/ab:h	()J
    //   618: lconst_0
    //   619: lcmp
    //   620: ifeq +11 -> 631
    //   623: aload_0
    //   624: aload_0
    //   625: getfield 370	com/keniu/security/f/ab:d	Ljava/lang/String;
    //   628: invokespecial 393	com/keniu/security/f/ab:h	(Ljava/lang/String;)V
    //   631: aload 18
    //   633: invokeinterface 196 1 0
    //   638: astore 28
    //   640: aload 28
    //   642: ldc 32
    //   644: new 198	java/lang/StringBuilder
    //   647: dup
    //   648: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   651: aload_0
    //   652: getfield 370	com/keniu/security/f/ab:d	Ljava/lang/String;
    //   655: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   658: ldc 205
    //   660: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   663: ldc_w 386
    //   666: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   669: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   672: invokeinterface 218 3 0
    //   677: pop
    //   678: aload 28
    //   680: invokeinterface 221 1 0
    //   685: pop
    //   686: aload_0
    //   687: new 395	java/util/HashMap
    //   690: dup
    //   691: invokespecial 396	java/util/HashMap:<init>	()V
    //   694: putfield 398	com/keniu/security/f/ab:j	Ljava/util/Map;
    //   697: aload 4
    //   699: invokevirtual 401	com/keniu/security/f/h:a	()Ljava/util/Collection;
    //   702: invokeinterface 407 1 0
    //   707: astore 20
    //   709: aload 20
    //   711: invokeinterface 412 1 0
    //   716: ifeq +307 -> 1023
    //   719: aload 20
    //   721: invokeinterface 416 1 0
    //   726: checkcast 350	java/lang/String
    //   729: astore 21
    //   731: aload 21
    //   733: ldc_w 334
    //   736: invokevirtual 420	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   739: ifne -30 -> 709
    //   742: aload 21
    //   744: ldc_w 299
    //   747: invokevirtual 420	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   750: ifne -41 -> 709
    //   753: new 422	com/keniu/security/f/ad
    //   756: dup
    //   757: invokespecial 423	com/keniu/security/f/ad:<init>	()V
    //   760: astore 22
    //   762: aload 4
    //   764: aload 21
    //   766: ldc 61
    //   768: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   771: astore 23
    //   773: ldc_w 425
    //   776: aload 23
    //   778: invokevirtual 429	java/lang/String:compareToIgnoreCase	(Ljava/lang/String;)I
    //   781: ifne +198 -> 979
    //   784: iconst_1
    //   785: istore 25
    //   787: aload 22
    //   789: iload 25
    //   791: putfield 431	com/keniu/security/f/ad:a	I
    //   794: aload 22
    //   796: aload 4
    //   798: aload 21
    //   800: ldc 70
    //   802: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   805: putfield 432	com/keniu/security/f/ad:b	Ljava/lang/String;
    //   808: aload 22
    //   810: getfield 432	com/keniu/security/f/ad:b	Ljava/lang/String;
    //   813: invokestatic 315	com/keniu/security/f/k:a	(Ljava/lang/String;)Z
    //   816: ifeq +17 -> 833
    //   819: aload 22
    //   821: aload 4
    //   823: aload 21
    //   825: ldc 67
    //   827: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   830: putfield 432	com/keniu/security/f/ad:b	Ljava/lang/String;
    //   833: aload 22
    //   835: aload 4
    //   837: aload 21
    //   839: ldc 73
    //   841: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   844: putfield 433	com/keniu/security/f/ad:c	Ljava/lang/String;
    //   847: aload_0
    //   848: getfield 398	com/keniu/security/f/ab:j	Ljava/util/Map;
    //   851: aload 21
    //   853: aload 22
    //   855: invokeinterface 439 3 0
    //   860: pop
    //   861: aload 4
    //   863: aload 21
    //   865: ldc 58
    //   867: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   870: aload 22
    //   872: getfield 431	com/keniu/security/f/ad:a	I
    //   875: new 198	java/lang/StringBuilder
    //   878: dup
    //   879: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   882: aload_0
    //   883: getfield 336	com/keniu/security/f/ab:b	Ljava/lang/String;
    //   886: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   889: aload 22
    //   891: getfield 432	com/keniu/security/f/ad:b	Ljava/lang/String;
    //   894: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   897: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   900: invokestatic 442	com/keniu/security/f/f:a	(ILjava/lang/String;)Ljava/lang/String;
    //   903: invokestatic 382	com/keniu/security/f/ag:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   906: ifle -197 -> 709
    //   909: new 198	java/lang/StringBuilder
    //   912: dup
    //   913: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   916: aload_0
    //   917: getfield 336	com/keniu/security/f/ab:b	Ljava/lang/String;
    //   920: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   923: aload 22
    //   925: getfield 432	com/keniu/security/f/ad:b	Ljava/lang/String;
    //   928: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   931: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   934: invokestatic 374	com/keniu/security/f/ab:i	(Ljava/lang/String;)V
    //   937: aload_0
    //   938: aload 4
    //   940: aload 21
    //   942: ldc 67
    //   944: invokevirtual 302	com/keniu/security/f/h:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   947: new 198	java/lang/StringBuilder
    //   950: dup
    //   951: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   954: aload_0
    //   955: getfield 336	com/keniu/security/f/ab:b	Ljava/lang/String;
    //   958: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   961: aload 22
    //   963: getfield 432	com/keniu/security/f/ad:b	Ljava/lang/String;
    //   966: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   969: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   972: invokevirtual 445	com/keniu/security/f/ab:a	(Ljava/lang/String;Ljava/lang/String;)Z
    //   975: pop
    //   976: goto -267 -> 709
    //   979: ldc_w 447
    //   982: aload 23
    //   984: invokevirtual 429	java/lang/String:compareToIgnoreCase	(Ljava/lang/String;)I
    //   987: ifne +9 -> 996
    //   990: iconst_2
    //   991: istore 25
    //   993: goto -206 -> 787
    //   996: ldc_w 449
    //   999: aload 23
    //   1001: invokevirtual 429	java/lang/String:compareToIgnoreCase	(Ljava/lang/String;)I
    //   1004: istore 24
    //   1006: iload 24
    //   1008: ifne +9 -> 1017
    //   1011: iconst_3
    //   1012: istore 25
    //   1014: goto -227 -> 787
    //   1017: iconst_0
    //   1018: istore 25
    //   1020: goto -233 -> 787
    //   1023: iconst_1
    //   1024: istore_3
    //   1025: goto +38 -> 1063
    //   1028: astore 39
    //   1030: aload 9
    //   1032: astore 8
    //   1034: aload 39
    //   1036: astore 6
    //   1038: aconst_null
    //   1039: astore 7
    //   1041: goto -638 -> 403
    //   1044: astore 11
    //   1046: aload 10
    //   1048: astore 7
    //   1050: aload 9
    //   1052: astore 8
    //   1054: aload 11
    //   1056: astore 6
    //   1058: goto -655 -> 403
    //   1061: iconst_0
    //   1062: istore_3
    //   1063: iload_3
    //   1064: ireturn
    //   1065: astore 6
    //   1067: aconst_null
    //   1068: astore 7
    //   1070: aconst_null
    //   1071: astore 8
    //   1073: goto -670 -> 403
    //   1076: astore_2
    //   1077: iconst_0
    //   1078: istore_3
    //   1079: goto -16 -> 1063
    //
    // Exception table:
    //   from	to	target	type
    //   29	42	1028	finally
    //   42	51	1044	finally
    //   20	29	1065	finally
    //   0	20	1076	java/lang/Exception
    //   56	1006	1076	java/lang/Exception
  }

  public final boolean a(aa paramaa)
  {
    String str1 = l();
    String str2 = j();
    if (paramaa.f)
    {
      int i1 = paramaa.e;
      String str4 = null;
      if (i1 == 0)
        str4 = paramaa.d;
      if (f.a(str2, str1 + ".unz", str4))
      {
        new File(str2).delete();
        str2 = str1 + ".unz";
      }
    }
    else
    {
      if (paramaa.e != 1)
        break label210;
      if (f.a(this.e, str2, str1 + ".pat", paramaa.d))
        new File(str2).delete();
    }
    label210: for (String str3 = str1 + ".pat"; ; str3 = str2)
      for (boolean bool = f.b(str3, str1); ; bool = false)
      {
        if (!bool)
          new File(str3).delete();
        return bool;
        str3 = str2;
      }
  }

  public final boolean a(ae paramae)
  {
    paramae.h();
    a(paramae, 0L);
    return true;
  }

  public final boolean a(String paramString)
  {
    if ((ad)this.j.get(paramString) != null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(String paramString, aa paramaa)
  {
    String str1 = b(paramString);
    String str2 = e(paramString);
    if (paramaa.f)
    {
      int i1 = paramaa.e;
      String str5 = null;
      if (i1 == 0)
        str5 = paramaa.d;
      if (f.a(str2, str1 + ".unz", str5))
      {
        new File(str2).delete();
        str2 = str1 + ".unz";
      }
    }
    else if (paramaa.e == 1)
    {
      if (!f.a(str1, str2, str1 + ".pat", paramaa.d))
        break label241;
      new File(str2).delete();
    }
    for (String str3 = str1 + ".pat"; ; str3 = str2)
    {
      boolean bool1 = f.b(str3, str1);
      String str4 = str3;
      boolean bool2 = bool1;
      while (true)
      {
        if (!bool2)
          new File(str4).delete();
        return bool2;
        if (paramaa.e != 2)
          break;
        if (l.a(str2, str1))
        {
          bool2 = true;
          str4 = str2;
        }
        else
        {
          label241: str4 = str2;
          bool2 = false;
        }
      }
    }
  }

  // ERROR //
  public final boolean a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 186	com/keniu/security/f/ab:a	Landroid/content/Context;
    //   4: invokevirtual 282	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   7: astore 13
    //   9: aload 13
    //   11: aload_1
    //   12: invokevirtual 288	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   15: astore 43
    //   17: aload 43
    //   19: astore 5
    //   21: new 153	java/io/FileOutputStream
    //   24: dup
    //   25: new 198	java/lang/StringBuilder
    //   28: dup
    //   29: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   32: aload_2
    //   33: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: ldc 8
    //   38: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokespecial 490	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   47: astore 44
    //   49: aload 5
    //   51: astore 11
    //   53: aload 44
    //   55: astore 10
    //   57: aload 11
    //   59: ifnull +8 -> 67
    //   62: aload 10
    //   64: ifnonnull +726 -> 790
    //   67: aload 13
    //   69: new 198	java/lang/StringBuilder
    //   72: dup
    //   73: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   76: aload_1
    //   77: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: ldc 20
    //   82: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   88: invokevirtual 288	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   91: astore 37
    //   93: aload 37
    //   95: astore 17
    //   97: new 153	java/io/FileOutputStream
    //   100: dup
    //   101: new 198	java/lang/StringBuilder
    //   104: dup
    //   105: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   108: aload_2
    //   109: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: ldc 20
    //   114: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: ldc 8
    //   119: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   125: invokespecial 490	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   128: astore 38
    //   130: aload 38
    //   132: astore 10
    //   134: aload 17
    //   136: astore 11
    //   138: iconst_1
    //   139: istore 18
    //   141: sipush 4096
    //   144: newarray byte
    //   146: astore 20
    //   148: aload 11
    //   150: aload 20
    //   152: invokevirtual 166	java/io/InputStream:read	([B)I
    //   155: istore 21
    //   157: iload 21
    //   159: ifle +87 -> 246
    //   162: aload 10
    //   164: aload 20
    //   166: iconst_0
    //   167: iload 21
    //   169: invokevirtual 170	java/io/FileOutputStream:write	([BII)V
    //   172: goto -24 -> 148
    //   175: astore 19
    //   177: aload 10
    //   179: astore 4
    //   181: aload 11
    //   183: astore 5
    //   185: iconst_0
    //   186: istore 6
    //   188: aload 5
    //   190: ifnull +8 -> 198
    //   193: aload 5
    //   195: invokevirtual 177	java/io/InputStream:close	()V
    //   198: aload 4
    //   200: ifnull +8 -> 208
    //   203: aload 4
    //   205: invokevirtual 176	java/io/FileOutputStream:close	()V
    //   208: iload 6
    //   210: istore 8
    //   212: iload 8
    //   214: ireturn
    //   215: astore 14
    //   217: aconst_null
    //   218: astore 5
    //   220: aload 5
    //   222: astore 11
    //   224: aconst_null
    //   225: astore 10
    //   227: goto -170 -> 57
    //   230: astore 16
    //   232: aload 11
    //   234: astore 17
    //   236: aload 17
    //   238: astore 11
    //   240: iconst_0
    //   241: istore 18
    //   243: goto -102 -> 141
    //   246: aload 10
    //   248: invokevirtual 493	java/io/FileOutputStream:flush	()V
    //   251: aload 10
    //   253: invokevirtual 176	java/io/FileOutputStream:close	()V
    //   256: iload 18
    //   258: ifeq +526 -> 784
    //   261: new 132	java/io/File
    //   264: dup
    //   265: new 198	java/lang/StringBuilder
    //   268: dup
    //   269: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   272: aload_2
    //   273: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: ldc 20
    //   278: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: ldc 8
    //   283: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   286: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   289: invokespecial 223	java/io/File:<init>	(Ljava/lang/String;)V
    //   292: new 132	java/io/File
    //   295: dup
    //   296: new 198	java/lang/StringBuilder
    //   299: dup
    //   300: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   303: aload_2
    //   304: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   307: ldc 20
    //   309: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   315: invokespecial 223	java/io/File:<init>	(Ljava/lang/String;)V
    //   318: invokevirtual 497	java/io/File:renameTo	(Ljava/io/File;)Z
    //   321: istore 27
    //   323: iload 27
    //   325: istore 22
    //   327: new 499	java/util/zip/ZipFile
    //   330: dup
    //   331: new 198	java/lang/StringBuilder
    //   334: dup
    //   335: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   338: aload_2
    //   339: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: ldc 20
    //   344: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   347: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   350: invokespecial 500	java/util/zip/ZipFile:<init>	(Ljava/lang/String;)V
    //   353: astore 28
    //   355: aload 28
    //   357: invokevirtual 504	java/util/zip/ZipFile:entries	()Ljava/util/Enumeration;
    //   360: astore 30
    //   362: aload 30
    //   364: invokeinterface 509 1 0
    //   369: ifeq +135 -> 504
    //   372: new 511	java/io/BufferedInputStream
    //   375: dup
    //   376: aload 28
    //   378: aload 30
    //   380: invokeinterface 514 1 0
    //   385: checkcast 516	java/util/zip/ZipEntry
    //   388: invokevirtual 520	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   391: invokespecial 523	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   394: astore 31
    //   396: new 153	java/io/FileOutputStream
    //   399: dup
    //   400: new 132	java/io/File
    //   403: dup
    //   404: new 198	java/lang/StringBuilder
    //   407: dup
    //   408: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   411: aload_2
    //   412: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: ldc 8
    //   417: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   420: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   423: invokespecial 223	java/io/File:<init>	(Ljava/lang/String;)V
    //   426: invokespecial 526	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   429: astore 32
    //   431: new 528	java/io/BufferedOutputStream
    //   434: dup
    //   435: aload 32
    //   437: sipush 4096
    //   440: invokespecial 531	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   443: astore 33
    //   445: sipush 4096
    //   448: newarray byte
    //   450: astore 34
    //   452: aload 31
    //   454: aload 34
    //   456: iconst_0
    //   457: sipush 4096
    //   460: invokevirtual 534	java/io/BufferedInputStream:read	([BII)I
    //   463: istore 35
    //   465: iload 35
    //   467: iconst_m1
    //   468: if_icmpeq +16 -> 484
    //   471: aload 33
    //   473: aload 34
    //   475: iconst_0
    //   476: iload 35
    //   478: invokevirtual 535	java/io/BufferedOutputStream:write	([BII)V
    //   481: goto -29 -> 452
    //   484: aload 33
    //   486: invokevirtual 536	java/io/BufferedOutputStream:flush	()V
    //   489: aload 33
    //   491: invokevirtual 537	java/io/BufferedOutputStream:close	()V
    //   494: aload 31
    //   496: invokevirtual 538	java/io/BufferedInputStream:close	()V
    //   499: aload 32
    //   501: invokevirtual 176	java/io/FileOutputStream:close	()V
    //   504: aload 28
    //   506: invokevirtual 539	java/util/zip/ZipFile:close	()V
    //   509: new 132	java/io/File
    //   512: dup
    //   513: new 198	java/lang/StringBuilder
    //   516: dup
    //   517: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   520: aload_2
    //   521: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   524: ldc 20
    //   526: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   529: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   532: invokespecial 223	java/io/File:<init>	(Ljava/lang/String;)V
    //   535: invokevirtual 226	java/io/File:delete	()Z
    //   538: pop
    //   539: new 132	java/io/File
    //   542: dup
    //   543: new 198	java/lang/StringBuilder
    //   546: dup
    //   547: invokespecial 199	java/lang/StringBuilder:<init>	()V
    //   550: aload_2
    //   551: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   554: ldc 8
    //   556: invokevirtual 203	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   559: invokevirtual 212	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   562: invokespecial 223	java/io/File:<init>	(Ljava/lang/String;)V
    //   565: new 132	java/io/File
    //   568: dup
    //   569: aload_2
    //   570: invokespecial 223	java/io/File:<init>	(Ljava/lang/String;)V
    //   573: invokevirtual 497	java/io/File:renameTo	(Ljava/io/File;)Z
    //   576: istore 24
    //   578: iload 24
    //   580: istore 8
    //   582: aload 11
    //   584: ifnull -372 -> 212
    //   587: aload 11
    //   589: invokevirtual 177	java/io/InputStream:close	()V
    //   592: goto -380 -> 212
    //   595: astore 25
    //   597: goto -385 -> 212
    //   600: astore 7
    //   602: iload 6
    //   604: istore 8
    //   606: goto -394 -> 212
    //   609: astore 9
    //   611: aconst_null
    //   612: astore 10
    //   614: aconst_null
    //   615: astore 11
    //   617: aload 11
    //   619: ifnull +8 -> 627
    //   622: aload 11
    //   624: invokevirtual 177	java/io/InputStream:close	()V
    //   627: aload 10
    //   629: ifnull +8 -> 637
    //   632: aload 10
    //   634: invokevirtual 176	java/io/FileOutputStream:close	()V
    //   637: aload 9
    //   639: athrow
    //   640: astore 12
    //   642: goto -5 -> 637
    //   645: astore 9
    //   647: aload 5
    //   649: astore 11
    //   651: aconst_null
    //   652: astore 10
    //   654: goto -37 -> 617
    //   657: astore 9
    //   659: goto -42 -> 617
    //   662: astore 42
    //   664: aload 17
    //   666: astore 11
    //   668: aload 42
    //   670: astore 9
    //   672: goto -55 -> 617
    //   675: astore 9
    //   677: aconst_null
    //   678: astore 10
    //   680: goto -63 -> 617
    //   683: astore_3
    //   684: aconst_null
    //   685: astore 4
    //   687: aconst_null
    //   688: astore 5
    //   690: iconst_0
    //   691: istore 6
    //   693: goto -505 -> 188
    //   696: astore 46
    //   698: aconst_null
    //   699: astore 4
    //   701: iconst_0
    //   702: istore 6
    //   704: goto -516 -> 188
    //   707: astore 15
    //   709: aload 10
    //   711: astore 4
    //   713: aload 11
    //   715: astore 5
    //   717: iconst_0
    //   718: istore 6
    //   720: goto -532 -> 188
    //   723: astore 40
    //   725: aload 17
    //   727: astore 41
    //   729: aload 10
    //   731: astore 4
    //   733: aload 41
    //   735: astore 5
    //   737: iconst_0
    //   738: istore 6
    //   740: goto -552 -> 188
    //   743: astore 26
    //   745: aload 11
    //   747: astore 5
    //   749: aconst_null
    //   750: astore 4
    //   752: iconst_0
    //   753: istore 6
    //   755: goto -567 -> 188
    //   758: astore 23
    //   760: aload 11
    //   762: astore 5
    //   764: iload 22
    //   766: istore 6
    //   768: aconst_null
    //   769: astore 4
    //   771: goto -583 -> 188
    //   774: astore 39
    //   776: goto -540 -> 236
    //   779: astore 45
    //   781: goto -561 -> 220
    //   784: iconst_0
    //   785: istore 22
    //   787: goto -248 -> 539
    //   790: iconst_0
    //   791: istore 18
    //   793: goto -652 -> 141
    //   796: astore 29
    //   798: aload 11
    //   800: astore 5
    //   802: iload 22
    //   804: istore 6
    //   806: aconst_null
    //   807: astore 4
    //   809: goto -621 -> 188
    //
    // Exception table:
    //   from	to	target	type
    //   141	172	175	java/lang/Exception
    //   246	256	175	java/lang/Exception
    //   9	17	215	java/io/IOException
    //   67	93	230	java/io/IOException
    //   587	592	595	java/lang/Exception
    //   193	208	600	java/lang/Exception
    //   0	9	609	finally
    //   9	17	609	finally
    //   622	637	640	java/lang/Exception
    //   21	49	645	finally
    //   67	93	657	finally
    //   141	172	657	finally
    //   246	256	657	finally
    //   97	130	662	finally
    //   261	323	675	finally
    //   327	539	675	finally
    //   539	578	675	finally
    //   0	9	683	java/lang/Exception
    //   9	17	683	java/lang/Exception
    //   21	49	696	java/lang/Exception
    //   67	93	707	java/lang/Exception
    //   97	130	723	java/lang/Exception
    //   261	323	743	java/lang/Exception
    //   539	578	758	java/lang/Exception
    //   97	130	774	java/io/IOException
    //   21	49	779	java/io/IOException
    //   327	539	796	java/lang/Exception
  }

  public final String b()
  {
    return this.f;
  }

  public final String b(String paramString)
  {
    ad localad = (ad)this.j.get(paramString);
    if (localad != null);
    for (String str = this.b + localad.b; ; str = null)
      return str;
  }

  public final String c()
  {
    return this.g;
  }

  public final String c(String paramString)
  {
    ad localad = (ad)this.j.get(paramString);
    if (localad != null);
    for (String str = f.a(localad.a, this.b + localad.b); ; str = null)
      return str;
  }

  public final String d()
  {
    return this.h;
  }

  public final String d(String paramString)
  {
    ad localad = (ad)this.j.get(paramString);
    if (localad != null);
    for (String str = localad.c; ; str = null)
      return str;
  }

  public final String e()
  {
    return this.i;
  }

  public final String e(String paramString)
  {
    String str1 = b(paramString);
    if (str1 == null);
    for (String str2 = null; ; str2 = str1 + ".dwn")
      return str2;
  }

  public final boolean f()
  {
    String str = this.a.getSharedPreferences("com.ijinshan.mguard.update.UpdateManager", 0).getString("is_force_update", null);
    if ((str != null) && (str.compareToIgnoreCase(this.d) == 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean f(String paramString)
  {
    PackageManager localPackageManager = this.a.getPackageManager();
    File localFile1 = new File(o());
    File localFile2 = new File(p());
    boolean bool1;
    if ((!localFile1.exists()) && (!localFile2.exists()))
      bool1 = false;
    while (true)
    {
      return bool1;
      if ((!localFile1.exists()) && (localFile2.exists()))
        try
        {
          boolean bool5 = paramString.equals(ag.a(localPackageManager.getPackageArchiveInfo(p(), 0).versionCode));
          bool1 = bool5;
        }
        catch (Exception localException4)
        {
          bool1 = false;
        }
      else if ((localFile1.exists()) && (!localFile2.exists()))
        try
        {
          boolean bool4 = paramString.equals(ag.a(localPackageManager.getPackageArchiveInfo(o(), 0).versionCode));
          bool1 = bool4;
        }
        catch (Exception localException3)
        {
          bool1 = false;
        }
      else if ((localFile1.exists()) && (localFile2.exists()))
        try
        {
          boolean bool3 = paramString.equals(ag.a(localPackageManager.getPackageArchiveInfo(p(), 0).versionCode));
          if (bool3)
            bool1 = true;
        }
        catch (Exception localException1)
        {
          try
          {
            boolean bool2 = paramString.equals(ag.a(localPackageManager.getPackageArchiveInfo(o(), 0).versionCode));
            if (bool2)
              bool1 = true;
          }
          catch (Exception localException2)
          {
          }
        }
      else
        bool1 = false;
    }
  }

  public final void g()
  {
    SharedPreferences.Editor localEditor = this.a.getSharedPreferences("com.ijinshan.mguard.update.UpdateManager", 0).edit();
    localEditor.putString("is_force_update", this.d);
    localEditor.commit();
  }

  public final void g(String paramString)
  {
    SharedPreferences.Editor localEditor = this.a.getSharedPreferences("com.ijinshan.mguard.update.UpdateManager", 0).edit();
    localEditor.putString("version_data", paramString);
    localEditor.commit();
  }

  public final long h()
  {
    String str = this.a.getSharedPreferences("com.ijinshan.mguard.update.UpdateManager", 0).getString("update_time", null);
    if ((str != null) && (str.startsWith(this.d)));
    for (long l1 = Long.parseLong(str.substring(1 + str.lastIndexOf("_"), str.length())); ; l1 = 0L)
      return l1;
  }

  public final boolean i()
  {
    File localFile1;
    boolean bool;
    if (!f.d())
    {
      localFile1 = new File(f.a(this.a.getApplicationInfo().dataDir) + "tmp" + File.separatorChar);
      if (localFile1.exists())
        bool = true;
    }
    while (true)
    {
      return bool;
      bool = localFile1.mkdirs();
      continue;
      File localFile2 = new File(f.f() + this.c);
      if (localFile2.exists())
        bool = true;
      else
        bool = localFile2.mkdirs();
    }
  }

  public final String j()
  {
    String str1 = l();
    if (str1 == null);
    for (String str2 = null; ; str2 = str1 + ".dwn")
      return str2;
  }

  public final boolean k()
  {
    boolean bool1;
    try
    {
      Intent localIntent = new Intent();
      localIntent.addFlags(268435456);
      localIntent.setAction("android.intent.action.VIEW");
      localPackageManager = this.a.getPackageManager();
      localObject = new File(o());
      localFile = new File(p());
      if ((localFile.exists()) && (!((File)localObject).exists()))
      {
        localObject = localFile;
        PackageInfo localPackageInfo1 = localPackageManager.getPackageArchiveInfo(((File)localObject).getAbsolutePath(), 1);
        if (localPackageInfo1 != null)
          h(ag.a(localPackageInfo1.versionCode));
        localIntent.setDataAndType(Uri.fromFile((File)localObject), "application/vnd.android.package-archive");
        this.a.startActivity(localIntent);
        bool1 = true;
      }
      else if (!localFile.exists())
      {
        boolean bool2 = ((File)localObject).exists();
        if (!bool2);
      }
    }
    catch (Exception localException1)
    {
      while (true)
        try
        {
          PackageManager localPackageManager;
          File localFile;
          Runtime.getRuntime().exec("chmod 777 " + o());
          try
          {
            String str2 = "chmod 777 " + new File(o()).getParent();
            Runtime.getRuntime().exec(str2);
          }
          catch (Exception localException5)
          {
          }
          continue;
          if ((localFile.exists()) && (((File)localObject).exists()))
          {
            PackageInfo localPackageInfo2 = localPackageManager.getPackageArchiveInfo(p(), 1);
            PackageInfo localPackageInfo3 = localPackageManager.getPackageArchiveInfo(o(), 1);
            int i1 = ag.a(ag.a(localPackageInfo2.versionCode), ag.a(localPackageInfo3.versionCode));
            if (i1 > 0)
            {
              localObject = localFile;
              continue;
            }
            try
            {
              Runtime.getRuntime().exec("chmod 777 " + o());
              try
              {
                String str1 = "chmod 777 " + new File(o()).getParent();
                Runtime.getRuntime().exec(str1);
              }
              catch (Exception localException3)
              {
              }
              continue;
              localException1 = localException1;
              bool1 = false;
            }
            catch (Exception localException2)
            {
            }
          }
        }
        catch (Exception localException4)
        {
          continue;
          Object localObject = null;
        }
    }
    return bool1;
  }

  public final String l()
  {
    if (!f.d());
    for (String str = o(); ; str = p())
      return str;
  }

  public final String m()
  {
    return this.d;
  }

  public final String n()
  {
    return this.a.getSharedPreferences("com.ijinshan.mguard.update.UpdateManager", 0).getString("version_data", null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.ab
 * JD-Core Version:    0.6.2
 */