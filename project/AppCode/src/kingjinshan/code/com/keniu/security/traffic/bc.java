package com.keniu.security.traffic;

import android.os.Handler;

final class bc
  implements Runnable
{
  bc(TrafficMainActivity paramTrafficMainActivity)
  {
  }

  public final void run()
  {
    y localy = y.a(this.a.getApplicationContext());
    TrafficIcon2 localTrafficIcon2 = (TrafficIcon2)this.a.findViewById(2131231112);
    if (localTrafficIcon2.getWidth() > 0)
    {
      localTrafficIcon2.a(TrafficMainActivity.n(this.a).g, localy.d);
      localTrafficIcon2.a();
    }
    while (true)
    {
      return;
      TrafficMainActivity.o(this.a).postDelayed(this, 100L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.bc
 * JD-Core Version:    0.6.2
 */