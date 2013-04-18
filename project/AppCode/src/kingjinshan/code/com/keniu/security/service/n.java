package com.keniu.security.service;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.keniu.security.malware.bz;
import com.keniu.security.traffic.e;
import com.keniu.security.traffic.q;

final class n
  implements Runnable
{
  n(StartupReceiver paramStartupReceiver, Context paramContext)
  {
  }

  public final void run()
  {
    e.j = bz.a();
    q.a(this.a);
    String str1 = q.e();
    String str2 = q.d();
    Log.d("trafficfirewall", "-------------run");
    if ((str1.length() > 0) || (str2.length() > 0))
    {
      Log.d("trafficfirewall", "----------before enterroot");
      if (!e.j.e())
        break label70;
      e.a(this.a, false);
    }
    while (true)
    {
      return;
      label70: StartupReceiver.a(this.b, this.a);
      StartupReceiver.b(this.b).postDelayed(new o(this), 30000L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.n
 * JD-Core Version:    0.6.2
 */