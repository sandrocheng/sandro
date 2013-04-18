package com.keniu.security.traffic;

import android.content.Context;

final class dj
  implements Runnable
{
  private Context a;
  private boolean b;

  public dj(Context paramContext, boolean paramBoolean)
  {
    this.a = paramContext;
    this.b = paramBoolean;
  }

  public final void run()
  {
    z.a(this.b);
    dd.b(this.a, null);
    if (!this.b)
      z.c(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.dj
 * JD-Core Version:    0.6.2
 */