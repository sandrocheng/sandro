package com.keniu.security.traffic;

import android.content.Context;

final class dg
  implements Runnable
{
  private int a;
  private Context b;

  public dg(Context paramContext, int paramInt)
  {
    this.b = paramContext;
    this.a = paramInt;
  }

  public final void run()
  {
    z.a(this.b, this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.dg
 * JD-Core Version:    0.6.2
 */