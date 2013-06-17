package com.antivirus.applocker;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.avg.toolkit.e.a;
import com.avg.toolkit.e.e;

public class AppBlockService extends Service
{
  private final long a = 100L;
  private c b;

  public void a(boolean paramBoolean)
  {
    AlarmManager localAlarmManager = (AlarmManager)getSystemService("alarm");
    Intent localIntent = new Intent(this, AppBlockService.class);
    localIntent.putExtra("__SAC", 221);
    PendingIntent localPendingIntent = PendingIntent.getService(this, 0, localIntent, 0);
    localAlarmManager.cancel(localPendingIntent);
    if (paramBoolean)
      localAlarmManager.setRepeating(1, 100L + System.currentTimeMillis(), 100L, localPendingIntent);
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    this.b = new c();
    if ((e.a() != null) && (e.a().d == com.avg.toolkit.e.c.c) && (this.b.b(this)))
    {
      this.b.a(true);
      a(true);
    }
    while (true)
    {
      return;
      a(false);
      stopSelf();
    }
  }

  public void onDestroy()
  {
    a(false);
    super.onDestroy();
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    if (!this.b.b(this))
    {
      a(false);
      stopSelf();
      return;
    }
    if (paramIntent != null);
    for (int i = paramIntent.getIntExtra("__SAC", 0); ; i = 0)
      switch (i)
      {
      default:
        break;
      case 104:
        if (this.b == null)
          break;
        this.b.a(paramIntent.getStringExtra("__SAD"));
        break;
      case 221:
        this.b.c(getApplicationContext());
        break;
      case 201:
        this.b.f(this);
        break;
      case 121:
        a(this.b.b(this));
        break;
      case 222:
        this.b.a(this, null);
        a(false);
        this.b.a(false);
        stopSelf();
        break;
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.AppBlockService
 * JD-Core Version:    0.6.2
 */