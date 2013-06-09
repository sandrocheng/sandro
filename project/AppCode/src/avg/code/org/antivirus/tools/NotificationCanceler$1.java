package org.antivirus.tools;

import android.app.NotificationManager;
import org.antivirus.core.Logger;

class NotificationCanceler$1 extends NotificationCanceler.MyRunnable
{
  NotificationCanceler$1(NotificationCanceler paramNotificationCanceler, NotificationManager paramNotificationManager, int paramInt, long paramLong)
  {
    super(paramNotificationCanceler, paramNotificationManager, paramInt, paramLong);
  }

  public void run()
  {
    try
    {
      this.b.cancel(this.c);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tools.NotificationCanceler.1
 * JD-Core Version:    0.6.2
 */