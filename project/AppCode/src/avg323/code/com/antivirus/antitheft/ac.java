package com.antivirus.antitheft;

import com.avg.toolkit.f.a;

class ac
  implements Runnable
{
  ac(ab paramab)
  {
  }

  public void run()
  {
    try
    {
      Thread.sleep(120000L);
      if (!ab.a(this.a))
        ab.b(this.a);
      label23: return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
    catch (InterruptedException localInterruptedException)
    {
      break label23;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.ac
 * JD-Core Version:    0.6.2
 */