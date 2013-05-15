package com.avast.android.mobilesecurity.app.scanner;

import android.os.Handler;
import com.avast.android.mobilesecurity.scan.ScanProgress;

class ag
  implements Runnable
{
  ag(af paramaf)
  {
  }

  public void run()
  {
    synchronized (af.a(this.a))
    {
      if ((af.b(this.a).c == null) || (!af.d(this.a).c.equals(af.c(this.a).k)))
      {
        af.e(this.a);
        af.f(this.a).k = af.g(this.a).c;
      }
      af.h(this.a).postDelayed(this, 1000L);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.ag
 * JD-Core Version:    0.6.2
 */