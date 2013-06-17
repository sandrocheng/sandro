package com.antivirus.antitheft;

import android.content.Context;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.antivirus.core.b;
import java.util.List;

public class a
  implements com.avg.toolkit.e
{
  private static PowerManager.WakeLock c;
  private static final Object d = a.class;
  Context a;
  b b;
  private s e = new s();
  private ab f;
  private k g;
  private com.avg.toolkit.UID.a h;

  public a(Context paramContext, b paramb, com.avg.toolkit.UID.a parama)
  {
    this.a = paramContext.getApplicationContext();
    this.b = paramb;
    this.h = parama;
  }

  public static void a(Context paramContext)
  {
    synchronized (d)
    {
      if (c == null)
        c = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, a.class.getName());
      c.acquire(360000L);
      return;
    }
  }

  private void c()
  {
    try
    {
      com.google.android.a.c.a(this.a);
      com.google.android.a.c.b(this.a);
      if (!com.google.android.a.c.f(this.a))
        com.google.android.a.c.a(this.a, new String[] { "804293759086" });
    }
    catch (Exception localException)
    {
    }
  }

  public void a()
  {
    this.e.c(this.a);
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(com.avg.toolkit.e.a parama)
  {
    c();
  }

  public void a(List paramList)
  {
    paramList.add(e.class);
    paramList.add(c.class);
    paramList.add(f.class);
    paramList.add(d.class);
    paramList.add(i.class);
    paramList.add(j.class);
    paramList.add(g.class);
    paramList.add(h.class);
  }

  public void a(boolean paramBoolean)
  {
    this.e.a(this.a);
    this.e.c(this.a);
    c();
    this.f = new ab();
    this.f.a(this.a, this.b);
    this.g = new k(this.b, this.h);
  }

  public int b()
  {
    return 9000;
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
      case 9001:
      case 9002:
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
        a();
      }
    }
  }

  public void b(com.avg.toolkit.e.a parama)
  {
  }

  public void c(Bundle paramBundle)
  {
    paramBundle.remove("__SAC");
    if (paramBundle.containsKey("stopshout"))
      this.g.a();
    while (true)
    {
      return;
      if (!paramBundle.containsKey("fromsms"))
        this.g.b(paramBundle, this.a);
      else
        this.g.a(paramBundle, this.a);
    }
  }

  public void onDestroy()
  {
    if (this.e != null)
    {
      this.e.b(this.a);
      this.e = null;
    }
    if (this.f != null)
    {
      this.f.a();
      this.f = null;
    }
    if (this.g != null)
    {
      this.g.a();
      this.g = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.a
 * JD-Core Version:    0.6.2
 */