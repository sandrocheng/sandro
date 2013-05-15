package com.google.analytics.tracking.android;

import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;

class ae extends TimerTask
{
  private ae(z paramz)
  {
  }

  public void run()
  {
    if ((z.b(this.a) == ad.b) && (z.e(this.a).isEmpty()) && (z.f(this.a) + z.g(this.a) < z.h(this.a).a()))
    {
      ay.e("Disconnecting due to inactivity");
      z.i(this.a);
    }
    while (true)
    {
      return;
      z.j(this.a).schedule(new ae(this.a), z.g(this.a));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.ae
 * JD-Core Version:    0.6.2
 */