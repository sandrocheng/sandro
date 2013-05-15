package com.avast.android.mobilesecurity.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.avast.android.generic.util.m;

public class ExternalPowerReceiver extends BroadcastReceiver
{
  private static final Object a = new Object();
  private static int b = -1;

  private static int a()
  {
    return 1;
  }

  public static int a(Context paramContext)
  {
    int i;
    synchronized (a)
    {
      if (b == -1)
      {
        int j = b(paramContext);
        if (j != -1)
          b = j;
      }
      else
      {
        i = b;
        break label53;
      }
      i = a();
    }
    label53: return i;
  }

  private static void a(int paramInt)
  {
    synchronized (a)
    {
      b = paramInt;
      return;
    }
  }

  private static int b(Context paramContext)
  {
    int i = -1;
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    try
    {
      Intent localIntent = paramContext.registerReceiver(null, localIntentFilter);
      int j;
      if (localIntent != null)
      {
        j = localIntent.getIntExtra("plugged", -1);
        if (j != 0)
          break label50;
        int k = a();
        i = k;
      }
      while (true)
      {
        return i;
        label50: if (j == 2)
          i = 10;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        m.a("ExternalPowerReceiver", localException);
        i = a();
      }
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (("android.intent.action.ACTION_POWER_CONNECTED".equals(paramIntent.getAction())) || ("android.intent.action.ACTION_POWER_DISCONNECTED".equals(paramIntent.getAction())))
    {
      int i = b(paramContext);
      if (i != -1)
        a(i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.receiver.ExternalPowerReceiver
 * JD-Core Version:    0.6.2
 */