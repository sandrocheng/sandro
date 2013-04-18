package com.keniu.security.service;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Looper;
import com.keniu.security.main.MainActivity;

public final class s
  implements Runnable
{
  private static final int a = 28;
  private Context b;

  public s(Context paramContext)
  {
    this.b = paramContext;
  }

  public final void run()
  {
    NotificationManager localNotificationManager;
    if (this.b.getSharedPreferences("com.keniu.security.main.main_manager", 0).getString("495param3", "no_value").equals("no_value"))
    {
      localNotificationManager = (NotificationManager)this.b.getSystemService("notification");
      if (localNotificationManager != null);
    }
    while (true)
    {
      return;
      Intent localIntent = new Intent(this.b, MainActivity.class);
      localIntent.putExtra("RECOMMEND_EXAMINE_NOTIFY", true);
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.b, 6, localIntent, 0);
      String str1 = this.b.getString(2131429389);
      String str2 = this.b.getString(2131427865);
      Notification localNotification = new Notification(2130838024, str1, System.currentTimeMillis());
      localNotification.flags = 16;
      localNotification.setLatestEventInfo(this.b, str2, str1, localPendingIntent);
      localNotificationManager.notify(28, localNotification);
      Looper localLooper = Looper.myLooper();
      if (localLooper != null)
        localLooper.quit();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.s
 * JD-Core Version:    0.6.2
 */