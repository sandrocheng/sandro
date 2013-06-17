package com.antivirus.wipe;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

class s
  implements Runnable
{
  s(r paramr)
  {
  }

  public void run()
  {
    b.d(this.a.a).clear();
    Iterator localIterator1 = b.p(this.a.a).values().iterator();
    while (localIterator1.hasNext())
    {
      Runnable localRunnable3 = (Runnable)localIterator1.next();
      b.d(this.a.a).add(localRunnable3);
    }
    Iterator localIterator2 = b.q(this.a.a).values().iterator();
    while (localIterator2.hasNext())
    {
      Runnable localRunnable2 = (Runnable)localIterator2.next();
      b.d(this.a.a).add(localRunnable2);
    }
    Iterator localIterator3 = b.r(this.a.a).values().iterator();
    while (localIterator3.hasNext())
    {
      Runnable localRunnable1 = (Runnable)localIterator3.next();
      b.d(this.a.a).add(localRunnable1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.s
 * JD-Core Version:    0.6.2
 */