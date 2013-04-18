package com.keniu.security.main.a;

import android.content.Context;
import com.keniu.security.traffic.dd;
import com.keniu.security.traffic.y;

public final class w extends v
{
  private y i;

  w()
  {
    this.a = "流量监控";
    this.f = "是否开启流量监控";
  }

  public final void a(Context paramContext)
  {
    this.i.a = true;
    this.i.a(paramContext, 2131428288);
    dd.a(paramContext);
    this.a = "开启流量监控";
  }

  protected final boolean c(Context paramContext)
  {
    this.i = y.a(paramContext);
    boolean bool = this.i.a;
    if (bool);
    for (this.a = "流量监控"; ; this.a = "未开启流量监控")
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.w
 * JD-Core Version:    0.6.2
 */