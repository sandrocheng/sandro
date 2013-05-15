package com.avast.android.mobilesecurity;

import a.a.a.a.a.d;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;
import com.avast.android.generic.ah;
import com.avast.android.generic.g;
import com.avast.android.generic.internet.b;
import com.avast.android.generic.notification.AvastPendingIntent;
import com.avast.android.generic.notification.j;
import com.avast.android.generic.util.l;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.account.AccountReportService;
import com.avast.android.mobilesecurity.app.fileshield.FileShieldService;
import com.avast.android.mobilesecurity.app.filter.core.PhoneStateChangeReceiver;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.locking.core.AppLockingService;
import com.avast.android.mobilesecurity.app.trafficinfo.NetworkStatsService;
import com.avast.android.mobilesecurity.app.webshield.WebshieldService;
import com.avast.android.mobilesecurity.receiver.ScreenReceiver;
import com.avast.android.mobilesecurity.service.UpdateService;
import java.io.File;

public class Application extends com.avast.android.generic.Application
{
  private static s a;
  private static boolean b = false;
  private static String c = "";
  private t d;
  private j e;
  private com.avast.android.generic.util.s f;
  private com.avast.android.generic.a.a g;
  private com.avast.android.mobilesecurity.c.a h;

  public static Intent a(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("market://details?id=" + paramContext.getPackageName()));
    localIntent.setFlags(268435456);
    return localIntent;
  }

  public static void b(String paramString)
  {
    c = paramString;
  }

  public static void d(boolean paramBoolean)
  {
    b = paramBoolean;
  }

  public static boolean i()
  {
    return false;
  }

  public static String k()
  {
    return c;
  }

  public static boolean l()
  {
    return b;
  }

  public Object getSystemService(String paramString)
  {
    while (true)
    {
      Object localObject2;
      try
      {
        if ("databaseHelperService".equals(paramString))
        {
          if (a == null)
            a = new s(this);
          localObject2 = a;
          return localObject2;
        }
        if ((ae.class.toString().equals(paramString)) || (t.class.toString().equals(paramString)) || (ag.class.toString().equals(paramString)) || (ah.class.toString().equals(paramString)))
        {
          if (this.d == null);
          try
          {
            if (this.d == null)
              this.d = new t(getApplicationContext());
            localObject2 = this.d;
            continue;
          }
          finally
          {
          }
        }
      }
      finally
      {
      }
      if (j.class.toString().equals(paramString))
      {
        if (this.e == null)
          this.e = com.avast.android.mobilesecurity.d.a.b(getApplicationContext());
        localObject2 = this.e;
      }
      else if (com.avast.android.generic.util.s.class.toString().equals(paramString))
      {
        if (this.f == null)
          this.f = new com.avast.android.generic.util.s(getApplicationContext());
        localObject2 = this.f;
      }
      else if (com.avast.android.generic.a.a.class.toString().equals(paramString))
      {
        if (this.g == null)
          this.g = new com.avast.android.mobilesecurity.a.a(u.a(this), (t)ad.a(this, t.class));
        localObject2 = this.g;
      }
      else if (b.class.toString().equals(paramString))
      {
        if (this.h == null)
          this.h = new com.avast.android.mobilesecurity.c.a();
        localObject2 = this.h;
      }
      else
      {
        Object localObject4 = super.getSystemService(paramString);
        localObject2 = localObject4;
      }
    }
  }

  public void j()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("market://details?id=" + getPackageName()));
    localIntent.setFlags(268435456);
    AvastPendingIntent localAvastPendingIntent = new AvastPendingIntent(com.avast.android.generic.notification.s.a, localIntent);
    com.avast.android.generic.notification.a locala = new com.avast.android.generic.notification.a(2131427343L, getText(2131493842));
    locala.a(getText(2131493335), getText(2131493336), localAvastPendingIntent);
    ((j)ad.a(this, j.class)).a(locala);
  }

  public void onCreate()
  {
    boolean bool1 = true;
    super.onCreate();
    try
    {
      boolean bool3 = new File(Environment.getExternalStorageDirectory(), "avast-debug").exists();
      if (bool3)
      {
        bool2 = bool1;
        if ((l.a(this)) || (bool2))
        {
          m.a(bool1);
          m.a("avast!");
          m.d("Avast started, debug build: " + l.a(this) + ", ant: " + a());
          if ((a()) && (((t)ad.a(this, t.class)).p()))
            a.a.a.a.a.a.a().b(new d(getApplicationContext()).c()).a("http://ta-e.avast.com/eh.srv").a(getApplicationContext());
          g.a(this);
          this.e = com.avast.android.mobilesecurity.d.a.b(getApplicationContext());
          t localt = (t)ad.a(this, t.class);
          this.e.a();
          if (localt.b("eulaDone", false))
            this.e.b();
          PhoneStateChangeReceiver.a(this);
          if (localt.t() == 0L)
            localt.e(System.currentTimeMillis());
          if (localt.S())
            startService(new Intent(this, WebshieldService.class));
          if (localt.ac())
            startService(new Intent(this, FileShieldService.class));
          if ((localt.ab()) || (localt.ah()) || (localt.o()))
            AppLockingService.a(this);
          UpdateService.d(this);
          AccountReportService.a(this);
          if ((localt.aK()) && (NetworkStatsService.c()))
            NetworkStatsService.a(this, new Intent("com.avast.android.mobilesecurity.action.NETWORK_STATS_POLL"));
          if (localt.b(this).equals(""))
            localt.k(false);
          ScreenReceiver.a(getApplicationContext());
          return;
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        boolean bool2 = false;
        continue;
        bool1 = false;
        continue;
        bool2 = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.Application
 * JD-Core Version:    0.6.2
 */