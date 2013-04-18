package com.keniu.security.f;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.keniu.security.MoSecurityApplication;
import com.keniu.security.main.MainActivity;
import com.keniu.security.malware.d;
import com.keniu.security.util.at;
import java.io.File;

final class e
  implements Runnable
{
  private e(c paramc, byte paramByte)
  {
  }

  public final void run()
  {
    if (this.a.a("com.ijinshan.duba"))
      c.a(this.a).getLooper().quit();
    while (true)
    {
      return;
      try
      {
        boolean bool1 = at.c(MoSecurityApplication.a());
        if (!bool1)
        {
          c.d(this.a).postDelayed(this, 7200000L);
          continue;
        }
        if (System.currentTimeMillis() - c.b(this.a).getLong("check_time", 0L) < 259200000L)
        {
          boolean bool5 = at.b(MoSecurityApplication.a());
          if (!bool5)
          {
            c.d(this.a).postDelayed(this, 7200000L);
            continue;
          }
        }
        boolean bool2 = c.a(this.a, "http://dl.sj.ijinshan.com/update2/db_version.ini", null);
        if (!bool2)
        {
          c.d(this.a).postDelayed(this, 7200000L);
          continue;
        }
        g localg1 = new g(new File(c.c(this.a) + "db_version.ini"));
        String str1 = localg1.a("version");
        String str2 = c.b(this.a).getString("version", "0");
        int i = Integer.valueOf(str1).intValue();
        int j = Integer.valueOf(str2).intValue();
        if (i <= j)
        {
          c.d(this.a).postDelayed(this, 7200000L);
          continue;
        }
        boolean bool3 = c.a(this.a, localg1.a("url"), "db_info.ini");
        if (!bool3)
        {
          c.d(this.a).postDelayed(this, 7200000L);
          continue;
        }
        boolean bool4 = localg1.a("md5").equalsIgnoreCase(d.a(new File(c.c(this.a) + "db_info.ini")));
        if (!bool4)
        {
          c.d(this.a).postDelayed(this, 7200000L);
          continue;
        }
        g localg2 = new g(new File(c.c(this.a) + "db_info.ini"));
        SharedPreferences.Editor localEditor = c.b(this.a).edit();
        localEditor.putLong("check_time", System.currentTimeMillis());
        localEditor.putString("version", str1);
        localEditor.putString("notification_title", localg2.a("notification_title"));
        localEditor.putString("notification_content", localg2.a("notification_content"));
        localEditor.putString("dialog_title", localg2.a("dialog_title"));
        localEditor.putString("dialog_content", localg2.a("dialog_content"));
        localEditor.putString("dialog_btn_positive", localg2.a("dialog_btn_positive"));
        localEditor.putString("dialog_btn_negetive", localg2.a("dialog_btn_negetive"));
        localEditor.putString("url", localg2.a("url"));
        localEditor.commit();
        Intent localIntent = new Intent(MoSecurityApplication.a(), MainActivity.class);
        localIntent.putExtra("dbupdate", true);
        localIntent.setFlags(268435456);
        PendingIntent localPendingIntent = PendingIntent.getActivity(MoSecurityApplication.a(), 8, localIntent, 268435456);
        NotificationManager localNotificationManager = (NotificationManager)MoSecurityApplication.a().getSystemService("notification");
        Notification localNotification = new Notification(2130837823, c.b(this.a).getString("notification_title", ""), System.currentTimeMillis());
        localNotification.flags = 16;
        localNotification.setLatestEventInfo(MoSecurityApplication.a(), c.b(this.a).getString("notification_title", ""), c.b(this.a).getString("notification_content", ""), localPendingIntent);
        localNotificationManager.notify(153, localNotification);
        c.d(this.a).postDelayed(this, 7200000L);
      }
      catch (Exception localException)
      {
        c.d(this.a).postDelayed(this, 7200000L);
      }
      finally
      {
        c.d(this.a).postDelayed(this, 7200000L);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.f.e
 * JD-Core Version:    0.6.2
 */