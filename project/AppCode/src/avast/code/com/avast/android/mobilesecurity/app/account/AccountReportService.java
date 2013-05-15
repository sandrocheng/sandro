package com.avast.android.mobilesecurity.app.account;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import android.text.format.Time;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.t;

public class AccountReportService extends Service
{
  private t a;

  public static void a(Context paramContext)
  {
    ae localae = (ae)ad.a(paramContext, ae.class);
    if ((localae.A()) && (!TextUtils.isEmpty(localae.x())))
    {
      int i = 1000 * (60 * localae.B());
      PendingIntent localPendingIntent = PendingIntent.getService(paramContext, 0, new Intent(paramContext, AccountReportService.class), 134217728);
      ((AlarmManager)paramContext.getSystemService("alarm")).setRepeating(2, 0L, i, localPendingIntent);
      Time localTime = new Time();
      localTime.set(System.currentTimeMillis());
      m.b("AvastAccountReportService", "Next status report scheduled to " + localTime + ", and repeating after " + i / 60 / 1000 + " minutes.");
    }
    while (true)
    {
      return;
      m.b("AvastAccountReportService", "Next status report not scheduled, reporting is disabled or AUID is empty.");
      b(paramContext);
    }
  }

  public static void b(Context paramContext)
  {
    ((AlarmManager)paramContext.getSystemService("alarm")).cancel(PendingIntent.getService(paramContext, 0, new Intent(paramContext, AccountReportService.class), 134217728));
    m.b("AvastAccountReportService", "Cancelling repeating status reporting.");
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    this.a = ((t)ad.a(this, t.class));
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    m.b("AvastAccountReportService", "onStartCommand() - " + paramIntent.toString());
    if ((!this.a.A()) || (TextUtils.isEmpty(this.a.x())))
      b(this);
    while (true)
    {
      return 2;
      new b(this.a, this).execute(new Object[0]);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.account.AccountReportService
 * JD-Core Version:    0.6.2
 */