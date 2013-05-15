package com.avast.android.mobilesecurity.receiver;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import com.avast.android.generic.ad;
import com.avast.android.generic.f.b.a;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.campaign.b;
import com.avast.android.mobilesecurity.app.messageshield.MessageScannerService;
import com.avast.android.mobilesecurity.service.UpdateService;
import com.avast.android.mobilesecurity.t;

public final class ConnectivityChangeReceiver extends BroadcastReceiver
{
  public static void a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, UpdateService.class);
    localIntent.addCategory("com.avast.update.connectivityChangedFailsafe");
    localIntent.putExtra("connectivityChangedFailsafe", true);
    PendingIntent localPendingIntent = PendingIntent.getService(paramContext, 0, localIntent, 268435456);
    ((AlarmManager)paramContext.getSystemService("alarm")).cancel(localPendingIntent);
  }

  private static void b(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, UpdateService.class);
    localIntent.addCategory("com.avast.update.connectivityChangedFailsafe");
    localIntent.putExtra("connectivityChangedFailsafe", true);
    PendingIntent localPendingIntent = PendingIntent.getService(paramContext, 0, localIntent, 268435456);
    long l = 180000L + System.currentTimeMillis();
    ((AlarmManager)paramContext.getSystemService("alarm")).set(1, l, localPendingIntent);
    m.c("ConnectivityChangeReceiver failsafe scheduled");
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!paramIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE"));
    while (true)
    {
      return;
      boolean bool1 = ((t)ad.a(paramContext, t.class)).aN();
      boolean bool2 = paramIntent.getBooleanExtra("noConnectivity", false);
      boolean bool3 = false;
      if (!bool2)
        bool3 = true;
      a.a((ConnectivityManager)paramContext.getSystemService("connectivity"), bool3);
      if (bool1)
      {
        b(paramContext);
        if (bool3)
          UpdateService.c(paramContext);
      }
      if (bool3)
      {
        paramContext.startService(new Intent(paramContext, MessageScannerService.class));
        new b(paramContext).a();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.receiver.ConnectivityChangeReceiver
 * JD-Core Version:    0.6.2
 */