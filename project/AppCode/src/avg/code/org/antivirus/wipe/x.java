package org.antivirus.wipe;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

final class x
  implements Runnable
{
  x(w paramw)
  {
  }

  public final void run()
  {
    this.a.a.a.clear();
    Iterator localIterator1 = this.a.a.b.values().iterator();
    while (localIterator1.hasNext())
    {
      Runnable localRunnable3 = (Runnable)localIterator1.next();
      this.a.a.a.add(localRunnable3);
    }
    Iterator localIterator2 = WipeByApp.d.values().iterator();
    while (localIterator2.hasNext())
    {
      Runnable localRunnable2 = (Runnable)localIterator2.next();
      this.a.a.a.add(localRunnable2);
    }
    Iterator localIterator3 = WipeByApp.e.values().iterator();
    while (localIterator3.hasNext())
    {
      Runnable localRunnable1 = (Runnable)localIterator3.next();
      this.a.a.a.add(localRunnable1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.x
 * JD-Core Version:    0.6.2
 */