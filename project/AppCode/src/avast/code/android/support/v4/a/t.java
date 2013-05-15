package android.support.v4.a;

import android.os.Message;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

abstract class t
{
  private static final ThreadFactory a = new u();
  private static final BlockingQueue b = new LinkedBlockingQueue(10);
  private static final z c = new z(null);
  public static final Executor d = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, b, a);
  private static volatile Executor e = d;
  private final ab f = new v(this);
  private final FutureTask g = new w(this, this.f);
  private volatile aa h = aa.a;
  private final AtomicBoolean i = new AtomicBoolean();

  private void c(Object paramObject)
  {
    if (!this.i.get())
      d(paramObject);
  }

  private Object d(Object paramObject)
  {
    c.obtainMessage(1, new y(this, new Object[] { paramObject })).sendToTarget();
    return paramObject;
  }

  private void e(Object paramObject)
  {
    if (c())
      b(paramObject);
    while (true)
    {
      this.h = aa.c;
      return;
      a(paramObject);
    }
  }

  public final t a(Executor paramExecutor, Object[] paramArrayOfObject)
  {
    if (this.h != aa.a);
    switch (x.a[this.h.ordinal()])
    {
    default:
      this.h = aa.b;
      b();
      this.f.b = paramArrayOfObject;
      paramExecutor.execute(this.g);
      return this;
    case 1:
      throw new IllegalStateException("Cannot execute task: the task is already running.");
    case 2:
    }
    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
  }

  protected abstract Object a(Object[] paramArrayOfObject);

  protected void a()
  {
  }

  protected void a(Object paramObject)
  {
  }

  public final boolean a(boolean paramBoolean)
  {
    return this.g.cancel(paramBoolean);
  }

  protected void b()
  {
  }

  protected void b(Object paramObject)
  {
    a();
  }

  protected void b(Object[] paramArrayOfObject)
  {
  }

  public final boolean c()
  {
    return this.g.isCancelled();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.t
 * JD-Core Version:    0.6.2
 */