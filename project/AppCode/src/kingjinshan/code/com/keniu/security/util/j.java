package com.keniu.security.util;

final class j
  implements b
{
  private long a;

  public j(long paramLong)
  {
    this.a = paramLong;
  }

  public final void b()
  {
    try
    {
      Thread.sleep(this.a);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.j
 * JD-Core Version:    0.6.2
 */