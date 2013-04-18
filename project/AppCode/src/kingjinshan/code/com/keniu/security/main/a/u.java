package com.keniu.security.main.a;

import android.content.Context;
import com.ijinshan.kinghelper.firewall.dd;

public final class u extends v
{
  u()
  {
    this.a = "骚扰拦截监控";
    this.f = "是否开启骚扰拦截监控";
  }

  public final void a(Context paramContext)
  {
    dd.a(paramContext);
    dd.a(true);
    this.a = "开启骚扰拦截监控";
  }

  protected final boolean c(Context paramContext)
  {
    dd.a(paramContext);
    boolean bool = dd.d();
    if (bool);
    for (this.a = "骚扰拦截监控"; ; this.a = "未开启骚扰拦截监控")
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.u
 * JD-Core Version:    0.6.2
 */