package org.antivirus.ui.performance;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.StatFs;
import android.text.format.Formatter;
import android.widget.ListView;
import java.io.File;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import org.antivirus.AVService;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.compatibility.HoneycombTools;
import org.antivirus.tuneup.ba;
import org.antivirus.ui.BaseToolListActivity;
import org.antivirus.ui.WebViewAdsManager;
import org.antivirus.ui.main.AntivirusMainScreen;

public class PerformanceActivity extends BaseToolListActivity
{
  ArrayList a = new ArrayList();
  private final int b = 0;
  private final int c = 1;
  private final int f = 2;
  private final int g = 3;
  private final int h = 4;
  private i i;
  private org.antivirus.tuneup.h j;
  private Handler k;
  private int l;
  private String m;
  private String n;
  private String o;
  private int p;
  private String q;
  private HashMap r = new HashMap();
  private WebViewAdsManager s;
  private boolean t;
  private ServiceConnection u = new d(this);

  private int d()
  {
    List localList = ((ActivityManager)getSystemService("activity")).getRunningAppProcesses();
    ListIterator localListIterator = localList.listIterator();
    int i1 = localList.size();
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo1 = (ActivityManager.RunningAppProcessInfo)localListIterator.next();
    PackageManager localPackageManager = getPackageManager();
    int i2 = i1;
    Object localObject = localRunningAppProcessInfo1;
    if (localObject != null)
      if ((localObject != null) && (((ActivityManager.RunningAppProcessInfo)localObject).processName != null) && (this.r.get(((ActivityManager.RunningAppProcessInfo)localObject).processName) == null));
    label178: for (int i3 = i2 - 1; ; i3 = i2)
    {
      while (true)
        if (localListIterator.hasNext())
        {
          ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo2 = (ActivityManager.RunningAppProcessInfo)localListIterator.next();
          i2 = i3;
          localObject = localRunningAppProcessInfo2;
          break;
          try
          {
            ApplicationInfo localApplicationInfo2 = localPackageManager.getApplicationInfo(((ActivityManager.RunningAppProcessInfo)localObject).processName, 0);
            localApplicationInfo1 = localApplicationInfo2;
            if (localApplicationInfo1 != null)
              break label178;
            i3 = i2 - 1;
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
            while (true)
            {
              localNameNotFoundException.printStackTrace();
              ApplicationInfo localApplicationInfo1 = null;
            }
          }
        }
      i2 = i3;
      localObject = null;
      break;
      return i2;
    }
  }

  protected final void c()
  {
    finish();
    Intent localIntent = new Intent(this, AntivirusMainScreen.class);
    localIntent.setFlags(608305152);
    startActivity(localIntent);
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.s.onConfigurationChanged(this, 2131230906, paramConfiguration);
    super.onConfigurationChanged(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903083);
    a(2130837528, 2130837529, Strings.getString(2131296674), false);
    int i1 = 0;
    if (i1 < 4)
    {
      switch (i1)
      {
      default:
        this.a.add(new b(3));
      case 0:
      case 1:
      case 2:
      }
      while (true)
      {
        i1++;
        break;
        this.a.add(new b(0));
        continue;
        this.a.add(new b(1));
        continue;
        this.a.add(new b(2));
      }
    }
    this.i = new i(this, this, this.a);
    setListAdapter(this.i);
    getListView().setOnItemClickListener(new h(this));
    this.j = new org.antivirus.tuneup.h(0);
    if (this.k == null)
      this.k = new e(this);
    this.r.put("com.android.launcher", Boolean.valueOf(true));
    this.r.put("com.android.launcher2", Boolean.valueOf(true));
    this.r.put("com.htc.launcher", Boolean.valueOf(true));
    this.r.put("com.htc.android.mail", Boolean.valueOf(true));
    this.r.put(getPackageName(), Boolean.valueOf(true));
    this.s = new WebViewAdsManager();
    bindService(new Intent(this, AVService.class), this.u, 1);
    this.t = true;
  }

  public void onDestroy()
  {
    if (this.s != null)
      this.s.stop();
    if (this.t)
    {
      unbindService(this.u);
      this.t = false;
    }
    super.onDestroy();
  }

  protected void onPause()
  {
    super.onPause();
    unregisterReceiver(this.j);
    this.j.a(null);
  }

  public void onResume()
  {
    super.onResume();
    this.j.a(this.k);
    registerReceiver(this.j, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    boolean bool1 = getPackageManager().hasSystemFeature("android.hardware.telephony");
    this.n = Strings.getString(2131296682);
    this.p = getResources().getColor(2131165245);
    if (!bool1)
      this.n = "";
    double[] arrayOfDouble;
    int i2;
    String str2;
    if (AVSettings.isTrafficCounterOn())
    {
      this.p = -1;
      arrayOfDouble = ba.a(getApplicationContext()).a(true);
      if (arrayOfDouble != null)
      {
        ba.a(getApplicationContext());
        Calendar localCalendar = ba.e();
        ba.a(getApplicationContext());
        i2 = ba.f();
        str2 = DateFormat.getDateInstance(2, Locale.getDefault()).format(new Date(localCalendar.getTimeInMillis()));
        this.n = (Strings.getString(2131296601) + " " + Formatter.formatFileSize(this, ()arrayOfDouble[1]) + " " + Strings.getString(2131296683) + " " + Formatter.formatFileSize(this, AVSettings.getDataQuotaBytes()) + "\n");
        if (i2 > 0)
          break label522;
        this.n += Strings.getString(2131296615);
        if (arrayOfDouble[0] < 100.0D)
          break label587;
      }
    }
    for (this.p = -65536; ; this.p = getResources().getColor(2131165245))
      label522: label587: 
      do
      {
        StatFs localStatFs1 = new StatFs(Environment.getDataDirectory().getPath());
        long l1 = localStatFs1.getBlockSize();
        long l2 = localStatFs1.getAvailableBlocks();
        this.q = (Strings.getString(2131296684) + " " + Formatter.formatFileSize(this, l2 * l1) + "\n");
        if ((Integer.parseInt(Build.VERSION.SDK) < 11) || (!HoneycombTools.isExternalStorageEmulated()))
        {
          String str1 = Environment.getExternalStorageState();
          int i1;
          if (!"mounted".equals(str1))
          {
            boolean bool2 = "mounted_ro".equals(str1);
            i1 = 0;
            if (!bool2);
          }
          else
          {
            i1 = 1;
          }
          if (i1 != 0)
          {
            StatFs localStatFs2 = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long l3 = localStatFs2.getBlockSize();
            long l4 = localStatFs2.getAvailableBlocks();
            this.q = (this.q + Strings.getString(2131296685) + " " + Formatter.formatFileSize(this, l4 * l3));
          }
        }
        new Thread(new f(this)).start();
        return;
        this.n = (this.n + Strings.getString(2131296577).replace("[number]", new StringBuilder().append(i2).toString()) + " " + str2);
        break;
      }
      while ((!AVSettings.isQuotaWarningNotificationOn()) || (arrayOfDouble[0] < AVSettings.getDataPlanNotificationThreshold()));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.performance.PerformanceActivity
 * JD-Core Version:    0.6.2
 */