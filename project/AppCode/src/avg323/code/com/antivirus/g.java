package com.antivirus;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Messenger;
import com.antivirus.core.scanners.ScannerFilesConfig;
import com.antivirus.core.scanners.ScannerFilesResult;
import com.antivirus.core.scanners.ScannerPackagesResult;
import com.antivirus.core.scanners.ScannerSmsResult;
import com.antivirus.core.scanners.ad;
import com.antivirus.core.scanners.e;
import com.antivirus.core.scanners.j;
import com.antivirus.core.scanners.z;
import com.antivirus.ui.callmessagefilter.CallMessageFilterActivity;
import com.antivirus.ui.callmessagefilter.fragment.ah;
import com.antivirus.ui.callmessagefilter.fragment.n;
import com.antivirus.ui.main.HandheldMainActivity;
import com.antivirus.ui.scan.ScanBeforeInstallActivity;
import com.antivirus.ui.scan.UnInstall;
import com.antivirus.ui.scan.results.ScanResultsActivity;
import com.antivirus.ui.tablet.DualPaneActivity;
import com.avg.toolkit.RecurringTasks.AlarmReceiver;
import com.avg.ui.general.o;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;

public class g extends com.antivirus.core.scanners.a
{
  com.avg.toolkit.RecurringTasks.b a;

  public g(Context paramContext, Handler paramHandler, com.antivirus.core.b paramb, ArrayList paramArrayList, com.avg.widget.g paramg)
  {
    super(paramContext, paramHandler, paramb, paramArrayList);
    c.j(this.c.h());
  }

