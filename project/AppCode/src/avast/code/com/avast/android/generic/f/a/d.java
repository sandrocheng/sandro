package com.avast.android.generic.f.a;

class d
  implements Runnable
{
  d(b paramb)
  {
  }

  public void run()
  {
    synchronized (b.f(this.a))
    {
      if (b.g(this.a) != null)
      {
        boolean bool = b.g(this.a).isAlive();
        if (!bool);
      }
    }
    try
    {
      b.a(this.a, true);
      b.g(this.a).interrupt();
      b.g(this.a).join();
      label64: return;
      localObject2 = finally;
      throw localObject2;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label64;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.f.a.d
 * JD-Core Version:    0.6.2
 */