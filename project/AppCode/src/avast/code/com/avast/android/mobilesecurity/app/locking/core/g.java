package com.avast.android.mobilesecurity.app.locking.core;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import com.avast.android.mobilesecurity.receiver.ExternalPowerReceiver;
import java.util.List;

/**
 * mark loop search activity
 * @author sandrocheng
 *
 */
class g
  implements Runnable
{
  private ActivityManager b;
  private String c;
  private Context d;

  public g(AppLockingService paramAppLockingService, Context paramContext)
  {
    this.b = ((ActivityManager)paramContext.getSystemService("activity"));
    this.c = "";
    this.d = paramContext;
  }

  public void run()
  {
    try
    {
      ActivityManager.RunningTaskInfo localRunningTaskInfo = (ActivityManager.RunningTaskInfo)this.b.getRunningTasks(1).get(0);
      if (!this.c.equals(localRunningTaskInfo.topActivity.getPackageName()))
      {
        String str1 = localRunningTaskInfo.topActivity.getPackageName();
        this.c = str1;
        String str2 = localRunningTaskInfo.baseActivity.getClassName().replace(str1, "");
        localApp1 = AppLockingService.a(this.a, str1);
        localApp1.a(str2, null);
        String str3 = localRunningTaskInfo.topActivity.getClassName().replace(str1, "");
        if (".UninstallerActivity".equals(str3))
        {
          localApp2 = new App();
          localApp2.e = App.b;
          localApp2.k = true;
          localApp2.l = false;
          localApp2.i = true;
          localApp2.n = 1;
          localApp2.a(".UninstallerActivity", "android.intent.action.DELETE");
          if (str3.contains(".AppWidgetPickActivity"))
            localApp2.a(str3, null);
          AppLockingService.a(this.a, localApp2);
        }
      }
      else
      {
        AppLockingService.c(this.a).postDelayed(this, 200L * ExternalPowerReceiver.a(this.d));
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        App localApp1;
        continue;
        App localApp2 = localApp1;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.locking.core.g
 * JD-Core Version:    0.6.2
 */