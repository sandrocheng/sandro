package com.avg.ui.general.c;

import android.app.NotificationManager;
import android.os.Handler;
import android.os.Looper;
import com.avg.toolkit.f.a;

public class c
{
  public c(NotificationManager paramNotificationManager, int paramInt, long paramLong)
  {
    try
    {
      new Handler(Looper.getMainLooper()).postDelayed(new d(this, paramNotificationManager, paramInt), paramLong);
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
 * Qualified Name:     com.avg.ui.general.c.c
 * JD-Core Version:    0.6.2
 */