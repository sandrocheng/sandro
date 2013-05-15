package com.avast.android.generic.util;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class ao
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(1);

  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, "UserTask #" + this.a.getAndIncrement());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.ao
 * JD-Core Version:    0.6.2
 */