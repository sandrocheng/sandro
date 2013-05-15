package com.avast.android.mobilesecurity.app.locking.core;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.ActivityManager.RecentTaskInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Process;
import com.avast.android.generic.util.m;
import java.util.Iterator;
import java.util.List;

public class b
{
  private ActivityManager a;
  private Handler b;
  private int c;

  public b(ActivityManager paramActivityManager, Handler paramHandler)
  {
    this.a = paramActivityManager;
    this.b = paramHandler;
    this.c = 0;
  }

  public void a(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  public void a(App paramApp, Context paramContext)
  {
    m.b("AppKiller", "Restarting app: " + paramApp.e);
    Intent localIntent1 = new Intent(paramApp.g);
    String str;
    ActivityManager.RecentTaskInfo localRecentTaskInfo;
    if (paramApp.f.startsWith("."))
    {
      str = paramApp.e + paramApp.f;
      localIntent1.setClassName(paramApp.e, str);
      if (paramApp.h != null)
        localIntent1.setData(Uri.parse(paramApp.h));
      List localList = this.a.getRecentTasks(5, 1);
      m.c("Search for matching task: " + localIntent1.getComponent().flattenToString() + ", with data: " + paramApp.h);
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        localRecentTaskInfo = (ActivityManager.RecentTaskInfo)localIterator.next();
        m.c("Check recent task: " + localRecentTaskInfo.baseIntent.toString());
        if ((localRecentTaskInfo.baseIntent.getComponent().equals(localIntent1.getComponent())) && (((localIntent1.getData() != null) && (localRecentTaskInfo.baseIntent.getData() != null) && (localRecentTaskInfo.baseIntent.getData().equals(localIntent1.getData()))) || ((localIntent1.getData() == null) && (localRecentTaskInfo.baseIntent.getData() == null))))
          m.d("Found matching recent task: " + localRecentTaskInfo.baseIntent.getComponent().flattenToString());
      }
    }
    for (Intent localIntent2 = localRecentTaskInfo.baseIntent; ; localIntent2 = localIntent1)
      while (true)
      {
        localIntent2.addFlags(268435456);
        localIntent2.addFlags(16384);
        try
        {
          paramContext.startActivity(localIntent2);
          return;
          str = paramApp.f;
        }
        catch (SecurityException localSecurityException)
        {
          while (true)
          {
            m.b("AppKiller", localSecurityException);
            m.b("AppKiller", "Relaunch failed, trying to lauch the MAIN activity.");
            Intent localIntent3 = paramContext.getPackageManager().getLaunchIntentForPackage(paramApp.e);
            if (localIntent3 != null)
            {
              m.b("AppKiller", "Launching: " + localIntent3.getComponent().toShortString());
              paramContext.startActivity(localIntent3);
            }
            else
            {
              m.b("AppKiller", "MAIN activity not found, doing nothing...");
            }
          }
        }
      }
  }

  @SuppressLint({"NewApi"})
  public void a(String paramString)
  {
    try
    {
      List localList = this.a.getRunningAppProcesses();
      if (localList != null)
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
          if (localRunningAppProcessInfo.pkgList != null)
          {
            String[] arrayOfString = localRunningAppProcessInfo.pkgList;
            int i = arrayOfString.length;
            for (int j = 0; j < i; j++)
              if (paramString.equals(arrayOfString[j]))
              {
                int k = localRunningAppProcessInfo.pid;
                Process.sendSignal(k, 9);
                Process.killProcess(k);
              }
          }
        }
      }
    }
    catch (Exception localException)
    {
      if (Build.VERSION.SDK_INT >= 8)
      {
        this.a.killBackgroundProcesses(paramString);
        this.c = (1 + this.c);
        m.b("AppKiller", "Killed: " + paramString + ", " + this.c + " times.");
        if (this.c < 5)
          break label190;
      }
    }
    while (true)
    {
      return;
      label190: m.b("AppKiller", "Killing in 1 second: " + paramString);
      this.b.postDelayed(new c(this, paramString), 400L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.locking.core.b
 * JD-Core Version:    0.6.2
 */