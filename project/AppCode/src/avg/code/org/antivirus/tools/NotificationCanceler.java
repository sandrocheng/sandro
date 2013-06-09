package org.antivirus.tools;

import android.app.NotificationManager;
import android.os.Handler;
import android.os.Looper;
import org.antivirus.core.Logger;

public class NotificationCanceler
{
  public static final int NOTIFICATION_ID_BATTERY = 11;
  public static final int NOTIFICATION_ID_C2DM = 991;
  public static final int NOTIFICATION_ID_LICENSE_ACTIVATION = 2002;
  public static final int NOTIFICATION_ID_LICENSE_EXPIRED = 13;
  public static final int NOTIFICATION_ID_SCAN_NEW_INSTALLED_PACKAGE = 15;
  public static final int NOTIFICATION_ID_SCHEDULE_SCAN = 14;
  public static final int NOTIFICATION_ID_TRAFFIC = 12;
  public static final int NOTIFICATION_ID_VERSION_UPDATE = 2001;

  public NotificationCanceler(NotificationManager paramNotificationManager, int paramInt, long paramLong)
  {
    try
    {
      new Handler(Looper.getMainLooper()).postDelayed(new NotificationCanceler.1(this, paramNotificationManager, paramInt, paramLong), paramLong);
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
 * Qualified Name:     org.antivirus.tools.NotificationCanceler
 * JD-Core Version:    0.6.2
 */