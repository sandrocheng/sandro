package com.jxphone.mosecurity.a;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class f
{
  private static final ThreadPoolExecutor a = new ThreadPoolExecutor(1, 8, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());

  private static ThreadPoolExecutor a()
  {
    return a;
  }

  private static void a(Runnable paramRunnable)
  {
    a.submit(paramRunnable);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.a.f
 * JD-Core Version:    0.6.2
 */