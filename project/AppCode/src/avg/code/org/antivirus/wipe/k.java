package org.antivirus.wipe;

import java.util.ArrayList;
import java.util.Iterator;
import org.antivirus.core.Logger;

final class k
  implements Runnable
{
  k(WipeByApp paramWipeByApp)
  {
  }

  public final void run()
  {
    if (ai.a())
    {
      WipeByApp.k(this.a);
      Iterator localIterator = this.a.a.iterator();
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
          Logger.log(localException);
        }
      }
      WipeByApp.b(this.a, true);
    }
    while (true)
    {
      return;
      WipeByApp.b(this.a, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.k
 * JD-Core Version:    0.6.2
 */