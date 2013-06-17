package com.avg.tuneup.battery;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.avg.a.d;
import com.avg.a.g;
import com.avg.toolkit.f;
import com.avg.tuneup.battery.widget.BatteryWidgetPlugin;
import com.avg.tuneup.j;
import com.avg.ui.general.o;

public class a
{
  private b a;
  private b b;

  public void a(Context paramContext, Bundle paramBundle)
  {
    if (!j.n());
    while (true)
    {
      return;
      int i = paramBundle.getInt("level", 0);
      int j = paramBundle.getInt("status", 0);
      int k = j.p();
      if ((i <= j.o()) && (j != 2))
      {
        Bundle localBundle = new Bundle();
        String str1;
        if (o.c())
        {
          str1 = "com.antivirus.ui.tablet.DualPaneActivity";
          localBundle.putInt("EXTRA_GOTO", 2);
        }
        try
        {
          while (true)
          {
            Class localClass = Class.forName(str1);
            localObject = localClass;
            Intent localIntent = new Intent(paramContext, (Class)localObject);
            localIntent.setAction("antivirus.notification.BATTERY");
            localIntent.putExtras(localBundle);
            localIntent.setFlags(608305152);
            localIntent.putExtra("from_notification", 1);
            PendingIntent localPendingIntent = PendingIntent.getActivity(paramContext, 0, localIntent, 0);
            String str2 = paramContext.getString(g.battery_notification_title) + " " + i + "%";
            localNotification = new Notification(d.notification_low_battery, str2, 0L);
            localNotification.flags = 16;
            localNotification.setLatestEventInfo(paramContext, str2, paramContext.getString(g.battery_notification_body), localPendingIntent);
            localNotificationManager = (NotificationManager)paramContext.getSystemService("notification");
            if (localNotificationManager != null)
              break label254;
            com.avg.toolkit.f.a.a("getSystemService(Context.NOTIFICATION_SERVICE) returned null");
            j.h(i);
            break;
            str1 = "com.antivirus.ui.performance.battery.AvBatterySaveSettingsActivity";
          }
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          while (true)
          {
            Notification localNotification;
            NotificationManager localNotificationManager;
            Object localObject = BatterySaveSettingsActivity.class;
            continue;
            label254: localNotificationManager.notify(11, localNotification);
          }
        }
      }
      else if (k != 0)
      {
        j.h(0);
        if (j == 2)
          ((NotificationManager)paramContext.getSystemService("notification")).cancel(11);
      }
    }
  }

  public void a(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
      if ((j.n()) && (this.a == null))
      {
        this.a = new b(1);
        paramContext.registerReceiver(this.a, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
      }
    while (true)
    {
      return;
      try
      {
        if (this.a != null)
          paramContext.unregisterReceiver(this.a);
        this.a = null;
      }
      catch (Exception localException)
      {
        while (true)
          com.avg.toolkit.f.a.a(localException);
      }
    }
  }

  public void b(Context paramContext, Bundle paramBundle)
  {
    f.a(paramContext, 25000, 8, BatteryWidgetPlugin.k());
  }

  public void b(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
      if (this.b == null)
      {
        this.b = new b(2);
        paramContext.registerReceiver(this.b, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
      }
    while (true)
    {
      return;
      try
      {
        if (this.b != null)
          paramContext.unregisterReceiver(this.b);
        this.b = null;
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.a
 * JD-Core Version:    0.6.2
 */