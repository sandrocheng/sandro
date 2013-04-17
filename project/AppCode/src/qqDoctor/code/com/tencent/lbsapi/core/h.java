package com.tencent.lbsapi.core;

import android.location.LocationManager;
import android.os.Handler;

class h
  implements Runnable
{
  h(QLBSEngine paramQLBSEngine)
  {
  }

  public void run()
  {
    l.a("----执行gpsMonitor");
    if ((QLBSEngine.b(this.a) != null) && (QLBSEngine.e(this.a) != null))
      QLBSEngine.b(this.a).removeUpdates(QLBSEngine.e(this.a));
    QLBSEngine.f(this.a).removeCallbacks(this.a.b);
    QLBSEngine.c(this.a, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.core.h
 * JD-Core Version:    0.6.2
 */