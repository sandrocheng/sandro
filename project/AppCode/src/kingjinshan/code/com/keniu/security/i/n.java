package com.keniu.security.i;

import android.os.Handler;
import java.io.BufferedReader;

final class n
  implements Runnable
{
  n(m paramm)
  {
  }

  public final void run()
  {
    try
    {
      String str2 = m.a(this.a).readLine();
      str1 = str2;
      if ((str1 != null) && (str1.length() != 0))
      {
        m.a(this.a, str1);
        m.b(this.a).postDelayed(this, 200L);
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
        m.b(this.a).postDelayed(this, 1000L);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.n
 * JD-Core Version:    0.6.2
 */