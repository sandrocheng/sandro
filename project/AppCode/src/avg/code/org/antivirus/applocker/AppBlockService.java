package org.antivirus.applocker;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import org.antivirus.AvApplication;
import org.antivirus.core.b.c;

public class AppBlockService extends Service
{
  private final long a = 100L;
  private a b;

  private void a(boolean paramBoolean)
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
    this.b = new a();
    if ((AvApplication.mAvgFeatures != null) && (AvApplication.mAvgFeatures.d == c.c))
    {
      this.b.a(true);
      if (this.b.b(this))
        a(true);
    }
    while (true)
    {
      return;
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
    if (paramIntent != null);
    for (int i = paramIntent.getIntExtra("__SAC", 0); ; i = 0)
    {
      switch (i)
      {
      default:
      case 221:
      case 201:
      case 121:
      case 104:
      case 222:
      }
      while (true)
      {
        return;
        this.b.c(getApplicationContext());
        continue;
        this.b.a();
        continue;
        a(this.b.b(this));
        continue;
        if (this.b != null)
        {
          this.b.a(paramIntent.getStringExtra("__SAD"));
          continue;
          a.a(this, null);
          a(false);
          this.b.a(false);
          stopSelf();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.applocker.AppBlockService
 * JD-Core Version:    0.6.2
 */