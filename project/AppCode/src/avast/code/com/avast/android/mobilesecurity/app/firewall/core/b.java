package com.avast.android.mobilesecurity.app.firewall.core;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.database.Cursor;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.util.af;
import com.avast.android.generic.util.m;
import com.avast.android.generic.util.q;
import com.avast.android.mobilesecurity.app.widget.WidgetControlProvider;
import com.avast.android.mobilesecurity.l;
import com.avast.android.mobilesecurity.t;
import com.google.analytics.tracking.android.bo;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public final class b
{
  private static final Object a = new Object();
  private static String[] b = { "allow", "outgoingMobile", "outgoingWifi", "outgoingRoaming", "ipEnabled", "portEnabled", "ip", "netmask", "port", "ipV6type" };
  private static String c = "enabled = 1";
  private static boolean d = false;

  public static int a(Context paramContext, String paramString, StringBuilder paramStringBuilder)
  {
    synchronized (a)
    {
      int i = a(paramContext, paramString, paramStringBuilder, 40000L);
      return i;
    }
  }

  private static int a(Context paramContext, String paramString, StringBuilder paramStringBuilder, long paramLong)
  {
    return a(paramContext, paramString, paramStringBuilder, paramLong, true);
  }

  private static int a(Context paramContext, String paramString, StringBuilder paramStringBuilder, long paramLong, boolean paramBoolean)
  {
    m.c("Firewall running script");
    c localc = new c(new File(paramContext.getDir("bin", 0), "avast_firewall.sh"), paramString, paramStringBuilder, paramBoolean);
    localc.start();
    if (paramLong > 0L);
    try
    {
      localc.join(paramLong);
      while (true)
      {
        if (localc.isAlive())
        {
          localc.interrupt();
          localc.join(150L);
          localc.destroy();
          localc.join(50L);
        }
        m.c("Firewall running script exit code " + localc.a);
        return localc.a;
        localc.join();
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        m.c("Interrupted firewall thread");
    }
  }

  static String a(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    String str1 = paramContext.getDir("bin", 0).getAbsolutePath();
    String str2 = str1 + "/iptables_armv5";
    StringBuilder localStringBuilder1 = new StringBuilder().append("# Roaming: ");
    String str3;
    StringBuilder localStringBuilder2;
    if (paramBoolean1)
    {
      str3 = "ON";
      localStringBuilder2 = localStringBuilder1.append(str3).append("\n").append("IPTABLES=iptables\n");
      if (!paramBoolean2)
        break label292;
    }
    label292: for (String str4 = "IP6TABLES=ip6tables\n"; ; str4 = "")
    {
      return str4 + "BUSYBOX=busybox\n" + "GREP=grep\n" + "ECHO=echo\n" + "# Try to find busybox\n" + "if " + str1 + "/busybox_g1 --help >/dev/null 2>/dev/null ; then\n" + "\tBUSYBOX=" + str1 + "/busybox_g1\n" + "\tGREP=\"$BUSYBOX grep\"\n" + "\tECHO=\"$BUSYBOX echo\"\n" + "elif busybox --help >/dev/null 2>/dev/null ; then\n" + "\tBUSYBOX=busybox\n" + "elif /system/xbin/busybox --help >/dev/null 2>/dev/null ; then\n" + "\tBUSYBOX=/system/xbin/busybox\n" + "elif /system/bin/busybox --help >/dev/null 2>/dev/null ; then\n" + "\tBUSYBOX=/system/bin/busybox\n" + "fi\n" + "# Try to find grep\n" + "if ! $ECHO 1 | $GREP -q 1 >/dev/null 2>/dev/null ; then\n" + "\tif $ECHO 1 | $BUSYBOX grep -q 1 >/dev/null 2>/dev/null ; then\n" + "\t\tGREP=\"$BUSYBOX grep\"\n" + "\tfi\n" + "\t# Grep is absolutely required\n" + "\tif ! $ECHO 1 | $GREP -q 1 >/dev/null 2>/dev/null ; then\n" + "\t\t$ECHO The grep command is required. avast! firewall will not work.\n" + "\t\texit 1\n" + "\tfi\n" + "fi\n" + "# Try to find iptables\n" + "if " + str2 + " --version >/dev/null 2>/dev/null ; then\n" + "\tIPTABLES=" + str2 + "\n" + "fi\n" + "";
      str3 = "OFF";
      break;
    }
  }

  private static StringBuilder a(StringBuilder paramStringBuilder, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean4)
  {
    if (!paramBoolean4)
    {
      paramStringBuilder.append("$IPTABLES -A \"");
      paramStringBuilder.append(paramString4);
      paramStringBuilder.append("\"");
      if (paramBoolean3)
      {
        paramStringBuilder.append(" -p TCP --destination-port ");
        paramStringBuilder.append(String.valueOf(paramString3));
      }
      if (paramBoolean2)
      {
        paramStringBuilder.append(" --destination \"");
        paramStringBuilder.append(paramString1);
        if ((paramString2 != null) && (!paramString2.equals("")))
        {
          paramStringBuilder.append("/");
          paramStringBuilder.append(paramString2);
        }
        paramStringBuilder.append("\"");
      }
      if (!paramBoolean1)
        break label124;
      paramStringBuilder.append(" -j RETURN || exit 55");
    }
    while (true)
    {
      return paramStringBuilder;
      paramStringBuilder.append("$IP6TABLES -A \"");
      break;
      label124: paramStringBuilder.append(" -j \"avastwall-reject\" || exit 56");
    }
  }

  private static void a(Context paramContext, int paramInt, File paramFile, String paramString)
  {
    InputStream localInputStream = null;
    String str = paramFile.getAbsolutePath();
    try
    {
      localFileOutputStream = new FileOutputStream(paramFile);
      try
      {
        localInputStream = paramContext.getResources().openRawResource(paramInt);
        byte[] arrayOfByte = new byte[1024];
        while (true)
        {
          int i = localInputStream.read(arrayOfByte);
          if (i <= 0)
            break;
          localFileOutputStream.write(arrayOfByte, 0, i);
        }
      }
      finally
      {
      }
      af.a(new Closeable[] { localInputStream, localFileOutputStream });
      throw localObject1;
      localFileOutputStream.flush();
      af.a(new Closeable[] { localInputStream, localFileOutputStream });
      Runtime.getRuntime().exec("chmod " + paramString + " " + str).waitFor();
      return;
    }
    finally
    {
      while (true)
      {
        localInputStream = null;
        FileOutputStream localFileOutputStream = null;
      }
    }
  }

  public static void a(Context paramContext, String paramString, int paramInt)
  {
    synchronized (a)
    {
      ContentResolver localContentResolver = paramContext.getContentResolver();
      PackageManager localPackageManager = paramContext.getPackageManager();
      String str = localPackageManager.getNameForUid(paramInt);
      if (str != null)
      {
        List localList = Arrays.asList(localPackageManager.getPackagesForUid(paramInt));
        LinkedList localLinkedList = new LinkedList();
        localLinkedList.addAll(localList);
        localLinkedList.remove(paramString);
        if (localLinkedList.isEmpty())
          if ((localContentResolver.delete(l.a(), "_id = ?", new String[] { str }) > 0) && (((t)ad.a(paramContext, ae.class)).X()))
            a(paramContext, null);
      }
    }
  }

  private static boolean a()
  {
    if (Build.VERSION.SDK_INT >= 14);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  static boolean a(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    try
    {
      boolean bool2 = localTelephonyManager.isNetworkRoaming();
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        m.b("Error getting roaming state", localException);
        boolean bool1 = false;
      }
    }
  }

  public static boolean a(Context paramContext, a parama)
  {
    boolean bool2;
    boolean bool1;
    PackageManager localPackageManager;
    Cursor localCursor;
    HashSet localHashSet1;
    HashSet localHashSet2;
    HashMap localHashMap;
    while (true)
    {
      PackageInfo localPackageInfo;
      int n;
      synchronized (a)
      {
        m.c("Firewall prepare apply");
        if (paramContext == null)
        {
          m.c("Firewall context is NULL");
          bool2 = false;
          break label809;
        }
        bool1 = a(paramContext);
        StringBuilder localStringBuilder = new StringBuilder().append("Firewall roaming is ");
        if (bool1)
        {
          str1 = "active";
          m.c(str1);
          ContentResolver localContentResolver = paramContext.getContentResolver();
          localPackageManager = paramContext.getPackageManager();
          localCursor = localContentResolver.query(l.a(), new String[] { "_id", "mobile", "wifi", "roaming" }, null, null, null);
          m.c("Firewall cursor acquired");
          localHashSet1 = new HashSet();
          localHashSet2 = new HashSet();
          localHashMap = new HashMap();
          Iterator localIterator = localPackageManager.getInstalledApplications(0).iterator();
          if (!localIterator.hasNext())
            break;
          ApplicationInfo localApplicationInfo = (ApplicationInfo)localIterator.next();
          try
          {
            localPackageInfo = localPackageManager.getPackageInfo(localApplicationInfo.packageName, 0);
            if (localPackageInfo.sharedUserId == null)
              continue;
            n = localPackageInfo.applicationInfo.uid;
            if (!localHashMap.containsKey(localPackageInfo.sharedUserId))
              break label300;
            ((Set)localHashMap.get(localPackageInfo.sharedUserId)).add(Integer.valueOf(n));
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException2)
          {
            m.c("Firewall Api", "Package info not found.", localNameNotFoundException2);
          }
        }
      }
      String str1 = "inactive";
      continue;
      label300: HashSet localHashSet4 = new HashSet();
      localHashSet4.add(Integer.valueOf(n));
      localHashMap.put(localPackageInfo.sharedUserId, localHashSet4);
    }
    label348: String str2;
    int i;
    label372: int j;
    label386: int k;
    if (localCursor.moveToFirst())
    {
      break label425;
      str2 = localCursor.getString(0);
      if (localCursor.getInt(1) <= 0)
        break label830;
      i = 1;
      if (localCursor.getInt(2) <= 0)
        break label836;
      j = 1;
      if (localCursor.getInt(3) <= 0)
        break label842;
      k = 1;
      break label812;
    }
    label403: label425: label809: label812: label830: label836: label842: label846: 
    while (true)
    {
      HashSet localHashSet3 = new HashSet();
      if ((str2 == null) || (TextUtils.isEmpty(str2)));
      while (!localCursor.moveToNext())
      {
        localCursor.close();
        m.c("Firewall prepare apply finished, apply execute");
        bool2 = a(paramContext, localHashSet1, localHashSet2, bool1, parama);
        break label809;
        if (str2.equals("ALL"))
          localHashSet3.add(Integer.valueOf(-10));
        while (true)
        {
          if (localHashSet3.isEmpty())
            break label765;
          if (i != 0)
            localHashSet2.addAll(localHashSet3);
          if (j != 0)
            localHashSet1.addAll(localHashSet3);
          if ((k == 0) || (!bool1))
            break;
          localHashSet2.addAll(localHashSet3);
          break;
          if (str2.equals("KERNEL"))
          {
            localHashSet3.add(Integer.valueOf(-11));
          }
          else if (str2.equals("ROOTED"))
          {
            localHashSet3.add(Integer.valueOf(android.os.Process.getUidForName("root")));
          }
          else if (str2.equals("MEDIASERVER"))
          {
            localHashSet3.add(Integer.valueOf(android.os.Process.getUidForName("media")));
          }
          else if (str2.equals("VPNCONN"))
          {
            localHashSet3.add(Integer.valueOf(android.os.Process.getUidForName("vpn")));
          }
          else if (str2.equals("LINUXSHELL"))
          {
            localHashSet3.add(Integer.valueOf(android.os.Process.getUidForName("shell")));
          }
          else if (str2.equals("GPSCOMMS"))
          {
            localHashSet3.add(Integer.valueOf(android.os.Process.getUidForName("gps")));
          }
          else
          {
            if (!localHashMap.containsKey(str2))
              break label767;
            localHashSet3.addAll((Collection)localHashMap.get(str2));
          }
        }
        label765: continue;
        try
        {
          label767: int m = localPackageManager.getPackageInfo(str2, 0).applicationInfo.uid;
          if (m >= 0)
            localHashSet3.add(Integer.valueOf(m));
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException1)
        {
        }
      }
      break label348;
      return bool2;
      while (true)
      {
        if ((i != 0) || (j != 0))
          break label846;
        if (k == 0)
          break;
        break label403;
        i = 0;
        break label372;
        j = 0;
        break label386;
        k = 0;
      }
    }
  }

  // ERROR //
  private static boolean a(Context paramContext, Set paramSet1, Set paramSet2, boolean paramBoolean, a parama)
  {
    // Byte code:
    //   0: getstatic 19	com/avast/android/mobilesecurity/app/firewall/core/b:a	Ljava/lang/Object;
    //   3: astore 5
    //   5: aload 5
    //   7: monitorenter
    //   8: aload_0
    //   9: ifnonnull +19 -> 28
    //   12: ldc_w 545
    //   15: invokestatic 67	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   18: pop
    //   19: aload 5
    //   21: monitorexit
    //   22: iconst_0
    //   23: istore 18
    //   25: goto +2337 -> 2362
    //   28: aload_0
    //   29: aload 4
    //   31: invokestatic 548	com/avast/android/mobilesecurity/app/firewall/core/b:e	(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/firewall/core/a;)Z
    //   34: ifne +27 -> 61
    //   37: ldc_w 550
    //   40: invokestatic 67	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   43: pop
    //   44: aload 5
    //   46: monitorexit
    //   47: iconst_0
    //   48: istore 18
    //   50: goto +2312 -> 2362
    //   53: astore 6
    //   55: aload 5
    //   57: monitorexit
    //   58: aload 6
    //   60: athrow
    //   61: iconst_4
    //   62: anewarray 21	java/lang/String
    //   65: dup
    //   66: iconst_0
    //   67: ldc_w 552
    //   70: aastore
    //   71: dup
    //   72: iconst_1
    //   73: ldc_w 554
    //   76: aastore
    //   77: dup
    //   78: iconst_2
    //   79: ldc_w 556
    //   82: aastore
    //   83: dup
    //   84: iconst_3
    //   85: ldc_w 558
    //   88: aastore
    //   89: astore 7
    //   91: bipush 8
    //   93: anewarray 21	java/lang/String
    //   96: dup
    //   97: iconst_0
    //   98: ldc_w 560
    //   101: aastore
    //   102: dup
    //   103: iconst_1
    //   104: ldc_w 562
    //   107: aastore
    //   108: dup
    //   109: iconst_2
    //   110: ldc_w 564
    //   113: aastore
    //   114: dup
    //   115: iconst_3
    //   116: ldc_w 566
    //   119: aastore
    //   120: dup
    //   121: iconst_4
    //   122: ldc_w 568
    //   125: aastore
    //   126: dup
    //   127: iconst_5
    //   128: ldc_w 570
    //   131: aastore
    //   132: dup
    //   133: bipush 6
    //   135: ldc_w 572
    //   138: aastore
    //   139: dup
    //   140: bipush 7
    //   142: ldc_w 574
    //   145: aastore
    //   146: astore 8
    //   148: aload_0
    //   149: ldc_w 343
    //   152: invokestatic 348	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   155: checkcast 350	com/avast/android/mobilesecurity/t
    //   158: astore 9
    //   160: aload 9
    //   162: invokevirtual 577	com/avast/android/mobilesecurity/t:aJ	()Z
    //   165: istore 10
    //   167: iload 10
    //   169: ifne +2292 -> 2461
    //   172: iconst_1
    //   173: istore 11
    //   175: aload 9
    //   177: invokevirtual 580	com/avast/android/mobilesecurity/t:Y	()Z
    //   180: istore 12
    //   182: aload 9
    //   184: invokevirtual 582	com/avast/android/mobilesecurity/t:Z	()Z
    //   187: istore 13
    //   189: aload 9
    //   191: invokevirtual 585	com/avast/android/mobilesecurity/t:aa	()Z
    //   194: istore 14
    //   196: new 110	java/lang/StringBuilder
    //   199: dup
    //   200: invokespecial 111	java/lang/StringBuilder:<init>	()V
    //   203: astore 15
    //   205: invokestatic 587	com/avast/android/mobilesecurity/app/firewall/core/b:a	()Z
    //   208: istore 20
    //   210: aload 15
    //   212: aload_0
    //   213: iload_3
    //   214: iload 13
    //   216: invokestatic 589	com/avast/android/mobilesecurity/app/firewall/core/b:a	(Landroid/content/Context;ZZ)Ljava/lang/String;
    //   219: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: pop
    //   223: new 110	java/lang/StringBuilder
    //   226: dup
    //   227: invokespecial 111	java/lang/StringBuilder:<init>	()V
    //   230: ldc_w 591
    //   233: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: astore 22
    //   238: iload 20
    //   240: ifne +8 -> 248
    //   243: iload 14
    //   245: ifeq +2230 -> 2475
    //   248: new 110	java/lang/StringBuilder
    //   251: dup
    //   252: invokespecial 111	java/lang/StringBuilder:<init>	()V
    //   255: ldc_w 593
    //   258: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: astore 23
    //   263: iload 14
    //   265: ifeq +2202 -> 2467
    //   268: ldc_w 595
    //   271: astore 24
    //   273: aload 23
    //   275: aload 24
    //   277: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: ldc_w 597
    //   283: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   286: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   289: astore 25
    //   291: aload 15
    //   293: aload 22
    //   295: aload 25
    //   297: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: ldc_w 599
    //   303: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   306: ldc_w 601
    //   309: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: ldc_w 603
    //   315: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: ldc_w 605
    //   321: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   324: ldc_w 607
    //   327: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   330: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   333: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   336: pop
    //   337: iload 13
    //   339: ifeq +117 -> 456
    //   342: new 110	java/lang/StringBuilder
    //   345: dup
    //   346: invokespecial 111	java/lang/StringBuilder:<init>	()V
    //   349: ldc_w 609
    //   352: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   355: astore 136
    //   357: iload 20
    //   359: ifne +8 -> 367
    //   362: iload 14
    //   364: ifeq +2127 -> 2491
    //   367: new 110	java/lang/StringBuilder
    //   370: dup
    //   371: invokespecial 111	java/lang/StringBuilder:<init>	()V
    //   374: ldc_w 611
    //   377: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: astore 137
    //   382: iload 14
    //   384: ifeq +2099 -> 2483
    //   387: ldc_w 595
    //   390: astore 138
    //   392: aload 137
    //   394: aload 138
    //   396: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   399: ldc_w 613
    //   402: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   405: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   408: astore 139
    //   410: aload 15
    //   412: aload 136
    //   414: aload 139
    //   416: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   419: ldc_w 599
    //   422: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   425: ldc_w 615
    //   428: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   431: ldc_w 617
    //   434: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: ldc_w 619
    //   440: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   443: ldc_w 621
    //   446: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   449: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   452: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   455: pop
    //   456: iload 12
    //   458: ifeq +409 -> 867
    //   461: aload 15
    //   463: ldc_w 623
    //   466: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   469: pop
    //   470: iload 13
    //   472: ifeq +12 -> 484
    //   475: aload 15
    //   477: ldc_w 625
    //   480: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   483: pop
    //   484: aload_0
    //   485: invokevirtual 295	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   488: astore 29
    //   490: aload 29
    //   492: invokestatic 628	com/avast/android/mobilesecurity/h:a	()Landroid/net/Uri;
    //   495: getstatic 43	com/avast/android/mobilesecurity/app/firewall/core/b:b	[Ljava/lang/String;
    //   498: getstatic 47	com/avast/android/mobilesecurity/app/firewall/core/b:c	Ljava/lang/String;
    //   501: aconst_null
    //   502: ldc_w 394
    //   505: invokevirtual 404	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   508: astore 102
    //   510: aload 102
    //   512: astore 33
    //   514: aload 33
    //   516: invokeinterface 487 1 0
    //   521: ifeq +213 -> 734
    //   524: aload 15
    //   526: ldc_w 630
    //   529: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   532: pop
    //   533: aload 33
    //   535: iconst_0
    //   536: invokeinterface 494 2 0
    //   541: istore 105
    //   543: aload 33
    //   545: iconst_1
    //   546: invokeinterface 494 2 0
    //   551: istore 106
    //   553: aload 33
    //   555: iconst_2
    //   556: invokeinterface 494 2 0
    //   561: istore 107
    //   563: aload 33
    //   565: iconst_3
    //   566: invokeinterface 494 2 0
    //   571: istore 108
    //   573: aload 33
    //   575: iconst_4
    //   576: invokeinterface 494 2 0
    //   581: istore 109
    //   583: aload 33
    //   585: iconst_5
    //   586: invokeinterface 494 2 0
    //   591: istore 110
    //   593: aload 33
    //   595: bipush 6
    //   597: invokeinterface 490 2 0
    //   602: astore 111
    //   604: aload 33
    //   606: bipush 7
    //   608: invokeinterface 490 2 0
    //   613: astore 112
    //   615: aload 33
    //   617: bipush 8
    //   619: invokeinterface 490 2 0
    //   624: astore 113
    //   626: aload 33
    //   628: bipush 9
    //   630: invokeinterface 494 2 0
    //   635: istore 114
    //   637: iconst_0
    //   638: istore 115
    //   640: iload 108
    //   642: ifle +1723 -> 2365
    //   645: iconst_0
    //   646: istore 115
    //   648: iload_3
    //   649: ifeq +1716 -> 2365
    //   652: iconst_1
    //   653: istore 115
    //   655: goto +1710 -> 2365
    //   658: aload 15
    //   660: iload 130
    //   662: iload 131
    //   664: iload 132
    //   666: aload 111
    //   668: aload 112
    //   670: aload 113
    //   672: ldc_w 632
    //   675: iconst_0
    //   676: invokestatic 634	com/avast/android/mobilesecurity/app/firewall/core/b:a	(Ljava/lang/StringBuilder;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    //   679: ldc 143
    //   681: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   684: pop
    //   685: goto +1733 -> 2418
    //   688: aload 15
    //   690: iload 122
    //   692: iload 123
    //   694: iload 124
    //   696: aload 111
    //   698: aload 112
    //   700: aload 113
    //   702: ldc_w 636
    //   705: iconst_0
    //   706: invokestatic 634	com/avast/android/mobilesecurity/app/firewall/core/b:a	(Ljava/lang/StringBuilder;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    //   709: ldc 143
    //   711: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   714: pop
    //   715: aload 33
    //   717: invokeinterface 502 1 0
    //   722: ifne -189 -> 533
    //   725: aload 15
    //   727: ldc_w 638
    //   730: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   733: pop
    //   734: aload 33
    //   736: ifnull +10 -> 746
    //   739: aload 33
    //   741: invokeinterface 505 1 0
    //   746: iload 11
    //   748: ifeq +40 -> 788
    //   751: iload 12
    //   753: ifeq +35 -> 788
    //   756: aload 15
    //   758: ldc_w 640
    //   761: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   764: pop
    //   765: aload 15
    //   767: ldc_w 642
    //   770: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   773: pop
    //   774: iload 13
    //   776: ifeq +12 -> 788
    //   779: aload 15
    //   781: ldc_w 644
    //   784: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   787: pop
    //   788: aload 15
    //   790: ldc_w 646
    //   793: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   796: pop
    //   797: aload 8
    //   799: arraylength
    //   800: istore 38
    //   802: iconst_0
    //   803: istore 39
    //   805: iload 39
    //   807: iload 38
    //   809: if_icmpge +365 -> 1174
    //   812: aload 8
    //   814: iload 39
    //   816: aaload
    //   817: astore 96
    //   819: aload 15
    //   821: ldc_w 648
    //   824: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   827: aload 96
    //   829: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   832: ldc_w 650
    //   835: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   838: pop
    //   839: iload 13
    //   841: ifeq +1614 -> 2455
    //   844: aload 15
    //   846: ldc_w 652
    //   849: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   852: aload 96
    //   854: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   857: ldc_w 654
    //   860: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   863: pop
    //   864: goto +1591 -> 2455
    //   867: aload 15
    //   869: ldc_w 656
    //   872: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   875: pop
    //   876: iload 13
    //   878: ifeq -394 -> 484
    //   881: aload 15
    //   883: ldc_w 658
    //   886: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   889: pop
    //   890: goto -406 -> 484
    //   893: astore 16
    //   895: ldc_w 660
    //   898: aload 16
    //   900: invokestatic 380	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   903: pop
    //   904: aload 4
    //   906: ifnull +35 -> 941
    //   909: iconst_1
    //   910: anewarray 4	java/lang/Object
    //   913: astore 19
    //   915: aload 19
    //   917: iconst_0
    //   918: aload_0
    //   919: aload 16
    //   921: invokestatic 665	com/avast/android/generic/util/q:a	(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;
    //   924: aastore
    //   925: aload 4
    //   927: aload_0
    //   928: ldc_w 666
    //   931: aload 19
    //   933: invokevirtual 669	android/content/Context:getString	(I[Ljava/lang/Object;)Ljava/lang/String;
    //   936: invokeinterface 674 2 0
    //   941: aload 5
    //   943: monitorexit
    //   944: iconst_0
    //   945: istore 18
    //   947: goto +1415 -> 2362
    //   950: iconst_0
    //   951: istore 130
    //   953: goto +1446 -> 2399
    //   956: iconst_0
    //   957: istore 131
    //   959: goto +1448 -> 2407
    //   962: iconst_0
    //   963: istore 132
    //   965: goto -307 -> 658
    //   968: iload 13
    //   970: ifeq +1448 -> 2418
    //   973: iload 105
    //   975: ifle +87 -> 1062
    //   978: iconst_1
    //   979: istore 126
    //   981: iload 109
    //   983: ifle +85 -> 1068
    //   986: iconst_1
    //   987: istore 127
    //   989: iload 110
    //   991: ifle +83 -> 1074
    //   994: iconst_1
    //   995: istore 128
    //   997: aload 15
    //   999: iload 126
    //   1001: iload 127
    //   1003: iload 128
    //   1005: aload 111
    //   1007: aload 112
    //   1009: aload 113
    //   1011: ldc_w 632
    //   1014: iconst_1
    //   1015: invokestatic 634	com/avast/android/mobilesecurity/app/firewall/core/b:a	(Ljava/lang/StringBuilder;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    //   1018: ldc 143
    //   1020: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1023: pop
    //   1024: goto +1394 -> 2418
    //   1027: astore 30
    //   1029: aload 33
    //   1031: astore 31
    //   1033: ldc_w 676
    //   1036: aload 30
    //   1038: invokestatic 380	com/avast/android/generic/util/m:b	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   1041: pop
    //   1042: aload 31
    //   1044: ifnull -298 -> 746
    //   1047: aload 31
    //   1049: invokeinterface 505 1 0
    //   1054: goto -308 -> 746
    //   1057: astore 36
    //   1059: goto -313 -> 746
    //   1062: iconst_0
    //   1063: istore 126
    //   1065: goto -84 -> 981
    //   1068: iconst_0
    //   1069: istore 127
    //   1071: goto -82 -> 989
    //   1074: iconst_0
    //   1075: istore 128
    //   1077: goto -80 -> 997
    //   1080: iconst_0
    //   1081: istore 122
    //   1083: goto +1353 -> 2436
    //   1086: iconst_0
    //   1087: istore 123
    //   1089: goto +1355 -> 2444
    //   1092: iconst_0
    //   1093: istore 124
    //   1095: goto -407 -> 688
    //   1098: iload 13
    //   1100: ifeq -385 -> 715
    //   1103: iload 105
    //   1105: ifle +1394 -> 2499
    //   1108: iconst_1
    //   1109: istore 118
    //   1111: iload 109
    //   1113: ifle +1392 -> 2505
    //   1116: iconst_1
    //   1117: istore 119
    //   1119: iload 110
    //   1121: ifle +1390 -> 2511
    //   1124: iconst_1
    //   1125: istore 120
    //   1127: aload 15
    //   1129: iload 118
    //   1131: iload 119
    //   1133: iload 120
    //   1135: aload 111
    //   1137: aload 112
    //   1139: aload 113
    //   1141: ldc_w 636
    //   1144: iconst_1
    //   1145: invokestatic 634	com/avast/android/mobilesecurity/app/firewall/core/b:a	(Ljava/lang/StringBuilder;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    //   1148: ldc 143
    //   1150: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1153: pop
    //   1154: goto -439 -> 715
    //   1157: astore 32
    //   1159: aload 33
    //   1161: ifnull +10 -> 1171
    //   1164: aload 33
    //   1166: invokeinterface 505 1 0
    //   1171: aload 32
    //   1173: athrow
    //   1174: aload 7
    //   1176: arraylength
    //   1177: istore 40
    //   1179: iconst_0
    //   1180: istore 41
    //   1182: iload 41
    //   1184: iload 40
    //   1186: if_icmpge +58 -> 1244
    //   1189: aload 7
    //   1191: iload 41
    //   1193: aaload
    //   1194: astore 93
    //   1196: aload 15
    //   1198: ldc_w 648
    //   1201: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1204: aload 93
    //   1206: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1209: ldc_w 678
    //   1212: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1215: pop
    //   1216: iload 13
    //   1218: ifeq +1299 -> 2517
    //   1221: aload 15
    //   1223: ldc_w 652
    //   1226: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1229: aload 93
    //   1231: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1234: ldc_w 680
    //   1237: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1240: pop
    //   1241: goto +1276 -> 2517
    //   1244: aload 15
    //   1246: ldc_w 682
    //   1249: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1252: pop
    //   1253: iload 11
    //   1255: ifeq +550 -> 1805
    //   1258: ldc_w 684
    //   1261: astore 43
    //   1263: aload_2
    //   1264: bipush 246
    //   1266: invokestatic 466	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1269: invokeinterface 687 2 0
    //   1274: istore 44
    //   1276: aload_1
    //   1277: bipush 246
    //   1279: invokestatic 466	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1282: invokeinterface 687 2 0
    //   1287: istore 45
    //   1289: iload 11
    //   1291: ifeq +144 -> 1435
    //   1294: iload 45
    //   1296: ifne +139 -> 1435
    //   1299: ldc_w 689
    //   1302: invokestatic 525	android/os/Process:getUidForName	(Ljava/lang/String;)I
    //   1305: istore 85
    //   1307: iload 85
    //   1309: iconst_m1
    //   1310: if_icmpeq +57 -> 1367
    //   1313: aload 15
    //   1315: ldc_w 691
    //   1318: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1321: pop
    //   1322: aload 15
    //   1324: ldc_w 693
    //   1327: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1330: iload 85
    //   1332: invokevirtual 123	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1335: ldc_w 695
    //   1338: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1341: pop
    //   1342: iload 13
    //   1344: ifeq +23 -> 1367
    //   1347: aload 15
    //   1349: ldc_w 697
    //   1352: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1355: iload 85
    //   1357: invokevirtual 123	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1360: ldc_w 699
    //   1363: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1366: pop
    //   1367: ldc_w 398
    //   1370: invokestatic 525	android/os/Process:getUidForName	(Ljava/lang/String;)I
    //   1373: istore 86
    //   1375: iload 86
    //   1377: iconst_m1
    //   1378: if_icmpeq +57 -> 1435
    //   1381: aload 15
    //   1383: ldc_w 701
    //   1386: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1389: pop
    //   1390: aload 15
    //   1392: ldc_w 693
    //   1395: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1398: iload 86
    //   1400: invokevirtual 123	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1403: ldc_w 703
    //   1406: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1409: pop
    //   1410: iload 13
    //   1412: ifeq +23 -> 1435
    //   1415: aload 15
    //   1417: ldc_w 697
    //   1420: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1423: iload 86
    //   1425: invokevirtual 123	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1428: ldc_w 705
    //   1431: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1434: pop
    //   1435: iload 44
    //   1437: ifeq +376 -> 1813
    //   1440: iload 10
    //   1442: ifeq +48 -> 1490
    //   1445: aload 15
    //   1447: ldc_w 707
    //   1450: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1453: aload 43
    //   1455: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1458: ldc_w 709
    //   1461: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1464: pop
    //   1465: iload 13
    //   1467: ifeq +23 -> 1490
    //   1470: aload 15
    //   1472: ldc_w 711
    //   1475: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1478: aload 43
    //   1480: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1483: ldc_w 713
    //   1486: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1489: pop
    //   1490: iload 45
    //   1492: ifeq +429 -> 1921
    //   1495: iload 10
    //   1497: ifeq +48 -> 1545
    //   1500: aload 15
    //   1502: ldc_w 715
    //   1505: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1508: aload 43
    //   1510: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1513: ldc_w 717
    //   1516: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1519: pop
    //   1520: iload 13
    //   1522: ifeq +23 -> 1545
    //   1525: aload 15
    //   1527: ldc_w 719
    //   1530: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1533: aload 43
    //   1535: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1538: ldc_w 721
    //   1541: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1544: pop
    //   1545: iload 11
    //   1547: ifeq +534 -> 2081
    //   1550: iload 44
    //   1552: ifne +49 -> 1601
    //   1555: aload_2
    //   1556: bipush 245
    //   1558: invokestatic 466	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1561: invokeinterface 687 2 0
    //   1566: ifeq +463 -> 2029
    //   1569: aload 15
    //   1571: ldc_w 723
    //   1574: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1577: pop
    //   1578: aload 15
    //   1580: ldc_w 725
    //   1583: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1586: pop
    //   1587: iload 13
    //   1589: ifeq +12 -> 1601
    //   1592: aload 15
    //   1594: ldc_w 727
    //   1597: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1600: pop
    //   1601: iload 45
    //   1603: ifne +49 -> 1652
    //   1606: aload_1
    //   1607: bipush 245
    //   1609: invokestatic 466	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1612: invokeinterface 687 2 0
    //   1617: ifeq +438 -> 2055
    //   1620: aload 15
    //   1622: ldc_w 723
    //   1625: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1628: pop
    //   1629: aload 15
    //   1631: ldc_w 729
    //   1634: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1637: pop
    //   1638: iload 13
    //   1640: ifeq +12 -> 1652
    //   1643: aload 15
    //   1645: ldc_w 731
    //   1648: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1651: pop
    //   1652: new 110	java/lang/StringBuilder
    //   1655: dup
    //   1656: invokespecial 111	java/lang/StringBuilder:<init>	()V
    //   1659: astore 59
    //   1661: aload_0
    //   1662: aload 15
    //   1664: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1667: aload 59
    //   1669: invokestatic 733	com/avast/android/mobilesecurity/app/firewall/core/b:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuilder;)I
    //   1672: istore 60
    //   1674: iload 60
    //   1676: ifeq +611 -> 2287
    //   1679: new 110	java/lang/StringBuilder
    //   1682: dup
    //   1683: invokespecial 111	java/lang/StringBuilder:<init>	()V
    //   1686: ldc_w 735
    //   1689: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1692: iload 60
    //   1694: invokevirtual 123	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1697: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1700: invokestatic 67	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   1703: pop
    //   1704: aload 4
    //   1706: ifnull +90 -> 1796
    //   1709: aload 59
    //   1711: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1714: astore 63
    //   1716: aload 63
    //   1718: invokestatic 738	com/avast/android/generic/util/m:f	(Ljava/lang/String;)I
    //   1721: pop
    //   1722: aload 63
    //   1724: ldc_w 740
    //   1727: invokevirtual 743	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   1730: iconst_m1
    //   1731: if_icmpeq +15 -> 1746
    //   1734: aload 63
    //   1736: ldc_w 740
    //   1739: ldc 207
    //   1741: invokevirtual 747	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   1744: astore 63
    //   1746: aload 63
    //   1748: ldc_w 749
    //   1751: invokevirtual 743	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   1754: iconst_m1
    //   1755: if_icmpne +27 -> 1782
    //   1758: aload 63
    //   1760: ldc_w 751
    //   1763: invokevirtual 743	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   1766: iconst_m1
    //   1767: if_icmpne +15 -> 1782
    //   1770: aload 63
    //   1772: ldc_w 753
    //   1775: invokevirtual 743	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   1778: iconst_m1
    //   1779: if_icmpeq +433 -> 2212
    //   1782: aload 4
    //   1784: aload_0
    //   1785: ldc_w 754
    //   1788: invokevirtual 755	android/content/Context:getString	(I)Ljava/lang/String;
    //   1791: invokeinterface 674 2 0
    //   1796: aload 5
    //   1798: monitorexit
    //   1799: iconst_0
    //   1800: istore 18
    //   1802: goto +560 -> 2362
    //   1805: ldc_w 757
    //   1808: astore 43
    //   1810: goto -547 -> 1263
    //   1813: aload_2
    //   1814: invokeinterface 758 1 0
    //   1819: astore 46
    //   1821: aload 46
    //   1823: invokeinterface 427 1 0
    //   1828: ifeq -338 -> 1490
    //   1831: aload 46
    //   1833: invokeinterface 431 1 0
    //   1838: checkcast 463	java/lang/Integer
    //   1841: astore 47
    //   1843: aload 47
    //   1845: invokevirtual 761	java/lang/Integer:intValue	()I
    //   1848: iflt -27 -> 1821
    //   1851: aload 15
    //   1853: ldc_w 763
    //   1856: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1859: aload 47
    //   1861: invokevirtual 766	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1864: ldc_w 768
    //   1867: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1870: aload 43
    //   1872: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1875: ldc_w 770
    //   1878: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1881: pop
    //   1882: iload 13
    //   1884: ifeq -63 -> 1821
    //   1887: aload 15
    //   1889: ldc_w 772
    //   1892: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1895: aload 47
    //   1897: invokevirtual 766	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1900: ldc_w 768
    //   1903: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1906: aload 43
    //   1908: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1911: ldc_w 774
    //   1914: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1917: pop
    //   1918: goto -97 -> 1821
    //   1921: aload_1
    //   1922: invokeinterface 758 1 0
    //   1927: astore 50
    //   1929: aload 50
    //   1931: invokeinterface 427 1 0
    //   1936: ifeq -391 -> 1545
    //   1939: aload 50
    //   1941: invokeinterface 431 1 0
    //   1946: checkcast 463	java/lang/Integer
    //   1949: astore 51
    //   1951: aload 51
    //   1953: invokevirtual 761	java/lang/Integer:intValue	()I
    //   1956: iflt -27 -> 1929
    //   1959: aload 15
    //   1961: ldc_w 693
    //   1964: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1967: aload 51
    //   1969: invokevirtual 766	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1972: ldc_w 768
    //   1975: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1978: aload 43
    //   1980: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1983: ldc_w 776
    //   1986: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1989: pop
    //   1990: iload 13
    //   1992: ifeq -63 -> 1929
    //   1995: aload 15
    //   1997: ldc_w 697
    //   2000: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2003: aload 51
    //   2005: invokevirtual 766	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   2008: ldc_w 768
    //   2011: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2014: aload 43
    //   2016: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2019: ldc_w 778
    //   2022: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2025: pop
    //   2026: goto -97 -> 1929
    //   2029: aload 15
    //   2031: ldc_w 780
    //   2034: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2037: pop
    //   2038: iload 13
    //   2040: ifeq -439 -> 1601
    //   2043: aload 15
    //   2045: ldc_w 782
    //   2048: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2051: pop
    //   2052: goto -451 -> 1601
    //   2055: aload 15
    //   2057: ldc_w 784
    //   2060: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2063: pop
    //   2064: iload 13
    //   2066: ifeq -414 -> 1652
    //   2069: aload 15
    //   2071: ldc_w 786
    //   2074: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2077: pop
    //   2078: goto -426 -> 1652
    //   2081: aload_2
    //   2082: bipush 245
    //   2084: invokestatic 466	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2087: invokeinterface 687 2 0
    //   2092: ifeq +53 -> 2145
    //   2095: aload 15
    //   2097: ldc_w 788
    //   2100: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2103: pop
    //   2104: aload 15
    //   2106: ldc_w 790
    //   2109: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2112: pop
    //   2113: aload 15
    //   2115: ldc_w 792
    //   2118: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2121: pop
    //   2122: iload 13
    //   2124: ifeq +21 -> 2145
    //   2127: aload 15
    //   2129: ldc_w 794
    //   2132: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2135: pop
    //   2136: aload 15
    //   2138: ldc_w 796
    //   2141: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2144: pop
    //   2145: aload_1
    //   2146: bipush 245
    //   2148: invokestatic 466	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2151: invokeinterface 687 2 0
    //   2156: ifeq -504 -> 1652
    //   2159: aload 15
    //   2161: ldc_w 788
    //   2164: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2167: pop
    //   2168: aload 15
    //   2170: ldc_w 798
    //   2173: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2176: pop
    //   2177: aload 15
    //   2179: ldc_w 800
    //   2182: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2185: pop
    //   2186: iload 13
    //   2188: ifeq -536 -> 1652
    //   2191: aload 15
    //   2193: ldc_w 802
    //   2196: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2199: pop
    //   2200: aload 15
    //   2202: ldc_w 804
    //   2205: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2208: pop
    //   2209: goto -557 -> 1652
    //   2212: aload 63
    //   2214: ldc_w 806
    //   2217: invokevirtual 743	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   2220: iconst_m1
    //   2221: if_icmpeq +26 -> 2247
    //   2224: aload 9
    //   2226: iconst_0
    //   2227: invokevirtual 810	com/avast/android/mobilesecurity/t:i	(Z)V
    //   2230: aload 4
    //   2232: aload_0
    //   2233: ldc_w 811
    //   2236: invokevirtual 755	android/content/Context:getString	(I)Ljava/lang/String;
    //   2239: invokeinterface 674 2 0
    //   2244: goto -448 -> 1796
    //   2247: iconst_2
    //   2248: anewarray 4	java/lang/Object
    //   2251: astore 65
    //   2253: aload 65
    //   2255: iconst_0
    //   2256: iload 60
    //   2258: invokestatic 466	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2261: aastore
    //   2262: aload 65
    //   2264: iconst_1
    //   2265: aload 63
    //   2267: aastore
    //   2268: aload 4
    //   2270: aload_0
    //   2271: ldc_w 812
    //   2274: aload 65
    //   2276: invokevirtual 669	android/content/Context:getString	(I[Ljava/lang/Object;)Ljava/lang/String;
    //   2279: invokeinterface 674 2 0
    //   2284: goto -488 -> 1796
    //   2287: new 110	java/lang/StringBuilder
    //   2290: dup
    //   2291: invokespecial 111	java/lang/StringBuilder:<init>	()V
    //   2294: ldc_w 814
    //   2297: invokevirtual 117	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2300: iload 60
    //   2302: invokevirtual 123	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   2305: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2308: invokestatic 67	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   2311: pop
    //   2312: iconst_1
    //   2313: istore 18
    //   2315: aload 5
    //   2317: monitorexit
    //   2318: goto +44 -> 2362
    //   2321: astore 103
    //   2323: goto -1577 -> 746
    //   2326: astore 34
    //   2328: goto -1157 -> 1171
    //   2331: astore 32
    //   2333: aconst_null
    //   2334: astore 33
    //   2336: goto -1177 -> 1159
    //   2339: astore 32
    //   2341: aload 31
    //   2343: astore 33
    //   2345: goto -1186 -> 1159
    //   2348: astore 30
    //   2350: aconst_null
    //   2351: astore 31
    //   2353: goto -1320 -> 1033
    //   2356: iconst_0
    //   2357: istore 116
    //   2359: goto +14 -> 2373
    //   2362: iload 18
    //   2364: ireturn
    //   2365: iload 107
    //   2367: ifle -11 -> 2356
    //   2370: iconst_1
    //   2371: istore 116
    //   2373: iload 106
    //   2375: ifle +6 -> 2381
    //   2378: iconst_1
    //   2379: istore 115
    //   2381: iload 115
    //   2383: ifeq +35 -> 2418
    //   2386: iload 114
    //   2388: ifgt -1420 -> 968
    //   2391: iload 105
    //   2393: ifle -1443 -> 950
    //   2396: iconst_1
    //   2397: istore 130
    //   2399: iload 109
    //   2401: ifle -1445 -> 956
    //   2404: iconst_1
    //   2405: istore 131
    //   2407: iload 110
    //   2409: ifle -1447 -> 962
    //   2412: iconst_1
    //   2413: istore 132
    //   2415: goto -1757 -> 658
    //   2418: iload 116
    //   2420: ifeq -1705 -> 715
    //   2423: iload 114
    //   2425: ifgt -1327 -> 1098
    //   2428: iload 105
    //   2430: ifle -1350 -> 1080
    //   2433: iconst_1
    //   2434: istore 122
    //   2436: iload 109
    //   2438: ifle -1352 -> 1086
    //   2441: iconst_1
    //   2442: istore 123
    //   2444: iload 110
    //   2446: ifle -1354 -> 1092
    //   2449: iconst_1
    //   2450: istore 124
    //   2452: goto -1764 -> 688
    //   2455: iinc 39 1
    //   2458: goto -1653 -> 805
    //   2461: iconst_0
    //   2462: istore 11
    //   2464: goto -2289 -> 175
    //   2467: ldc_w 816
    //   2470: astore 24
    //   2472: goto -2199 -> 273
    //   2475: ldc_w 818
    //   2478: astore 25
    //   2480: goto -2189 -> 291
    //   2483: ldc_w 816
    //   2486: astore 138
    //   2488: goto -2096 -> 392
    //   2491: ldc_w 820
    //   2494: astore 139
    //   2496: goto -2086 -> 410
    //   2499: iconst_0
    //   2500: istore 118
    //   2502: goto -1391 -> 1111
    //   2505: iconst_0
    //   2506: istore 119
    //   2508: goto -1389 -> 1119
    //   2511: iconst_0
    //   2512: istore 120
    //   2514: goto -1387 -> 1127
    //   2517: iinc 41 1
    //   2520: goto -1338 -> 1182
    //
    // Exception table:
    //   from	to	target	type
    //   12	58	53	finally
    //   61	205	53	finally
    //   205	490	53	finally
    //   739	746	53	finally
    //   756	890	53	finally
    //   895	944	53	finally
    //   1047	1054	53	finally
    //   1164	1171	53	finally
    //   1171	1796	53	finally
    //   1796	1799	53	finally
    //   1805	2312	53	finally
    //   2315	2318	53	finally
    //   205	490	893	java/lang/Exception
    //   756	890	893	java/lang/Exception
    //   1171	1796	893	java/lang/Exception
    //   1805	2312	893	java/lang/Exception
    //   514	734	1027	java/lang/Exception
    //   997	1024	1027	java/lang/Exception
    //   1127	1154	1027	java/lang/Exception
    //   1047	1054	1057	java/lang/Exception
    //   514	734	1157	finally
    //   997	1024	1157	finally
    //   1127	1154	1157	finally
    //   739	746	2321	java/lang/Exception
    //   1164	1171	2326	java/lang/Exception
    //   490	510	2331	finally
    //   1033	1042	2339	finally
    //   490	510	2348	java/lang/Exception
  }

  public static boolean b(Context paramContext)
  {
    boolean bool1 = false;
    StringBuilder localStringBuilder1;
    synchronized (a)
    {
      localStringBuilder1 = new StringBuilder();
    }
    try
    {
      boolean bool2 = e(paramContext, null);
      if (!bool2);
      while (true)
      {
        return bool1;
        boolean bool3 = a(paramContext);
        StringBuilder localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append(a(paramContext, bool3, true));
        localStringBuilder2.append("$IP6TABLES -L || exit 1\n");
        int i = a(paramContext, localStringBuilder2.toString(), localStringBuilder1);
        if (i != 0)
        {
          bool1 = false;
          continue;
          localObject2 = finally;
          throw localObject2;
        }
        else
        {
          bool1 = true;
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
        bool1 = false;
    }
  }

  public static boolean b(Context paramContext, a parama)
  {
    synchronized (a)
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      try
      {
        boolean bool2 = e(paramContext, parama);
        if (!bool2)
          bool1 = false;
        while (true)
        {
          return bool1;
          t localt = (t)ad.a(paramContext, ae.class);
          boolean bool3 = a(paramContext);
          boolean bool4 = localt.Z();
          StringBuilder localStringBuilder2 = new StringBuilder();
          localStringBuilder2.append(a(paramContext, bool3, bool4));
          localStringBuilder2.append("dmesg -c >/dev/null || exit\n$IPTABLES -F avastwall\n$IPTABLES -F avastwall-reject\n$IPTABLES -F avastwall-3g\n$IPTABLES -F avastwall-wifi\n$IPTABLES -L OUTPUT | $GREP -q avastwall && $IPTABLES -D OUTPUT -j avastwall\n");
          if (bool4)
            localStringBuilder2.append("$IP6TABLES -F avastwall\n$IP6TABLES -F avastwall-reject\n$IP6TABLES -F avastwall-3g\n$IP6TABLES -F avastwall-wifi\n$IP6TABLES -L OUTPUT | $GREP -q avastwall && $IP6TABLES -D OUTPUT -j avastwall\n");
          int i = a(paramContext, localStringBuilder2.toString(), localStringBuilder1);
          if (i == -1)
          {
            if (parama != null)
            {
              Object[] arrayOfObject2 = new Object[2];
              arrayOfObject2[0] = Integer.valueOf(i);
              arrayOfObject2[1] = localStringBuilder1;
              parama.a(paramContext.getString(2131493675, arrayOfObject2));
            }
            bool1 = false;
          }
          else
          {
            bool1 = true;
          }
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          m.b("Error purging IPTABLES", localException);
          if (parama != null)
          {
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = q.a(paramContext, localException);
            parama.a(paramContext.getString(2131493676, arrayOfObject1));
          }
          boolean bool1 = false;
        }
      }
    }
  }

  public static boolean c(Context paramContext, a parama)
  {
    boolean bool;
    synchronized (a)
    {
      try
      {
        StringBuilder localStringBuilder = new StringBuilder();
        if (a(paramContext, "dmesg -c >/dev/null || exit\n", localStringBuilder) != 0)
        {
          parama.a(localStringBuilder.toString());
          bool = false;
        }
        else
        {
          bool = true;
        }
      }
      catch (Exception localException)
      {
        m.b("Error clearing log", localException);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = q.a(paramContext, localException);
        parama.a(paramContext.getString(2131493668, arrayOfObject));
        bool = false;
      }
    }
    return bool;
  }

  public static boolean d(Context paramContext, a parama)
  {
    boolean bool;
    synchronized (a)
    {
      if (d)
      {
        bool = true;
      }
      else
      {
        StringBuilder localStringBuilder = new StringBuilder();
        try
        {
          if (a(paramContext, "exit 0", localStringBuilder) == 0)
          {
            d = true;
            try
            {
              t localt = (t)ad.a(paramContext, t.class);
              if (!localt.aM())
              {
                localt.o(true);
                WidgetControlProvider.a(paramContext);
              }
              bool = true;
            }
            catch (Exception localException2)
            {
              while (true)
                m.b("Can not store rooted state", localException2);
            }
          }
        }
        catch (Exception localException1)
        {
          m.b("Can not access rooted state", localException1);
          if (parama != null)
          {
            com.avast.android.generic.util.ga.a.a().a("ms-Firewall", "operation", "failedNoRootAccess", Long.valueOf(0L));
            parama.a(paramContext.getString(2131493678));
          }
          bool = false;
        }
      }
    }
    return bool;
  }

  private static boolean e(Context paramContext, a parama)
  {
    boolean bool = true;
    try
    {
      File localFile1 = new File(paramContext.getDir("bin", 0), "iptables_armv5");
      if ((!localFile1.exists()) || (localFile1.length() != 198652L))
        a(paramContext, 2131099650, localFile1, "755");
      File localFile2 = new File(paramContext.getDir("bin", 0), "busybox_g1");
      if (!localFile2.exists())
        a(paramContext, 2131099648, localFile2, "755");
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        m.b("Error applying binaries", localException);
        if (parama != null)
        {
          Object[] arrayOfObject = new Object[bool];
          arrayOfObject[0] = q.a(paramContext, localException);
          parama.a(paramContext.getString(2131493679, arrayOfObject));
        }
        bool = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.core.b
 * JD-Core Version:    0.6.2
 */