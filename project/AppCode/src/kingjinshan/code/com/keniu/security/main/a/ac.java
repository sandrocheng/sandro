package com.keniu.security.main.a;

import android.content.Context;
import com.ijinshan.kinghelper.firewall.FirewallQuerySpActivity;
import com.keniu.security.a;

public final class ac extends aa
{
  ac()
  {
    this.a = "扣费业务";
    this.b = "立即查询";
    this.c = "已查询";
    this.d = this.c;
    this.e = "未查询";
    this.f = "本机是否订阅扣费业务";
  }

  public final void a(Context paramContext)
  {
    FirewallQuerySpActivity.a(paramContext, true);
  }

  protected final boolean c(Context paramContext)
  {
    return a.a(paramContext).aO();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.ac
 * JD-Core Version:    0.6.2
 */