package com.tencent.feedback.common;

import android.util.SparseArray;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public abstract class c
{
  public static boolean a = true;
  private static c b;

  public static c a()
  {
    try
    {
      if (b == null)
        b = new a();
      c localc = b;
      return localc;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public abstract void a(int paramInt, Runnable paramRunnable, long paramLong1, long paramLong2);

  public abstract void a(int paramInt, boolean paramBoolean);

  public abstract void a(Runnable paramRunnable);

  public abstract void a(Runnable paramRunnable, long paramLong);

  static final class a extends c
  {
    private ScheduledExecutorService b = null;
    private SparseArray c = null;
    private boolean d = false;

    public final void a(int paramInt, Runnable paramRunnable, long paramLong1, long paramLong2)
    {
      long l1 = 0L;
      if (paramRunnable == null);
      while (true)
      {
        try
        {
          ELog.error("task runner should not be null");
          return;
          if (paramLong1 > l1)
            l1 = paramLong1;
          if (!a)
            break label108;
          if (paramLong2 > 10000L)
          {
            break label115;
            a(paramInt, true);
            Object localObject2;
            ScheduledFuture localScheduledFuture = this.b.scheduleAtFixedRate(paramRunnable, l1, localObject2, TimeUnit.MILLISECONDS);
            if (localScheduledFuture == null)
              continue;
            ELog.debug("add a new future!");
            this.c.put(paramInt, localScheduledFuture);
            continue;
          }
        }
        finally
        {
        }
        paramLong2 = 10000L;
        break label115;
        label108: long l2 = paramLong2;
        continue;
        label115: l2 = paramLong2;
      }
    }

    public final void a(int paramInt, boolean paramBoolean)
    {
      try
      {
        ScheduledFuture localScheduledFuture = (ScheduledFuture)this.c.get(paramInt);
        if ((localScheduledFuture != null) && (!localScheduledFuture.isCancelled()))
        {
          ELog.debug("cancel a old future!");
          localScheduledFuture.cancel(true);
        }
        this.c.remove(paramInt);
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public final void a(Runnable paramRunnable)
    {
      if (paramRunnable == null);
      try
      {
        ELog.error("task runner should not be null");
        while (true)
        {
          return;
          this.b.execute(paramRunnable);
        }
      }
      finally
      {
      }
    }

    public final void a(Runnable paramRunnable, long paramLong)
    {
      long l = 5000L;
      if (paramRunnable == null)
      {
        ELog.error("task runner should not be null");
        return;
      }
      if (l > 0L);
      while (true)
      {
        this.b.schedule(paramRunnable, l, TimeUnit.MILLISECONDS);
        break;
        l = 0L;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.c
 * JD-Core Version:    0.6.2
 */