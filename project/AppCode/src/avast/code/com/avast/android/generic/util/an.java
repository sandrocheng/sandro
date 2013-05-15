package com.avast.android.generic.util;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class an
{
  private static final BlockingQueue a = new LinkedBlockingQueue(15);
  private static final ThreadFactory b = new ao();
  private static final ThreadPoolExecutor c = new ThreadPoolExecutor(5, 15, 10L, TimeUnit.SECONDS, a, b);
  private static final as d = new as(null);
  private final av e = new ap(this);
  private final FutureTask f = new aq(this, this.e);
  private volatile at g = at.a;

  private void b(Object paramObject)
  {
    a(paramObject);
    this.g = at.c;
  }

  public abstract Object a(Object[] paramArrayOfObject);

  public void a()
  {
  }

  public void a(Object paramObject)
  {
  }

  public void b()
  {
  }

  public void b(Object[] paramArrayOfObject)
  {
  }

  public final an c(Object[] paramArrayOfObject)
  {
    if (this.g != at.a);
    switch (ar.a[this.g.ordinal()])
    {
    default:
      this.g = at.b;
      a();
      this.e.b = paramArrayOfObject;
      c.execute(this.f);
      return this;
    case 1:
      throw new IllegalStateException("Cannot execute task: the task is already running.");
    case 2:
    }
    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.an
 * JD-Core Version:    0.6.2
 */