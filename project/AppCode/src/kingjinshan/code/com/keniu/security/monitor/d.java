package com.keniu.security.monitor;

import android.app.ActivityManager;
import android.content.Context;

public final class d
  implements b
{
  private static d a = null;
  private e b = null;
  private ActivityManager c = null;
  private Context d = null;

  public static d a()
  {
    try
    {
      if (a == null)
        a = new d();
      d locald = a;
      return locald;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if (paramInt == a.p)
      c();
    while (true)
    {
      return 0;
      if (paramInt == a.o)
        b();
    }
  }

  public final void a(Context paramContext)
  {
    try
    {
      if (this.d == null)
      {
        this.d = paramContext;
        a locala = a.a();
        locala.a(a.o, this, 1342177279);
        locala.a(a.p, this, 1342177279);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void b()
  {
    try
    {
      if ((this.b == null) && (this.d != null))
      {
        if (this.c == null)
          this.c = ((ActivityManager)this.d.getSystemService("activity"));
        this.b = new e(this);
        this.b.start();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void c()
  {
    try
    {
      if (this.b != null)
      {
        this.b.a();
        this.b = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.monitor.d
 * JD-Core Version:    0.6.2
 */