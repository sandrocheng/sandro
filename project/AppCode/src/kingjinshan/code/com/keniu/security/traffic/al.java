package com.keniu.security.traffic;

import android.os.Handler;

final class al extends Thread
{
  al(TrafficFireWallMainActivity paramTrafficFireWallMainActivity, Handler paramHandler)
  {
  }

  public final void run()
  {
    this.b.a = e.c(this.b.getApplicationContext(), true);
    this.a.sendEmptyMessage(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.al
 * JD-Core Version:    0.6.2
 */