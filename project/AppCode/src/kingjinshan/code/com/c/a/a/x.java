package com.c.a.a;

import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class x
{
  private static final LinkedBlockingQueue a = new LinkedBlockingQueue();
  private static final ThreadFactory b = new ae();
  private static final ThreadPoolExecutor c = new ThreadPoolExecutor(2, 2, 10L, TimeUnit.SECONDS, a, b);
  private static final ab d = new ab();
  private final ad e = new y(this);
  private final FutureTask f = new z(this, this.e);
  private volatile ac g = ac.a;

  protected static void b()
  {
  }

  protected static void c()
  {
  }

  public final x a(Object[] paramArrayOfObject)
  {
    if (this.g != ac.a);
    switch (aa.a[this.g.ordinal()])
    {
    default:
      this.g = ac.b;
      this.e.a = paramArrayOfObject;
      c.execute(this.f);
      return this;
    case 1:
      throw new IllegalStateException("Cannot execute task: the task is already running.");
    case 2:
    }
    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
  }

  protected abstract Object a();

  public final boolean d()
  {
    try
    {
      boolean bool2 = this.f.cancel(true);
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool1 = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.x
 * JD-Core Version:    0.6.2
 */