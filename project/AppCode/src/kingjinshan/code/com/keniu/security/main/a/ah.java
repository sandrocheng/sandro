package com.keniu.security.main.a;

import android.content.Context;
import android.content.Intent;
import com.keniu.security.main.cb;
import com.keniu.security.traffic.TrafficTabActivity;
import com.keniu.security.traffic.dd;
import com.keniu.security.traffic.y;

public final class ah
  implements m
{
  public String a = "当前流量已超过每月限额";
  public String b = "查看";
  public String c = "已查看";
  public String d = "已查看";
  public String e = "当前流量使用正常";
  public int f = k.e;
  public int g;
  private long h;
  private boolean i;

  private boolean c(Context paramContext)
  {
    y localy = y.a(paramContext);
    this.h = 0L;
    ai localai = new ai(this, localy, paramContext);
    this.i = false;
    dd.a(paramContext, localai);
    while (true)
    {
      try
      {
        boolean bool1 = this.i;
        if (!bool1)
        {
          try
          {
            localai.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
          }
          continue;
        }
        long l = localy.d - this.h;
        if ((l >= 0L) && (l >= localy.g))
          break label111;
        if (cb.f())
        {
          bool2 = false;
          return bool2;
        }
      }
      finally
      {
      }
      boolean bool2 = true;
      continue;
      label111: bool2 = true;
    }
  }

  public final int a()
  {
    return this.f;
  }

  public final String a(int paramInt)
  {
    String str;
    if (paramInt == k.k)
      str = this.a;
    while (true)
    {
      return str;
      if (paramInt == k.l)
        str = this.b;
      else if (paramInt == k.m)
        str = this.c;
      else if (paramInt == k.n)
        str = this.d;
      else if (paramInt == k.o)
      {
        if (!g())
          str = this.a;
        else
          str = this.e;
      }
      else
        str = null;
    }
  }

  public final void a(Context paramContext)
  {
    paramContext.startActivity(new Intent(paramContext, TrafficTabActivity.class));
    cb.g();
  }

  public final void a(l paraml, Context paramContext)
  {
    paraml.a(this);
    if (c(paramContext));
    for (this.g = k.h; ; this.g = k.i)
    {
      paraml.b(this);
      return;
    }
  }

  public final void a(boolean paramBoolean)
  {
  }

  public final int b()
  {
    return this.g;
  }

  public final void b(Context paramContext)
  {
    if ((this.g == k.i) && (!cb.f()))
      this.g = k.g;
  }

  public final String c()
  {
    return this.a;
  }

  public final int d()
  {
    return 1;
  }

  public final void e()
  {
  }

  public final void f()
  {
  }

  public final boolean g()
  {
    if ((this.g == k.h) || (this.g == k.g));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean h()
  {
    return false;
  }

  public final boolean i()
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.ah
 * JD-Core Version:    0.6.2
 */