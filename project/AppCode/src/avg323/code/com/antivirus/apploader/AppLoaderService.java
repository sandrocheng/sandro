package com.antivirus.apploader;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

public class AppLoaderService extends Service
{
  public static long a()
  {
    long l1 = 0L;
    new Date();
    try
    {
      Calendar localCalendar = Calendar.getInstance();
      long l2 = System.currentTimeMillis();
      localCalendar.setTime(new Date(l2));
      localCalendar.set(11, 2);
      localCalendar.set(12, 0);
      localCalendar.set(13, 0);
      localCalendar.set(14, 0);
      if (l2 > localCalendar.getTimeInMillis())
        localCalendar.set(5, 1 + localCalendar.get(5));
      l1 = Math.round(9000000.0D * new Random(l2).nextDouble()) + localCalendar.getTimeInMillis();
      new Date(l1);
      label126: return l1;
    }
    catch (Exception localException)
    {
      break label126;
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    new a().a(this).start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.apploader.AppLoaderService
 * JD-Core Version:    0.6.2
 */