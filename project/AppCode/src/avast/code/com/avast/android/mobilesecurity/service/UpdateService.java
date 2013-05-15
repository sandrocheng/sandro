package com.avast.android.mobilesecurity.service;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.support.v4.a.p;
import android.text.format.Time;
import android.widget.Toast;
import com.avast.android.generic.ad;
import com.avast.android.generic.notification.AvastPendingIntent;
import com.avast.android.generic.notification.j;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.Application;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.app.settings.SettingsUpdatesActivity;
import com.avast.android.mobilesecurity.app.widget.WidgetControlProvider;
import com.avast.android.mobilesecurity.engine.af;
import com.avast.android.mobilesecurity.engine.ag;
import com.avast.android.mobilesecurity.engine.al;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.receiver.ConnectivityChangeReceiver;
import com.avast.android.mobilesecurity.t;
import java.util.Date;

public class UpdateService extends Service
  implements Handler.Callback
{
  private t a;
  private p b;
  private Looper c;
  private Handler d;
  private af e;
  private Handler f;
  private boolean g;
  private boolean h;
  private boolean i;

  private void a()
  {
    m.e("UpdateService: update failed due to non-working Internet connection");
    if (this.g)
      Toast.makeText(getApplicationContext(), 2131493838, 1).show();
    while (true)
    {
      return;
      i();
      a(true);
    }
  }

  public static void a(Context paramContext)
  {
    try
    {
      Intent localIntent = new Intent(paramContext, UpdateService.class);
      localIntent.putExtra("manual", true);
      paramContext.startService(localIntent);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(al paramal)
  {
    if ((this.e != null) && (this.e.b != null) && ((paramal == null) || ((paramal != null) && (paramal.d != this.e.b.d))))
      this.a.a("paAdRepDone", false);
  }

  private void a(boolean paramBoolean)
  {
    m.c("UpdateService: enableConnectivityChangeReciever(" + paramBoolean + ")");
    ((t)ad.a(getApplicationContext(), t.class)).p(paramBoolean);
    m.c("UpdateService: enableConnectivityChangeReciever(" + paramBoolean + ") - DONE");
  }

  private void b()
  {
    m.d("UpdateService: update was succesfull");
    if (this.g)
      Toast.makeText(getApplicationContext(), 2131493836, 1).show();
    ((j)ad.a(this, j.class)).a(2131427341L);
    h();
    d(getApplicationContext());
    this.d.post(new d(this));
    a(false);
    WidgetControlProvider.a(this);
    this.b.a(new Intent("com.avast.android.mobilesecurity.service.UPDATE_SUCCESSFUL"));
  }

  public static void b(Context paramContext)
  {
    try
    {
      Intent localIntent = new Intent(paramContext, UpdateService.class);
      localIntent.putExtra("force", true);
      paramContext.startService(localIntent);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void c()
  {
    m.e("UpdateService: apk is outdated");
    a(false);
    this.a.g(-1L);
    if (this.g)
      Toast.makeText(getApplicationContext(), 2131493842, 1).show();
    this.a.aF();
    l();
    WidgetControlProvider.a(this);
  }

  public static void c(Context paramContext)
  {
    try
    {
      Intent localIntent = new Intent(paramContext, UpdateService.class);
      localIntent.putExtra("manual", false);
      paramContext.startService(localIntent);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void d()
  {
    m.d("UpdateService: nothing to update");
    if (this.g)
      Toast.makeText(getApplicationContext(), 2131493837, 1).show();
    while (true)
    {
      this.b.a(new Intent("com.avast.android.mobilesecurity.service.UP_TO_DATE"));
      return;
      h();
      d(getApplicationContext());
      a(false);
    }
  }

  public static void d(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, UpdateService.class);
    localIntent.addCategory("com.avast.update.check");
    localIntent.putExtra("manual", false);
    PendingIntent localPendingIntent = PendingIntent.getService(paramContext, 0, localIntent, 268435456);
    t localt = (t)ad.a(paramContext, t.class);
    long l = localt.aE();
    if ((l > -1L) && (localt.aC()))
    {
      if (l < System.currentTimeMillis())
      {
        l = 180000L + System.currentTimeMillis();
        localt.g(l);
      }
      ((AlarmManager)paramContext.getSystemService("alarm")).set(1, l, localPendingIntent);
      if (m.a())
      {
        Time localTime = new Time();
        localTime.set(l);
        m.d("UpdateService: Next update check scheduled to: " + localTime);
      }
    }
    while (true)
    {
      return;
      m.e("UpdateService: No next update");
    }
  }

  private void e()
  {
    m.f("UpdateService: Unknown error");
    if (this.g)
      Toast.makeText(getApplicationContext(), 2131493839, 1).show();
    while (true)
    {
      return;
      h();
      d(getApplicationContext());
      a(false);
    }
  }

  public static void e(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, UpdateService.class);
    localIntent.addCategory("com.avast.update.outdatedCheck");
    localIntent.putExtra("outDatedCheck", false);
    PendingIntent localPendingIntent = PendingIntent.getService(paramContext, 0, localIntent, 268435456);
    al localal = i.a(paramContext, null);
    long l1;
    if (localal != null)
    {
      l1 = 1000L + (604800000L + localal.b.getTime());
      if (System.currentTimeMillis() >= l1)
        break label162;
    }
    label162: for (long l2 = 5000L + System.currentTimeMillis(); ; l2 = l1)
    {
      if (m.a())
      {
        Time localTime = new Time();
        localTime.set(l2);
        m.c("UpdateService: Next VPS outdated check scheduled to: " + localTime);
      }
      AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
      localAlarmManager.cancel(localPendingIntent);
      localAlarmManager.set(1, l2, localPendingIntent);
      return;
    }
  }

  private void f()
  {
    m.f("UpdateService: Invalid VPS");
    if (this.g)
      Toast.makeText(getApplicationContext(), 2131493840, 1).show();
    while (true)
    {
      return;
      h();
      d(getApplicationContext());
      a(false);
    }
  }

  public static boolean f(Context paramContext)
  {
    al localal = i.a(paramContext, null);
    if (localal != null)
    {
      long l = localal.b.getTime();
      if (m.a())
      {
        Time localTime = new Time();
        localTime.set(l);
        m.d("UpdateService: isVpsOutdated() VPS last update time: " + localTime);
      }
      if (System.currentTimeMillis() <= l + 604800000L);
    }
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void g()
  {
    m.f("UpdateService: No Internal space");
    if (this.g)
      Toast.makeText(getApplicationContext(), 2131493841, 1).show();
    while (true)
    {
      return;
      h();
      d(getApplicationContext());
      a(false);
    }
  }

  private void h()
  {
    if ((this.e != null) && (this.e.c > 0))
      this.a.g(System.currentTimeMillis() + 1000 * (60 * this.e.c));
    while (true)
    {
      return;
      i();
    }
  }

  private void i()
  {
    this.a.g(System.currentTimeMillis() + 1000 * (60 * i.a()));
  }

  private void j()
  {
    if ((this.e.a != ag.d) && (this.e.a != ag.g))
      ConnectivityChangeReceiver.a(this);
    if (this.e.a == ag.b)
      b();
    if (this.e.a == ag.a)
      d();
    if (this.e.a == ag.d)
      a();
    if (this.e.a == ag.c)
      c();
    if (this.e.a == ag.e)
      g();
    if (this.e.a == ag.f)
      f();
    if (this.e.a == ag.g)
      e();
    ((com.avast.android.generic.util.s)ad.a(this, com.avast.android.generic.util.s.class)).a(2131165223);
    k();
  }

  private void k()
  {
    u localu = u.a(this);
    String str;
    if (this.e.a == ag.b)
    {
      y localy = y.f;
      if (this.e.b != null)
      {
        str = this.e.b.a;
        localu.a(localy, null, str, null, null, null, null);
      }
    }
    while (true)
    {
      return;
      str = null;
      break;
      if (this.e.a == ag.a)
      {
        localu.a(y.h, null, null, null, null, null, null);
      }
      else
      {
        t localt = (t)ad.a(this, t.class);
        localu.a(y.g, null, null, null, null, Long.valueOf(localt.aE()), null);
      }
    }
  }

  private void l()
  {
    Intent localIntent = Application.a(this);
    AvastPendingIntent localAvastPendingIntent = new AvastPendingIntent(com.avast.android.generic.notification.s.a, localIntent);
    com.avast.android.generic.notification.a locala = new com.avast.android.generic.notification.a(2131427340L, getText(2131493843));
    locala.a(getText(2131493843), getText(2131493844), localAvastPendingIntent);
    ((j)ad.a(this, j.class)).a(locala);
  }

  private void m()
  {
    Intent localIntent = new Intent(this, SettingsUpdatesActivity.class);
    localIntent.putExtra("forceRunManualUpdate", true);
    AvastPendingIntent localAvastPendingIntent = new AvastPendingIntent(com.avast.android.generic.notification.s.a, localIntent);
    com.avast.android.generic.notification.a locala = new com.avast.android.generic.notification.a(2131427341L, getText(2131493845));
    locala.a(getText(2131493845), getText(2131493846), localAvastPendingIntent);
    ((j)ad.a(this, j.class)).a(locala);
  }

  public boolean handleMessage(Message paramMessage)
  {
    boolean bool = true;
    switch (paramMessage.what)
    {
    default:
      bool = false;
    case 1:
    case 0:
    }
    while (true)
    {
      return bool;
      j();
      continue;
      m.d("UpdateService: STOP SELF");
      stopSelf();
    }
  }

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    this.a = ((t)ad.a(this, t.class));
    HandlerThread localHandlerThread = new HandlerThread("UpdateService[helper]", 1);
    localHandlerThread.start();
    this.c = localHandlerThread.getLooper();
    this.d = new Handler(this.c);
    this.f = new Handler(this);
    this.b = p.a(this);
  }

  public void onDestroy()
  {
    this.c.quit();
    super.onDestroy();
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (paramIntent != null)
    {
      m.c("UpdateService: onStartCommand() - " + paramIntent.toString());
      if (!Application.i())
        break label59;
      ((Application)getApplication()).j();
    }
    while (true)
    {
      return 2;
      m.c("UpdateService: onStartCommand()");
      break;
      label59: if (paramIntent.hasExtra("outDatedCheck"))
      {
        this.d.post(new a(this));
      }
      else
      {
        boolean bool1;
        if ((paramIntent.hasExtra("manual")) && (paramIntent.getExtras().getBoolean("manual")))
        {
          bool1 = true;
          label112: this.g = bool1;
          if ((!paramIntent.hasExtra("force")) || (!paramIntent.getExtras().getBoolean("force")))
            break label234;
        }
        label234: for (boolean bool2 = true; ; bool2 = false)
        {
          this.h = bool2;
          boolean bool3 = paramIntent.hasExtra("connectivityChangedFailsafe");
          boolean bool4 = false;
          if (bool3)
          {
            boolean bool5 = paramIntent.getExtras().getBoolean("connectivityChangedFailsafe");
            bool4 = false;
            if (bool5)
              bool4 = true;
          }
          this.i = bool4;
          if (!this.i)
            break label240;
          Context localContext = getApplicationContext();
          this.d.post(new b(this, localContext));
          break;
          bool1 = false;
          break label112;
        }
        label240: if (!this.g)
        {
          i();
          d(getApplicationContext());
        }
        if ((this.h) || (this.g) || ((this.a.aC()) && (this.a.aD())))
        {
          this.d.post(new c(this));
        }
        else if ((this.a.aC()) && (!this.g))
        {
          m.c("UpdateService: no required connection is avalaible");
          i();
          a(true);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.service.UpdateService
 * JD-Core Version:    0.6.2
 */