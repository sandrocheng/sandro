package com.avast.android.generic.b;

import android.os.Handler;
import android.os.Looper;
import com.avast.android.generic.util.t;
import java.util.concurrent.ConcurrentLinkedQueue;

class o
  implements Runnable
{
  o(l paraml)
  {
  }

  public void run()
  {
    while (!l.c(this.a))
    {
      t.a("AvastGeneric", l.a(this.a), "Waiting for child handler ...");
      try
      {
        Thread.sleep(100L);
      }
      catch (InterruptedException localInterruptedException2)
      {
      }
    }
    synchronized (l.d(this.a))
    {
      l.e(this.a).getLooper().quit();
      synchronized (l.d(this.a))
      {
        if (l.f(this.a) != null)
        {
          boolean bool = l.f(this.a).isAlive();
          if (!bool);
        }
      }
    }
    try
    {
      l.f(this.a).interrupt();
      l.f(this.a).join();
      label118: synchronized (l.g(this.a))
      {
        l.g(this.a).clear();
        return;
        localObject4 = finally;
        throw localObject4;
        localObject2 = finally;
        throw localObject2;
      }
    }
    catch (InterruptedException localInterruptedException1)
    {
      break label118;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.b.o
 * JD-Core Version:    0.6.2
 */