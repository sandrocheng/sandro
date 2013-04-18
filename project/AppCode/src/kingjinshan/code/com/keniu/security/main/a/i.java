package com.keniu.security.main.a;

import android.os.SystemClock;
import java.util.Iterator;
import java.util.List;

public final class i extends Thread
{
  public i(h paramh)
  {
  }

  public final void run()
  {
    this.a.e();
    Iterator localIterator = h.a(this.a).iterator();
    int i = 0;
    do
    {
      if (!localIterator.hasNext())
        break;
      m localm = (m)localIterator.next();
      i++;
      localm.a(this.a, h.b(this.a));
      if ((i < h.a(this.a).size()) && (100L + h.c(this.a) < System.currentTimeMillis()))
      {
        h.a(this.a, System.currentTimeMillis());
        SystemClock.sleep(300L);
      }
    }
    while (!h.d(this.a));
    this.a.f();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.i
 * JD-Core Version:    0.6.2
 */