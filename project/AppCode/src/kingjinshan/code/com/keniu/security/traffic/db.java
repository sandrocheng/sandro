package com.keniu.security.traffic;

import android.os.Handler;

public final class db
  implements Runnable
{
  private int a;
  private long b;
  private Handler c;
  private dc d;

  public final void a()
  {
    if (this.c != null)
    {
      this.c.removeCallbacks(this);
      this.c = null;
    }
    this.d = null;
  }

  public final boolean a(int paramInt, long paramLong, dc paramdc)
  {
    if (this.c == null)
      this.c = new Handler();
    while (true)
    {
      this.b = paramLong;
      this.d = paramdc;
      this.a = paramInt;
      this.c.postDelayed(this, this.b);
      return true;
      this.c.removeCallbacks(this);
    }
  }

  public final void run()
  {
    if ((this.d != null) && (this.d.a(this.a)))
      this.c.postDelayed(this, this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.db
 * JD-Core Version:    0.6.2
 */