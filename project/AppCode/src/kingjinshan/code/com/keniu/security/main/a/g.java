package com.keniu.security.main.a;

import android.content.Context;
import android.content.Intent;
import com.ijinshan.kinghelper.firewall.FirewallLogTabActivity;
import com.ijinshan.kinghelper.firewall.core.h;

public final class g
  implements m
{
  public String a = "有待处理的拦截信息";
  public String b = "查看";
  public String c = "已查看";
  public String d = "已查看";
  public String e = "没有待处理的拦截信息";
  public int f = k.e;
  public int g;

  private static boolean j()
  {
    if (h.a() + h.c() == 0);
    for (boolean bool = true; ; bool = false)
      return bool;
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
    if (h.a() > 0)
    {
      Intent localIntent1 = new Intent(paramContext, FirewallLogTabActivity.class);
      localIntent1.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_sms");
      paramContext.startActivity(localIntent1);
    }
    while (true)
    {
      return;
      Intent localIntent2 = new Intent(paramContext, FirewallLogTabActivity.class);
      localIntent2.putExtra("FirewallLogTabActivity_current_tab", "FirewallLogTabActivity_current_tab_call");
      paramContext.startActivity(localIntent2);
    }
  }

  public final void a(l paraml, Context paramContext)
  {
    paraml.a(this);
    if (j());
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
    if (j());
    for (this.g = k.h; ; this.g = k.i)
      return;
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
 * Qualified Name:     com.keniu.security.main.a.g
 * JD-Core Version:    0.6.2
 */