package com.keniu.security.traffic;

import android.content.Context;

final class di
  implements Runnable
{
  private Context a;
  private long b;
  private long c;
  private long d;
  private boolean e;

  public di(Context paramContext, long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean)
  {
    this.a = paramContext;
    this.b = paramLong1;
    this.c = paramLong2;
    this.d = paramLong3;
    this.e = paramBoolean;
  }

  public final void run()
  {
    z.a(this.a, this.b, this.c, this.d, this.e);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.di
 * JD-Core Version:    0.6.2
 */