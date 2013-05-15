package com.avast.android.mobilesecurity.app.locking.core;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask.Status;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.IBinder;
import android.os.SystemClock;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.locking.BlockAvastPasswordActivity;
import com.avast.android.mobilesecurity.app.scanner.o;
import com.avast.android.mobilesecurity.e.c;
import com.avast.android.mobilesecurity.t;

public class AppLockingService extends Service
{
  public static String a = "extra_toggle_onoff";
  private static int b = 5000;
  private d c;
  private Handler d;
  private g e;
  private boolean f;
  private f g;
  private c h;
  private boolean i;
  private com.avast.android.mobilesecurity.app.scanner.h j;
  private o k;
  private Handler l;

  private App a(String paramString)
  {
    return App.a(getContentResolver(), paramString);
  }

  public static void a(Context paramContext)
  {
    paramContext.startService(new Intent(paramContext, AppLockingService.class));
  }

  private void a(App paramApp)
  {
    t localt = (t)ad.a(getApplicationContext(), t.class);
    if ((paramApp.f != null) && (paramApp.f.contains(".AppWidgetPickActivity")))
      m.b("ApplockingService", "Skip blocking adding app widget.");
    label203: label212: 
    while (true)
    {
      return;
      if ((localt.ag()) && (localt.ah()))
      {
        m.b("ApplockingService", "Realtime shield enabled, starting scan...");
        if (this.j.a(paramApp.e))
          break label203;
        if (!this.h.b(paramApp))
        {
          this.h.b();
          this.h.b(paramApp);
        }
      }
      while (true)
      {
        if (((!paramApp.e.equals(App.b)) && (!paramApp.e.equals(App.a))) || (!".UninstallerActivity".equals(paramApp.f)) || (!localt.o()) || (!localt.aY()))
          break label212;
        m.b("ApplockingService", "Lock uninstall of: " + paramApp.h);
        if (h.a(paramApp))
          break;
        BlockAvastPasswordActivity.call(getApplicationContext(), paramApp);
        break;
        m.b("ApplockingService", "Application is already allowed, skipping scan.");
      }
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    this.h = new c();
    this.j = com.avast.android.mobilesecurity.app.scanner.h.a();
    this.l = new Handler();
    this.k = new o(this, this.l);
    this.g = new f(this, this, this.k, this.l);
    this.g.setPriority(1);
    this.g.start();
  }

  public void onDestroy()
  {
    if ((this.c != null) && (this.c.getStatus() == AsyncTask.Status.RUNNING))
      this.c.cancel(true);
    if ((this.d != null) && (this.e != null))
      this.d.removeCallbacks(this.e);
    if (this.g != null)
    {
      this.g.interrupt();
      this.g = null;
    }
    if (((t)ad.a(getApplicationContext(), t.class)).ab())
    {
      startService(new Intent(this, AppLockingService.class));
      super.onDestroy();
    }
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    int m = 1;
    t localt = (t)ad.a(getApplicationContext(), t.class);
    this.f = localt.ab();
    if ((this.f) || ((localt.ag()) && (localt.ah())) || ((localt.o()) && (localt.aY())))
    {
      int i1 = m;
      this.i = i1;
      if ((this.i) && (Build.VERSION.SDK_INT < 11))
      {
        AlarmManager localAlarmManager = (AlarmManager)getSystemService("alarm");
        PendingIntent localPendingIntent = PendingIntent.getService(this, 0, new Intent(this, AppLockingService.class), 134217728);
        localAlarmManager.set(3, SystemClock.elapsedRealtime() + b, localPendingIntent);
      }
      if (!this.i)
        break label384;
      if ((!((ae)ad.a(this, ae.class)).n()) || (Build.VERSION.SDK_INT >= 16))
        break label269;
      if ((this.d != null) && (this.e != null))
        this.d.removeCallbacks(this.e);
      if ((this.c == null) || (this.c.getStatus() == AsyncTask.Status.FINISHED))
        this.c = new d(this, getApplicationContext());
      if (this.c.getStatus() == AsyncTask.Status.PENDING)
      {
        m.c("ApplockingService: turning on logcat handler");
        b.a(this.c, new Void[0]);
      }
    }
    while (true)
    {
      return m;
      int i2 = 0;
      break;
      label269: if ((this.c != null) && (this.c.getStatus() == AsyncTask.Status.RUNNING))
        this.c.cancel(m);
      if ((this.d != null) && (this.e != null))
        this.d.removeCallbacks(this.e);
      if (this.d == null)
        this.d = new Handler();
      if (this.e == null)
      {
        m.c("ApplockingService: turning on task handler");
        this.e = new g(this, this);
      }
      this.d.post(this.e);
      continue;
      label384: m.c("ApplockingService: request cancel LogScannerTask");
      if ((this.c != null) && (this.c.getStatus() == AsyncTask.Status.RUNNING))
        this.c.cancel(m);
      if ((this.d != null) && (this.e != null))
        this.d.removeCallbacks(this.e);
      stopSelf();
      int n = 2;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.locking.core.AppLockingService
 * JD-Core Version:    0.6.2
 */