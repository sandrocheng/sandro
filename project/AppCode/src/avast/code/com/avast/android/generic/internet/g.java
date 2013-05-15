package com.avast.android.generic.internet;

class g
  implements Runnable
{
  g(HttpSender paramHttpSender)
  {
  }

  public void run()
  {
    synchronized (HttpSender.f(this.a))
    {
      if (HttpSender.g(this.a) != null)
      {
        boolean bool = HttpSender.g(this.a).isAlive();
        if (!bool);
      }
    }
    try
    {
      HttpSender.a(this.a, true);
      HttpSender.g(this.a).interrupt();
      HttpSender.g(this.a).join();
      label64: return;
      localObject2 = finally;
      throw localObject2;
    }
    catch (Exception localException)
    {
      break label64;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.g
 * JD-Core Version:    0.6.2
 */