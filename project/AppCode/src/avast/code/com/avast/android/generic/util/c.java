package com.avast.android.generic.util;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class c
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(1);

  public Thread newThread(Runnable paramRunnable)
  {
    int i = this.a.getAndIncrement();
    if (i < 200)
      m.c("");
    while (true)
    {
      return new Thread(paramRunnable, "avast! AsyncTask #" + i);
      t.a("avast! Mobile Security", "");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.c
 * JD-Core Version:    0.6.2
 */