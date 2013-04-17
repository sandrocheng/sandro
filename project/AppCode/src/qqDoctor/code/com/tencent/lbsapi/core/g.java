package com.tencent.lbsapi.core;

import android.location.LocationManager;

class g
  implements Runnable
{
  g(QLBSEngine paramQLBSEngine)
  {
  }

  public void run()
  {
    l.a("----执行timeMonitor");
    if ((QLBSEngine.b(this.a) != null) && (QLBSEngine.c(this.a) != null))
      QLBSEngine.b(this.a).removeUpdates(QLBSEngine.c(this.a));
    QLBSEngine.a(this.a, false);
    QLBSEngine.b(this.a, false);
    QLBSEngine.d(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.core.g
 * JD-Core Version:    0.6.2
 */