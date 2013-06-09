package org.antivirus.tools;

import android.app.NotificationManager;

abstract class NotificationCanceler$MyRunnable
  implements Runnable
{
  NotificationManager b;
  int c;

  public NotificationCanceler$MyRunnable(NotificationCanceler paramNotificationCanceler, NotificationManager paramNotificationManager, int paramInt, long paramLong)
  {
    this.b = paramNotificationManager;
    this.c = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tools.NotificationCanceler.MyRunnable
 * JD-Core Version:    0.6.2
 */