package com.avg.ui.general.c;

import android.app.NotificationManager;

abstract class e
  implements Runnable
{
  NotificationManager b;
  int c;

  public e(c paramc, NotificationManager paramNotificationManager, int paramInt)
  {
    this.b = paramNotificationManager;
    this.c = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.c.e
 * JD-Core Version:    0.6.2
 */