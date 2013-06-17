package com.avg.toolkit.RecurringTasks;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;

public class a extends BroadcastReceiver
{
  Runnable a;
  boolean b;

  public a(Runnable paramRunnable)
  {
    this.a = paramRunnable;
  }

  public static boolean b(Context paramContext)
  {
    try
    {
      String str = Build.PRODUCT;
      if ((str != null) && (!str.equalsIgnoreCase("9774D56D682E549C")) && (!str.equalsIgnoreCase("google_sdk")))
      {
        NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if ((localNetworkInfo != null) && (localNetworkInfo.isAvailable()))
        {
          boolean bool2 = localNetworkInfo.isConnected();
          if (bool2)
          {
            bool1 = true;
            break label90;
          }
        }
        bool1 = false;
      }
    }
    catch (Exception localException)
    {
      com.avg.toolkit.f.a.a(localException);
      bool1 = false;
    }
    boolean bool1 = true;
    label90: return bool1;
  }

  public void a(Context paramContext)
  {
    if (!this.b)
    {
      this.b = true;
      paramContext.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((b(paramContext)) && (this.b))
      this.b = false;
    try
    {
      paramContext.unregisterReceiver(this);
      this.a.run();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.RecurringTasks.a
 * JD-Core Version:    0.6.2
 */