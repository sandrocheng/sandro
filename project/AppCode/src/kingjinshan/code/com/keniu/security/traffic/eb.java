package com.keniu.security.traffic;

import android.os.Handler;
import android.os.Message;
import com.keniu.security.a;
import java.util.Vector;

final class eb extends Thread
{
  eb(TrafficXuanFuChuangStateReceiver paramTrafficXuanFuChuangStateReceiver)
  {
  }

  public final void run()
  {
    Vector localVector = z.g(TrafficXuanFuChuangStateReceiver.c(this.a));
    try
    {
      a locala = a.a(TrafficXuanFuChuangStateReceiver.c(this.a));
      if (locala.L())
      {
        locala.M();
        sleep(10000L);
      }
      while (true)
      {
        TrafficXuanFuChuangStateReceiver.E(this.a).obtainMessage(0, localVector).sendToTarget();
        return;
        sleep(1000L);
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.eb
 * JD-Core Version:    0.6.2
 */