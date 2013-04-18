package com.keniu.security.monitor;

import android.os.Handler;
import java.io.BufferedReader;

final class f
  implements Runnable
{
  f(e parame)
  {
  }

  public final void run()
  {
    try
    {
      String str2 = e.a(this.a).readLine();
      str1 = str2;
      if ((str1 != null) && (str1.length() != 0))
      {
        e.a(this.a, str1);
        e.b(this.a).postDelayed(this, 50L);
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        String str1 = null;
        continue;
        e.b(this.a).postDelayed(this, 1000L);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.monitor.f
 * JD-Core Version:    0.6.2
 */