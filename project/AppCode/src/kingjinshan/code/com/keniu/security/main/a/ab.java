package com.keniu.security.main.a;

import android.content.Context;
import android.content.Intent;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.protection.ui.PreventTheftFirstVisitActivity;
import com.keniu.security.protection.ui.PreventTheftGuideActivity;
import com.keniu.security.protection.ui.ag;

public final class ab extends aa
{
  ab()
  {
    this.a = "防盗功能";
    this.b = "立即开启";
    this.c = "已开启";
    this.d = this.c;
    this.e = "未开启";
    this.f = "是否开启手机防盗保护";
  }

  public final void a(Context paramContext)
  {
    if (ag.a(paramContext) != null)
    {
      ag.f(paramContext);
      this.a = "开启手机防盗保护";
    }
    while (true)
    {
      return;
      if (ag.c(paramContext) == null)
        a.b(paramContext, "pt", "5");
      if (ag.e(paramContext))
        paramContext.startActivity(new Intent(paramContext, PreventTheftFirstVisitActivity.class));
      else
        paramContext.startActivity(new Intent(paramContext, PreventTheftGuideActivity.class));
    }
  }

  protected final boolean c(Context paramContext)
  {
    if (ag.a(paramContext) != null)
      this.g = k.c;
    boolean bool = ag.g(paramContext);
    if (bool);
    for (this.a = "手机防盗"; ; this.a = "未开启手机防盗保护")
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.ab
 * JD-Core Version:    0.6.2
 */