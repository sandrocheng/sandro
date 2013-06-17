package com.avg.tuneup;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.avg.toolkit.e;
import com.avg.tuneup.traffic.s;
import java.util.List;

public class i
  implements e
{
  Context a;
  private com.avg.tuneup.battery.a b;
  private s c;

  public i(Context paramContext)
  {
    this.a = paramContext;
    new j(paramContext);
    this.b = new com.avg.tuneup.battery.a();
    this.b.a(this.a, true);
    if (s.e())
    {
      this.c = s.a(this.a);
      this.c.k();
    }
  }

  void a()
  {
    if (s.e())
    {
      if (this.c == null)
        this.c = s.a(this.a);
      this.c.m();
    }
  }

  public void a(Bundle paramBundle)
  {
    int i = -1;
    if (paramBundle != null);
    try
    {
      int j = paramBundle.getInt("alarm_code2", -1);
      i = j;
      switch (i)
      {
      default:
        com.avg.toolkit.f.a.a();
        return;
      case 1:
      case 2:
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        continue;
        c();
        continue;
        d();
      }
    }
  }

  public void a(com.avg.toolkit.e.a parama)
  {
  }

  public void a(List paramList)
  {
  }

  public void a(boolean paramBoolean)
  {
  }

  public int b()
  {
    return 11000;
  }

  public void b(Bundle paramBundle)
  {
    int i = -1;
    if (paramBundle != null);
    try
    {
      int j = paramBundle.getInt("__SAC2", -1);
      i = j;
      switch (i)
      {
      default:
        com.avg.toolkit.f.a.a();
        return;
      case 3:
      case 1:
      case 2:
      case 5:
      case 4:
      case 7:
      case 6:
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        continue;
        c(paramBundle);
        continue;
        e(paramBundle);
        continue;
        g(paramBundle);
        continue;
        e();
        continue;
        a();
        continue;
        d(paramBundle);
        continue;
        f(paramBundle);
      }
    }
  }

  public void b(com.avg.toolkit.e.a parama)
  {
  }

  public void c()
  {
    if (this.c == null)
      this.c = s.a(this.a);
    this.c.i();
  }

  public void c(Bundle paramBundle)
  {
    this.b.a(this.a, paramBundle);
  }

  public void d()
  {
    if (this.c == null)
      this.c = s.a(this.a);
    this.c.j();
  }

  public void d(Bundle paramBundle)
  {
    this.b.b(this.a, paramBundle);
  }

  public void e()
  {
    if (s.e())
    {
      if (this.c == null)
        this.c = s.a(this.a);
      this.c.i();
    }
  }

  public void e(Bundle paramBundle)
  {
    boolean bool = paramBundle.getBoolean("__SAD", false);
    this.b.a(this.a, bool);
  }

  public void f(Bundle paramBundle)
  {
    boolean bool = paramBundle.getBoolean("__SAD", false);
    this.b.b(this.a, bool);
  }

  public void g(Bundle paramBundle)
  {
    ComponentName localComponentName = new ComponentName(this.a, ShutDownReceiver.class);
    PackageManager localPackageManager = this.a.getPackageManager();
    boolean bool = paramBundle.getBoolean("__SAD", false);
    if (this.c == null)
      this.c = s.a(this.a);
    if (bool)
    {
      localPackageManager.setComponentEnabledSetting(localComponentName, 1, 1);
      this.c.k();
    }
    while (true)
    {
      return;
      localPackageManager.setComponentEnabledSetting(localComponentName, 2, 1);
      this.c.n();
    }
  }

  public void onDestroy()
  {
    try
    {
      if (this.b != null)
      {
        this.b.a(this.a, false);
        this.b.b(this.a, false);
        this.b = null;
      }
      if (this.c != null)
      {
        this.c.a();
        this.c = null;
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.i
 * JD-Core Version:    0.6.2
 */