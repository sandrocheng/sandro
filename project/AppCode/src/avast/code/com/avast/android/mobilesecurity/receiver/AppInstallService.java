package com.avast.android.mobilesecurity.receiver;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.advisor.AdvisorScanService;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.app.scanner.OnDemandScannerScanService;
import com.avast.android.mobilesecurity.t;
import com.google.analytics.tracking.android.bo;

public class AppInstallService extends IntentService
{
  private static String a = "";
  private static long b;

  public AppInstallService()
  {
    super("AppInstallService");
  }

  private PackageInfo a(PackageManager paramPackageManager, String paramString)
  {
    try
    {
      PackageInfo localPackageInfo2 = paramPackageManager.getPackageInfo(paramString, 0);
      localPackageInfo1 = localPackageInfo2;
      return localPackageInfo1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        PackageInfo localPackageInfo1 = null;
    }
  }

  private void a(Intent paramIntent)
  {
    paramIntent.putExtra("rescan", true);
    PendingIntent localPendingIntent = PendingIntent.getService(this, 0, paramIntent, 268435456);
    ((AlarmManager)getSystemService("alarm")).set(0, 5000L + System.currentTimeMillis(), localPendingIntent);
  }

  private boolean a(String paramString)
  {
    long l = System.currentTimeMillis() - b;
    if ((!a.equals(paramString)) || (l > 5000L));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    Uri localUri = paramIntent.getData();
    if (localUri == null);
    while (true)
    {
      return;
      boolean bool = paramIntent.getBooleanExtra("rescan", false);
      String str1 = localUri.toString().substring(1 + paramIntent.getDataString().indexOf(":"));
      m.d("Scanning newly installed application:" + str1 + ", " + getPackageName());
      t localt = (t)ad.a(this, t.class);
      if ((!bool) && (getPackageName().equals(str1)))
      {
        m.d("Update itself");
        b.a(new a(this, localt), new Void[0]);
        com.avast.android.generic.util.ga.a.a().a("common", "appUpdated", str1, Long.valueOf(0L));
        u.a(this).a(y.e, null, null, null, null, null, null);
      }
      PackageManager localPackageManager = getPackageManager();
      if (localt.b("eulaDone", false))
      {
        PackageInfo localPackageInfo = a(localPackageManager, str1);
        if (localPackageInfo == null)
        {
          String str3 = localPackageManager.getNameForUid(paramIntent.getIntExtra("android.intent.extra.UID", -1));
          if (str3 != null)
            localPackageInfo = a(localPackageManager, str3);
        }
        if (localPackageInfo != null)
          synchronized (a)
          {
            if (a(localPackageInfo.packageName))
            {
              if ((localt.ag()) && (localt.ai()))
                OnDemandScannerScanService.a(this, localPackageInfo, 2);
              AdvisorScanService.a(this, localPackageInfo);
              a = localPackageInfo.packageName;
              b = System.currentTimeMillis();
            }
          }
        if (!bool)
          a(paramIntent);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.receiver.AppInstallService
 * JD-Core Version:    0.6.2
 */