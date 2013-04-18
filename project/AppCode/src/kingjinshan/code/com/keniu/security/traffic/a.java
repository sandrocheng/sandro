package com.keniu.security.traffic;

import android.content.Context;
import com.ijinshan.kinghelper.firewall.core.w;
import com.keniu.security.monitor.b;

public final class a
  implements b
{
  private String a;
  private String b;
  private Context c;

  public a(String paramString1, String paramString2, Context paramContext)
  {
    this.b = paramString1;
    this.a = paramString2;
    this.c = paramContext;
  }

  private void a(w paramw)
  {
    if (paramw == null);
    while (true)
    {
      return;
      if ((!paramw.e) && (paramw.c.equals(this.b)))
      {
        new Thread(new d(paramw.a, paramw.c, paramw.d, this.a)).start();
        a();
      }
    }
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    if (paramInt == com.keniu.security.monitor.a.r)
    {
      w localw = (w)paramObject1;
      if ((localw != null) && (!localw.e) && (localw.c.equals(this.b)))
      {
        new Thread(new d(localw.a, localw.c, localw.d, this.a)).start();
        a();
      }
    }
    return 0;
  }

  public final void a()
  {
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.r, this);
  }

  public final void b()
  {
    com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.r, this, 2);
  }

  public final void c()
  {
    dd.a(this.c, new c(this), 180000L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.a
 * JD-Core Version:    0.6.2
 */