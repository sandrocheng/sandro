package com.avast.android.mobilesecurity.app.locking.core;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.scanner.o;
import com.avast.android.mobilesecurity.e.c;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.engine.s;
import com.avast.android.mobilesecurity.engine.x;
import com.avast.android.mobilesecurity.t;
import java.io.File;
import java.util.List;

final class f extends Thread
{
  private Context b;
  private b c;
  private o d;

  public f(AppLockingService paramAppLockingService, Context paramContext, o paramo, Handler paramHandler)
  {
    this.b = paramContext;
    this.d = paramo;
    this.c = new b((ActivityManager)paramContext.getSystemService("activity"), paramHandler);
  }

  public void run()
  {
    super.run();
    try
    {
      while (true)
      {
        App localApp = (App)AppLockingService.d(this.a).e();
        try
        {
          PackageInfo localPackageInfo = this.b.getPackageManager().getPackageInfo(localApp.e, 0);
          ApplicationInfo localApplicationInfo = localPackageInfo.applicationInfo;
          String str = localPackageInfo.packageName;
          m.b("ApplockingService", "Scanning: " + localPackageInfo.packageName);
          List localList = i.a(this.b, null, new File(localApplicationInfo.sourceDir), localPackageInfo, 36L);
          if ((localList != null) && (!localList.isEmpty()))
          {
            s locals = (s)localList.get(0);
            m.b("ApplockingService", "Result:" + locals.a.toString());
            if (locals.a == x.l)
            {
              this.c.a(this.b);
              this.c.a(str);
            }
            this.d.a(localList, localApplicationInfo, this.b.getPackageManager().getApplicationLabel(localApplicationInfo).toString(), localApp, 2);
            if (!locals.e)
              ((t)ad.a(this.b, t.class)).aw();
          }
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException)
        {
          m.a("ApplockingService", "Package not found: " + localApp.e, localNameNotFoundException);
        }
      }
    }
    catch (InterruptedException localInterruptedException)
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.locking.core.f
 * JD-Core Version:    0.6.2
 */