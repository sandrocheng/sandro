package com.keniu.security.monitor;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.ijinshan.cleaner.MonitorUninstallActivity;
import com.ijinshan.kpref.t;
import com.jxphone.mosecurity.activity.friend.FriendActivity;
import com.jxphone.mosecurity.activity.friend.FriendCallLogActivity;
import com.jxphone.mosecurity.activity.friend.FriendSmsActivity;
import com.keniu.security.protection.ui.ag;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

final class e extends Thread
{
  private Handler b;
  private Looper c;
  private Process d;
  private BufferedReader e;
  private Runnable f = new f(this);

  e(d paramd)
  {
  }

  private static Process a(String paramString)
  {
    Runtime localRuntime = Runtime.getRuntime();
    try
    {
      Process localProcess2 = localRuntime.exec(paramString);
      localProcess1 = localProcess2;
      return localProcess1;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.printStackTrace();
        Process localProcess1 = null;
      }
    }
  }

  private void b()
  {
    if ((FriendActivity.a(d.a(this.a))) || (FriendSmsActivity.a(d.a(this.a))) || (FriendCallLogActivity.a(d.a(this.a))))
    {
      Intent localIntent = new Intent(d.a(this.a), MonitorUninstallActivity.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra(MonitorUninstallActivity.a, MonitorUninstallActivity.c);
      d.a(this.a).startActivity(localIntent);
    }
  }

  private void b(String paramString)
  {
    if ((paramString.startsWith("Starting")) && (paramString.indexOf("action.DELETE") > 0))
    {
      int m = paramString.indexOf("dat=package:");
      if (m != -1)
      {
        int n = m + new String("dat=package:").length();
        int i1 = paramString.indexOf(" cmp=", n);
        if (i1 != -1)
        {
          String str2 = paramString.substring(n, i1);
          if ((!TextUtils.isEmpty(str2)) && (str2.equals(d.a(this.a).getPackageName())) && ((FriendActivity.a(d.a(this.a))) || (FriendSmsActivity.a(d.a(this.a))) || (FriendCallLogActivity.a(d.a(this.a)))))
          {
            Intent localIntent2 = new Intent(d.a(this.a), MonitorUninstallActivity.class);
            localIntent2.setFlags(268435456);
            localIntent2.putExtra(MonitorUninstallActivity.a, MonitorUninstallActivity.c);
            d.a(this.a).startActivity(localIntent2);
          }
        }
      }
    }
    while (true)
    {
      return;
      if ((paramString.startsWith("Starting")) && (paramString.indexOf("android.settings.APPLICATION_DETAILS_SETTINGS") > 0))
      {
        int i = paramString.indexOf("dat=package:");
        if (i != -1)
        {
          int j = i + new String("dat=package:").length();
          int k = paramString.indexOf(" cmp=", j);
          if (k != -1)
          {
            String str1 = paramString.substring(j, k);
            if ((!TextUtils.isEmpty(str1)) && (str1.equals(d.a(this.a).getPackageName())) && (ag.g(d.a(this.a))))
            {
              Context localContext = d.a(this.a);
              if (t.b(localContext).getBoolean(localContext.getString(2131429242), false))
              {
                Intent localIntent1 = new Intent(d.a(this.a), MonitorUninstallActivity.class);
                localIntent1.setFlags(268435456);
                localIntent1.putExtra(MonitorUninstallActivity.a, MonitorUninstallActivity.d);
                d.a(this.a).startActivity(localIntent1);
              }
            }
          }
        }
      }
    }
  }

  private void c()
  {
    if (ag.g(d.a(this.a)))
    {
      Context localContext = d.a(this.a);
      if (t.b(localContext).getBoolean(localContext.getString(2131429242), false))
      {
        Intent localIntent = new Intent(d.a(this.a), MonitorUninstallActivity.class);
        localIntent.setFlags(268435456);
        localIntent.putExtra(MonitorUninstallActivity.a, MonitorUninstallActivity.d);
        d.a(this.a).startActivity(localIntent);
      }
    }
  }

  private boolean d()
  {
    this.d = a("logcat -c");
    this.d = a("logcat -v raw ActivityManager:I *:S");
    if (this.d != null);
    try
    {
      this.e = new BufferedReader(new InputStreamReader(this.d.getInputStream()), 1024);
      if (this.e != null)
      {
        bool = true;
        return bool;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        continue;
        boolean bool = false;
      }
    }
  }

  private void e()
  {
    try
    {
      if (this.d != null)
      {
        this.d.destroy();
        this.d = null;
      }
      if (this.e != null)
      {
        this.e.close();
        this.e = null;
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void a()
  {
    if (this.c != null);
    try
    {
      if (this.d != null)
      {
        this.d.destroy();
        this.d = null;
      }
      if (this.e != null)
      {
        this.e.close();
        this.e = null;
      }
      this.b.removeCallbacks(this.f);
      this.c.quit();
    }
    catch (Exception localException)
    {
      try
      {
        join();
        return;
        localException = localException;
        localException.printStackTrace();
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
  }

  public final void run()
  {
    if (d())
    {
      Looper.prepare();
      this.c = Looper.myLooper();
      this.b = new Handler();
      this.b.postDelayed(this.f, 500L);
      Looper.loop();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.monitor.e
 * JD-Core Version:    0.6.2
 */