  public static TreeMap a(Context paramContext)
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("1", m.a(paramContext, 2131296831));
    localTreeMap.put("8", m.a(paramContext, 2131296832));
    localTreeMap.put("9", m.a(paramContext, 2131296833));
    return localTreeMap;
  }

  private void a(int paramInt1, int paramInt2)
  {
    NotificationManager localNotificationManager = (NotificationManager)this.b.getSystemService("notification");
    Notification localNotification = new Notification(2130837609, m.a(this.b, paramInt1), System.currentTimeMillis());
    String str1 = this.b.getString(2131296472);
    String str2 = m.a(this.b, paramInt2);
    if (o.c());
    for (Intent localIntent = new Intent(this.b, DualPaneActivity.class); ; localIntent = new Intent(this.b, HandheldMainActivity.class))
    {
      localIntent.putExtra("ScannerClient", true);
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.b, 0, localIntent, 0);
      localNotification.defaults = (0x4 | localNotification.defaults);
      localNotification.flags = 16;
      localNotification.setLatestEventInfo(this.b, str1, str2, localPendingIntent);
      localNotificationManager.notify(14, localNotification);
      return;
    }
  }

  private void a(Context paramContext, int paramInt1, int paramInt2)
  {
    NotificationManager localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
    Notification localNotification = new Notification(2130837609, m.a(this.b, paramInt1), System.currentTimeMillis());
    String str1 = paramContext.getString(2131296472);
    String str2 = m.a(this.b, paramInt2);
    PendingIntent localPendingIntent = PendingIntent.getActivity(paramContext, 0, new Intent(), 0);
    localNotification.defaults = (0x4 | localNotification.defaults);
    localNotification.flags = 16;
    localNotification.setLatestEventInfo(paramContext, str1, str2, localPendingIntent);
    localNotificationManager.notify(15, localNotification);
  }

  private void b(int paramInt1, int paramInt2)
  {
    NotificationManager localNotificationManager = (NotificationManager)this.b.getSystemService("notification");
    Notification localNotification = new Notification(2130837609, m.a(this.b, paramInt1), System.currentTimeMillis());
    String str1 = this.b.getString(2131296472);
    String str2 = m.a(this.b, paramInt2);
    new Intent(this.b, ScanResultsActivity.class);
    Intent localIntent;
    if (o.c())
    {
      localIntent = new Intent(this.b, DualPaneActivity.class);
      localIntent.setAction("antivirus.notification.SCAN_RESULTS");
      localIntent.putExtra("EXTRA_GOTO", 1);
    }
    while (true)
    {
      localIntent.setFlags(805306368);
      localIntent.putExtra("ScannerClient", true);
      localIntent.putExtra("from_notification", 1);
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.b, 0, localIntent, 0);
      localNotification.defaults = (0x4 | localNotification.defaults);
      localNotification.flags = 16;
      localNotification.setLatestEventInfo(this.b, str1, str2, localPendingIntent);
      localNotificationManager.notify(14, localNotification);
      return;
      localIntent = new Intent(this.b, ScanResultsActivity.class);
    }
  }

  private void f()
  {
    long l1 = this.c.d();
    if (System.currentTimeMillis() > l1)
    {
      com.antivirus.core.b localb = this.c;
      if (l1 == 0L)
        l1 = System.currentTimeMillis();
      localb.c(l1);
      long l2 = 86400000L + System.currentTimeMillis() + ()(86400000.0D * Math.random());
      this.c.b(l2);
      super.c();
    }
    while (true)
    {
      AlarmManager localAlarmManager = (AlarmManager)this.b.getSystemService("alarm");
      Intent localIntent = new Intent(this.b, AlarmReceiver.class);
      localIntent.setAction("securityUpdate");
      localIntent.putExtra("alarm_code", 2000);
      localIntent.putExtra("alarm_code2", 1);
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(this.b, 0, localIntent, 134217728);
      localAlarmManager.setRepeating(0, 1L + this.c.d(), 86400000L, localPendingIntent);
      return;
      if (this.c.c() < this.c.e())
        super.c();
    }
  }

  void a()
  {
    if (this.c.n())
    {
      ad localad = new ad(this.c);
      localad.b(this.b, com.avg.ui.general.c.i.b(this.b));
      NotificationManager localNotificationManager = (NotificationManager)this.b.getSystemService("notification");
      if (!localad.a.a)
      {
        Intent localIntent = new Intent(this.b, CallMessageFilterActivity.class);
        localIntent.setFlags(608305152);
        localIntent.putExtra("default_tab_name", n.b);
        localIntent.putExtra("default_filter_option", ah.b.a());
        PendingIntent localPendingIntent = PendingIntent.getActivity(this.b, 0, localIntent, 134217728);
        String str = m.a(this.b, 2131296825);
        Notification localNotification = new Notification(2130837794, m.a(this.b, 2131296774), 0L);
        localNotification.flags = 16;
        localNotification.setLatestEventInfo(this.b, str, m.a(this.b, 2131296775), localPendingIntent);
        localNotificationManager.notify(16, localNotification);
      }
    }
  }

  void a(int paramInt, com.antivirus.core.scanners.c paramc, Object paramObject)
  {
    if (paramInt == 8)
      super.a(m.a(this.b, 2131296602), m.a(this.b, 2131296604), paramc, (ScannerSmsResult)paramObject);
    while (true)
    {
      return;
      if (paramInt == 4)
        super.a(paramc, (ScannerFilesResult)paramObject);
      else if (paramInt == 1)
        super.a(paramc, (ScannerPackagesResult)paramObject);
      else
        com.avg.toolkit.f.a.a();
    }
  }

  public void a(Bundle paramBundle)
  {
    if (paramBundle == null);
    while (true)
    {
      return;
      if (this.a.a(this.b.getApplicationContext(), paramBundle))
      {
        a(com.antivirus.core.scanners.c.a, l.b, null, null);
        this.a.a(this.b.getApplicationContext());
      }
      else if (paramBundle.getInt("alarm_code2", -1) == 1)
      {
        f();
      }
      else
      {
        super.a(paramBundle);
      }
    }
  }

  public void a(com.antivirus.core.scanners.c paramc, l paraml, ScannerFilesConfig paramScannerFilesConfig, Messenger paramMessenger)
  {
    int i = 4;
    long l2;
    if (paraml == l.b)
    {
      l2 = System.currentTimeMillis();
      long l3 = this.c.g();
      if ((l3 != -1L) && (l2 > l3 + this.c.f()) && (this.c.f() != 0L));
    }
    label61: long l1;
    do
    {
      return;
      this.c.d(l2);
      if ((paraml != l.b) || (paramc != com.antivirus.core.scanners.c.a))
        break;
      l1 = super.b(paramc).a;
    }
    while ((l1 != 0L) && (l1 < 86400000L + System.currentTimeMillis()));
    ScannerFilesConfig localScannerFilesConfig;
    int j;
    if (paramScannerFilesConfig == null)
    {
      localScannerFilesConfig = new ScannerFilesConfig();
      if (this.c.o())
      {
        j = 99999;
        label143: localScannerFilesConfig.g = j;
      }
    }
    while (true)
    {
      File localFile1;
      String str;
      if (localScannerFilesConfig.e.size() == 0)
      {
        localFile1 = Environment.getExternalStorageDirectory();
        if (Build.VERSION.SDK_INT <= 7)
          break label285;
        str = Environment.getExternalStorageDirectory().getParent();
        if (str == null)
          break label260;
      }
      label260: label285: for (File localFile2 = new File(str); ; localFile2 = localFile1)
        do
        {
          localScannerFilesConfig.e.add(localFile2);
          switch (k.a[paramc.ordinal()])
          {
          default:
            com.avg.toolkit.f.a.a();
            break label61;
            j = 5;
            break label143;
            localFile2 = new File("/mnt");
          case 1:
          case 2:
          case 3:
          }
        }
        while ((localFile2 != null) && (localFile2.exists()));
      i = -1;
      if (paraml == l.a)
      {
        localScannerFilesConfig.d = Boolean.valueOf(this.c.i());
        label317: if (paraml != l.a)
          break label399;
      }
      for (Object localObject = new h(this); ; localObject = new i(this))
      {
        super.a((j)localObject, i, localScannerFilesConfig, paramMessenger, paramc, com.avg.ui.general.c.i.b(this.b));
        break;
        localScannerFilesConfig.d = Boolean.valueOf(com.antivirus.c.a.a(this.b));
        break label317;
        localScannerFilesConfig.d = Boolean.valueOf(true);
        break label317;
        localScannerFilesConfig.d = Boolean.valueOf(true);
        break label317;
        label399: a(2131296599, 2131296600);
      }
      localScannerFilesConfig = paramScannerFilesConfig;
    }
  }

  public void a(com.antivirus.core.scanners.h paramh, com.antivirus.core.scanners.c paramc)
  {
    if (com.antivirus.core.scanners.c.a.equals(paramc))
    {
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("firstScan", false);
      localBundle.putBoolean("threatFound", paramh.d());
      localBundle.putSerializable("ScannerClient", paramc);
      localBundle.putString("threatCount", String.valueOf(paramh.e()));
      localBundle.putInt("extra_plugin_id", 1);
      AVService.a(this.b, 25000, 8, localBundle);
    }
  }

  public void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    Context localContext;
    if (paramBoolean)
    {
      localContext = this.b;
      if (Build.VERSION.SDK_INT <= 7)
        break label86;
    }
    label86: for (boolean bool = true; ; bool = false)
    {
      z.a(localContext, ScanBeforeInstallActivity.class, bool);
      if (this.c.f() == 0L)
        this.c.d(System.currentTimeMillis());
      f();
      this.a = new com.avg.toolkit.RecurringTasks.b(this.b, "SNCAS", 86400000L, false, false, 2000, false);
      return;
    }
  }

  public void b(Bundle paramBundle)
  {
    int i = -1;
    if (paramBundle != null);
    try
    {
      int j = paramBundle.getInt("__SAC2", -1);
      i = j;
      switch (i)
      {
      default:
        super.b(paramBundle);
        return;
      case 106:
      case 107:
      case 2:
      case 1:
      case 3:
      case 4:
      case 11:
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        continue;
        a(com.antivirus.core.scanners.c.a, l.b, null, null);
        continue;
        a(com.antivirus.core.scanners.c.a, l.c, null, null);
        continue;
        d(paramBundle);
        continue;
        a((com.antivirus.core.scanners.c)paramBundle.get("__SAD"), l.a, (ScannerFilesConfig)paramBundle.getParcelable("ScannerConfig"), (Messenger)paramBundle.get("__SAH"));
        continue;
        a();
        continue;
        a(paramBundle.getInt("__SAD"), (com.antivirus.core.scanners.c)paramBundle.get("ScannerClient"), paramBundle.getParcelable("ScannerResult"));
        continue;
        c(paramBundle);
      }
    }
  }

  void c(Bundle paramBundle)
  {
    String str1 = paramBundle.getString("pkgname");
    try
    {
      String str4 = ScannerPackagesResult.a(this.b, str1);
      str2 = str4;
      String str3 = paramBundle.getString("catname");
      Intent localIntent = new Intent(this.b, UnInstall.class);
      localIntent.putExtra("categtory", str3);
      localIntent.putExtra("appName", str2);
      localIntent.setFlags(402653184);
      localIntent.putExtra("suspicious", str1);
      this.b.startActivity(localIntent);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        String str2 = "";
        com.avg.toolkit.f.a.a(localNameNotFoundException);
      }
    }
  }

  // ERROR //
  void d(Bundle paramBundle)
  {
    // Byte code:
    //   0: invokestatic 535	com/antivirus/c:c	()Z
    //   3: ifne +4 -> 7
    //   6: return
    //   7: ldc_w 534
    //   10: astore_2
    //   11: aload_1
    //   12: ldc_w 537
    //   15: invokevirtual 511	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   18: astore 14
    //   20: aload 14
    //   22: astore 15
    //   24: aload 15
    //   26: ifnull +39 -> 65
    //   29: aload 15
    //   31: ldc_w 539
    //   34: ldc_w 534
    //   37: invokevirtual 543	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   40: astore 15
    //   42: aload_1
    //   43: ldc_w 545
    //   46: iconst_0
    //   47: invokevirtual 549	android/os/Bundle:getBoolean	(Ljava/lang/String;Z)Z
    //   50: ifeq +201 -> 251
    //   53: aload_0
    //   54: getfield 32	com/antivirus/g:b	Landroid/content/Context;
    //   57: aload 15
    //   59: ldc_w 551
    //   62: invokestatic 556	com/antivirus/core/d/a/i:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   65: aload 15
    //   67: astore 4
    //   69: invokestatic 561	com/antivirus/ui/backup/apps/ah:F	()Z
    //   72: ifeq +34 -> 106
    //   75: invokestatic 565	com/antivirus/ui/backup/apps/ah:G	()Landroid/os/Handler;
    //   78: ifnull +28 -> 106
    //   81: invokestatic 571	android/os/Message:obtain	()Landroid/os/Message;
    //   84: astore 13
    //   86: aload 13
    //   88: iconst_3
    //   89: putfield 574	android/os/Message:what	I
    //   92: aload 13
    //   94: aload_1
    //   95: invokevirtual 577	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   98: invokestatic 565	com/antivirus/ui/backup/apps/ah:G	()Landroid/os/Handler;
    //   101: aload 13
    //   103: invokevirtual 583	android/os/Handler:dispatchMessage	(Landroid/os/Message;)V
    //   106: aload_0
    //   107: getfield 32	com/antivirus/g:b	Landroid/content/Context;
    //   110: ldc 59
    //   112: invokevirtual 65	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   115: checkcast 67	android/app/NotificationManager
    //   118: astore 11
    //   120: aload_0
    //   121: aload_0
    //   122: getfield 32	com/antivirus/g:b	Landroid/content/Context;
    //   125: ldc_w 584
    //   128: ldc_w 584
    //   131: invokespecial 586	com/antivirus/g:a	(Landroid/content/Context;II)V
    //   134: new 588	com/avg/ui/general/c/c
    //   137: dup
    //   138: aload 11
    //   140: bipush 15
    //   142: ldc2_w 589
    //   145: invokespecial 593	com/avg/ui/general/c/c:<init>	(Landroid/app/NotificationManager;IJ)V
    //   148: pop
    //   149: ldc2_w 594
    //   152: invokestatic 600	java/lang/Thread:sleep	(J)V
    //   155: new 602	com/antivirus/j
    //   158: dup
    //   159: aload_0
    //   160: invokespecial 603	com/antivirus/j:<init>	(Lcom/antivirus/g;)V
    //   163: astore 7
    //   165: new 605	com/antivirus/core/scanners/ScannerPackagesConfig
    //   168: dup
    //   169: invokespecial 606	com/antivirus/core/scanners/ScannerPackagesConfig:<init>	()V
    //   172: astore 8
    //   174: aload 8
    //   176: iconst_1
    //   177: invokestatic 387	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   180: putfield 608	com/antivirus/core/scanners/ScannerPackagesConfig:b	Ljava/lang/Boolean;
    //   183: aload 8
    //   185: getfield 610	com/antivirus/core/scanners/ScannerPackagesConfig:c	Ljava/util/List;
    //   188: aload 4
    //   190: invokeinterface 363 2 0
    //   195: pop
    //   196: aload_0
    //   197: getfield 15	com/antivirus/g:c	Lcom/antivirus/core/b;
    //   200: invokevirtual 330	com/antivirus/core/b:o	()Z
    //   203: ifeq +91 -> 294
    //   206: ldc_w 331
    //   209: istore 10
    //   211: aload 8
    //   213: iload 10
    //   215: putfield 612	com/antivirus/core/scanners/ScannerPackagesConfig:d	I
    //   218: aload_0
    //   219: aload 7
    //   221: iconst_1
    //   222: aload 8
    //   224: aconst_null
    //   225: getstatic 614	com/antivirus/core/scanners/c:c	Lcom/antivirus/core/scanners/c;
    //   228: aload_0
    //   229: getfield 32	com/antivirus/g:b	Landroid/content/Context;
    //   232: invokestatic 209	com/avg/ui/general/c/i:b	(Landroid/content/Context;)Z
    //   235: invokespecial 398	com/antivirus/core/scanners/a:a	(Lcom/antivirus/core/scanners/j;ILcom/antivirus/core/scanners/m;Landroid/os/Messenger;Lcom/antivirus/core/scanners/c;Z)V
    //   238: goto -232 -> 6
    //   241: astore 5
    //   243: aload 5
    //   245: invokestatic 475	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   248: goto -242 -> 6
    //   251: aload_0
    //   252: getfield 32	com/antivirus/g:b	Landroid/content/Context;
    //   255: aload 15
    //   257: ldc_w 616
    //   260: invokestatic 556	com/antivirus/core/d/a/i:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    //   263: goto -198 -> 65
    //   266: astore 16
    //   268: aload 15
    //   270: astore_2
    //   271: aload 16
    //   273: astore_3
    //   274: aload_3
    //   275: invokestatic 475	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   278: aload_2
    //   279: astore 4
    //   281: goto -212 -> 69
    //   284: astore 6
    //   286: aload 6
    //   288: invokestatic 475	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   291: goto -136 -> 155
    //   294: iconst_5
    //   295: istore 10
    //   297: goto -86 -> 211
    //   300: astore_3
    //   301: goto -27 -> 274
    //
    // Exception table:
    //   from	to	target	type
    //   69	106	241	java/lang/Exception
    //   155	238	241	java/lang/Exception
    //   286	291	241	java/lang/Exception
    //   29	65	266	java/lang/Exception
    //   251	263	266	java/lang/Exception
    //   106	155	284	java/lang/Exception
    //   11	20	300	java/lang/Exception
  }

  public void onDestroy()
  {
    this.a.b(this.b);
    ((NotificationManager)this.b.getSystemService("notification")).cancel(14);
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.g
 * JD-Core Version:    0.6.2
 */