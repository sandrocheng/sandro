package com.keniu.security.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import com.keniu.security.protection.ui.PreventTheftFirstVisitActivity;
import com.keniu.security.protection.ui.PreventTheftMainActivity;
import com.keniu.security.protection.ui.ag;

public final class r
  implements Runnable
{
  private static final int a = 333;
  private Context b;

  public r(Context paramContext)
  {
    this.b = paramContext;
  }

  public final void run()
  {
    NotificationManager localNotificationManager;
    if (!ag.g(this.b))
    {
      localNotificationManager = (NotificationManager)this.b.getSystemService("notification");
      if (localNotificationManager != null);
    }
    while (true)
    {
      return;
      Intent localIntent = new Intent();
      Notification localNotification;
      if (ag.e(this.b))
      {
        localIntent.setClass(this.b, PreventTheftFirstVisitActivity.class);
        PendingIntent localPendingIntent = PendingIntent.getActivity(this.b, 7, localIntent, 0);
        String str1 = this.b.getString(2131429391);
        String str2 = this.b.getString(2131429390);
        localNotification = new Notification(2130838024, str1, System.currentTimeMillis());
        localNotification.flags = 16;
        localNotification.setLatestEventInfo(this.b, str2, str1, localPendingIntent);
      }
      try
      {
        localNotificationManager.notify(333, localNotification);
        label139: Looper localLooper = Looper.myLooper();
        if (localLooper == null)
          continue;
        localLooper.quit();
        continue;
        localIntent.setClass(this.b, PreventTheftMainActivity.class);
      }
      catch (Exception localException)
      {
        break label139;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.r
 * JD-Core Version:    0.6.2
 */