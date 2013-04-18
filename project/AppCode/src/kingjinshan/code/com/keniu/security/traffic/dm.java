package com.keniu.security.traffic;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.keniu.security.a;

final class dm
  implements Runnable
{
  private Context a;

  public dm(Context paramContext)
  {
    this.a = paramContext;
  }

  public final void run()
  {
    NotificationManager localNotificationManager;
    if (!a.a(this.a).u())
    {
      localNotificationManager = (NotificationManager)this.a.getSystemService("notification");
      if (localNotificationManager != null)
        break label31;
    }
    while (true)
    {
      return;
      label31: Notification localNotification = new Notification(2130837823, this.a.getString(2131428178), System.currentTimeMillis());
      localNotification.flags = 16;
      Intent localIntent = new Intent();
      localIntent.setClass(this.a, TrafficTabActivity.class);
      localIntent.setFlags(268435456);
      localIntent.putExtra("autoadjustnotify", true);
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 5, localIntent, 134217728);
      localNotification.setLatestEventInfo(this.a, this.a.getString(2131428122), this.a.getString(2131428178), localPendingIntent);
      localNotificationManager.notify(1008, localNotification);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.dm
 * JD-Core Version:    0.6.2
 */