package com.antivirus.wipe;

import com.avg.toolkit.f.a;
import java.util.ArrayList;
import java.util.Iterator;

class l
  implements Runnable
{
  l(b paramb)
  {
  }

  public void run()
  {
    b.b(this.a, true);
    if (ak.a())
    {
      b.J(this.a);
      Iterator localIterator = b.d(this.a).iterator();
      while (localIterator.hasNext())
      {
        Runnable localRunnable = (Runnable)localIterator.next();
        try
        {
          Thread localThread = new Thread(localRunnable);
          localThread.start();
          localThread.join();
        }
        catch (Exception localException)
        {
          a.a(localException);
        }
      }
      if (b.K(this.a))
        b.c(this.a, true);
    }
    while (true)
    {
      return;
      b.L(this.a);
      continue;
      b.c(this.a, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.l
 * JD-Core Version:    0.6.2
 */