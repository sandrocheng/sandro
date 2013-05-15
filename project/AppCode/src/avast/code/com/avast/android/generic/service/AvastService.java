package com.avast.android.generic.service;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Process;
import com.avast.android.generic.b.l;
import com.avast.android.generic.h.f;
import com.avast.android.generic.h.i;
import com.avast.android.generic.h.j;
import com.avast.android.generic.h.k;
import com.avast.android.generic.h.o;
import com.avast.android.generic.internet.HttpSender;
import com.avast.android.generic.util.ax;
import com.avast.android.generic.util.bc;
import com.avast.android.generic.util.t;
import com.avast.android.generic.util.z;
import java.util.List;

public abstract class AvastService extends Service
{
  private Thread a = null;
  private String b = null;
  private com.avast.android.generic.f.a.b c = null;
  private HttpSender d = null;
  private o e = null;
  private l f = null;
  private final Handler g = new Handler();
  private boolean h = false;
  private int i = 0;
  private Object j = new Object();
  private boolean k = false;

  private void a(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      String str = paramIntent.getAction();
      Bundle localBundle = paramIntent.getExtras();
      if (str != null)
      {
        ax.a(this);
        t.a("AvastGeneric", getApplicationContext(), "Service is performing action " + str);
        new Thread(new a(this, str, paramIntent, localBundle)).start();
      }
    }
    while (true)
    {
      return;
      ax.a(this);
      new Thread(new c(this, paramIntent)).start();
    }
  }

  public static boolean a(Context paramContext)
  {
    if (paramContext.checkPermission("android.permission.WRITE_SECURE_SETTINGS", Process.myPid(), Process.myUid()) == 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean b(Context paramContext)
  {
    if (paramContext.checkPermission("android.permission.SEND_SMS", Process.myPid(), Process.myUid()) == 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean c(Context paramContext)
  {
    return z.d(paramContext);
  }

  private void o()
  {
    long l1 = System.currentTimeMillis();
    t.a("AvastGenericSc", "Destroy syncing...");
    synchronized (this.j)
    {
      this.k = true;
      stopSelf();
      long l2 = System.currentTimeMillis();
      t.a("AvastGenericSc", "Sync for destroy took " + (l2 - l1) + " ms");
    }
    try
    {
      c();
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          if (this.f != null)
          {
            this.f.b();
            this.f = null;
          }
          try
          {
            label87: if (this.c != null)
            {
              this.c.e();
              this.c = null;
            }
            try
            {
              label106: if (this.d != null)
              {
                this.d.e();
                this.d = null;
              }
              try
              {
                label125: if (this.e != null)
                {
                  this.e.b();
                  this.e = null;
                }
                try
                {
                  label144: ax.a();
                  label147: long l3 = System.currentTimeMillis();
                  t.a("AvastGenericSc", "Service destroy took " + (l3 - l1) + " ms");
                  return;
                  localObject2 = finally;
                  throw localObject2;
                  localException1 = localException1;
                }
                catch (Exception localException6)
                {
                  break label147;
                }
              }
              catch (Exception localException5)
              {
                break label144;
              }
            }
            catch (Exception localException4)
            {
              break label125;
            }
          }
          catch (Exception localException3)
          {
            break label106;
          }
        }
      }
      catch (Exception localException2)
      {
        break label87;
      }
    }
  }

  public abstract com.avast.android.generic.b.d a(String paramString, com.avast.android.generic.b.h paramh, boolean paramBoolean1, boolean paramBoolean2);

  public abstract void a(com.avast.a.a.a.h paramh);

  public void a(com.avast.android.generic.b.a parama)
  {
    if (this.f != null)
      this.f.a(parama);
  }

  public void a(com.avast.android.generic.b.a parama, boolean paramBoolean)
  {
    if (this.f != null)
      this.f.a(parama, paramBoolean);
  }

  protected abstract void a(o paramo);

  public void a(com.avast.android.generic.internet.e parame, com.avast.android.generic.b.a parama, boolean paramBoolean)
  {
    if (this.d != null)
      this.d.a(parame, parama, paramBoolean);
  }

  public void a(bc parambc, com.avast.android.generic.f.a.a parama, boolean paramBoolean)
  {
    if (this.c != null)
      this.c.a(parambc, parama, paramBoolean);
    while (true)
    {
      return;
      if (parama != null)
        try
        {
          parama.a(1);
        }
        catch (Exception localException)
        {
        }
    }
  }

  public final void a(Runnable paramRunnable)
  {
    if (Thread.currentThread() != this.a)
      this.g.post(paramRunnable);
    while (true)
    {
      return;
      paramRunnable.run();
    }
  }

  protected abstract void a(String paramString, Bundle paramBundle);

  public void a(String paramString, List paramList, com.avast.android.generic.f.a.a parama, boolean paramBoolean)
  {
    if (this.c != null)
      this.c.a(paramString, paramList, parama, paramBoolean);
    while (true)
    {
      return;
      if (parama != null)
        try
        {
          parama.a(1);
        }
        catch (Exception localException)
        {
        }
    }
  }

  public void a(boolean paramBoolean)
  {
    b(paramBoolean);
  }

  protected abstract boolean a();

  public abstract boolean a(String paramString1, String paramString2);

  public void b()
  {
    a(new e(this));
  }

  public void b(String paramString, Bundle paramBundle)
  {
    if (this.e != null)
      this.e.a(paramString, paramBundle);
  }

  public abstract void b(boolean paramBoolean);

  protected abstract void c();

  protected abstract void d();

  protected void e()
  {
    t.a("AvastGeneric", getApplicationContext(), "Service setup");
    this.a = Thread.currentThread();
    if (this.b == null);
    try
    {
      CharSequence localCharSequence2 = getPackageManager().getApplicationLabel(getPackageManager().getApplicationInfo(getPackageName(), 128));
      localCharSequence1 = localCharSequence2;
      if (localCharSequence1 != null)
      {
        this.b = localCharSequence1.toString();
        if (this.c == null)
          this.c = new com.avast.android.generic.f.a.b(this);
        if (this.d == null)
          this.d = new HttpSender(this);
        if (this.f == null)
          this.f = new l(this);
        if (this.e == null)
        {
          this.e = new o(this);
          this.e.a("com.avast.android.generic.action.C2DM_ERROR", com.avast.android.generic.h.e.class);
          this.e.a("com.avast.android.generic.action.ACTION_C2DM_REMOVE", com.avast.android.generic.h.g.class);
          this.e.a("com.avast.android.generic.action.ACTION_C2DM_SUCCESS", i.class);
          this.e.a("com.avast.android.generic.action.ACTION_C2DM_MESSAGE", f.class);
          this.e.a("com.avast.android.generic.action.C2DM_DISABLE_SUITE", com.avast.android.generic.h.c.class);
          this.e.a("com.avast.android.generic.action.C2DM_ENABLE_SUITE", com.avast.android.generic.h.d.class);
          this.e.a("com.avast.android.generic.service.action.SMS_RECEIVED", k.class);
          this.e.a("com.avast.android.mobilesecurity.app.account.ACCOUNT_CONNECTED", com.avast.android.generic.h.a.class);
          this.e.a("com.avast.android.mobilesecurity.app.account.ACCOUNT_DISCONNECTED", com.avast.android.generic.h.b.class);
          this.e.a("com.avast.android.mobilesecurity.app.account.PUSH_ACCOUNT_COMMUNICATION", j.class);
          this.e.a("com.avast.android.generic.action.REQUEST_C2DM", com.avast.android.generic.h.h.class);
          a(this.e);
        }
        d();
        t.a("AvastGeneric", getApplicationContext(), "Service setup succeeded");
        return;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        t.a("AvastGeneric", getApplicationContext(), "Service finds no name for app package found", localNameNotFoundException);
        CharSequence localCharSequence1 = null;
        continue;
        this.b = "N/A";
      }
    }
  }

  public void f()
  {
    h();
    b("com.avast.android.mobilesecurity.app.account.PUSH_ACCOUNT_COMMUNICATION", null);
  }

  public void g()
  {
    i();
  }

  public abstract void h();

  public abstract void i();

  public abstract boolean j();

  public abstract boolean k();

  public abstract int l();

  public abstract void m();

  public abstract void n();

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    com.avast.android.generic.g.a(this);
    t.a("AvastGeneric", getApplicationContext(), "Service created");
  }

  public void onDestroy()
  {
    try
    {
      o();
      t.a("AvastGeneric", getApplicationContext(), "Service destroyed");
      label16: super.onDestroy();
      return;
    }
    catch (Exception localException)
    {
      break label16;
    }
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    this.h = a(this);
    a(paramIntent);
  }

  public boolean onUnbind(Intent paramIntent)
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.service.AvastService
 * JD-Core Version:    0.6.2
 */