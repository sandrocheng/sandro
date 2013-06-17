package com.avg.ui.general.c;

import android.app.NotificationManager;
import com.avg.toolkit.f.a;

class d extends e
{
  d(c paramc, NotificationManager paramNotificationManager, int paramInt)
  {
    super(paramc, paramNotificationManager, paramInt);
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
        a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.c.d
 * JD-Core Version:    0.6.2
 */