package com.keniu.security.service;

import android.content.Context;
import com.keniu.security.traffic.db;

public final class i
{
  private static i c = null;
  private db a;
  private Context b;

  public static i a()
  {
    if (c == null)
      c = new i();
    return c;
  }

  private void d()
  {
    if (this.a != null)
    {
      this.a.a();
      this.a = null;
    }
  }

  public final void a(Context paramContext)
  {
    this.b = paramContext;
  }

  public final void b()
  {
    if (this.a != null)
    {
      this.a.a();
      this.a = null;
    }
    this.a = new db();
    this.a.a(1, 30000L, new j(this));
  }

  public final void c()
  {
    new db().a(1, 300000L, new k(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.i
 * JD-Core Version:    0.6.2
 */