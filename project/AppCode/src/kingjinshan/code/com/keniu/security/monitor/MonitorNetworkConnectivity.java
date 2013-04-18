package com.keniu.security.monitor;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

public class MonitorNetworkConnectivity extends BroadcastReceiver
{
  public static void a(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    localIntentFilter.addAction("android.intent.action.SCREEN_ON");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    paramContext.registerReceiver(new MonitorNetworkConnectivity(), localIntentFilter);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    a locala = a.a();
    if (str.compareTo("android.net.conn.CONNECTIVITY_CHANGE") == 0)
      locala.a(a.n, paramContext, paramIntent);
    while (true)
    {
      return;
      if (str.compareTo("android.intent.action.SCREEN_ON") == 0)
        locala.a(a.o, paramContext, paramIntent);
      else if (str.compareTo("android.intent.action.SCREEN_OFF") == 0)
        locala.a(a.p, paramContext, paramIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.monitor.MonitorNetworkConnectivity
 * JD-Core Version:    0.6.2
 */