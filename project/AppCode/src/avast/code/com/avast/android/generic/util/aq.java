package com.avast.android.generic.util;

import android.os.Message;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

class aq extends FutureTask
{
  aq(an paraman, Callable paramCallable)
  {
    super(paramCallable);
  }

  protected void done()
  {
    try
    {
      Object localObject2 = get();
      localObject1 = localObject2;
      an.c().obtainMessage(1, new au(this.a, new Object[] { localObject1 })).sendToTarget();
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      throw new RuntimeException("An error occured while executing doInBackground()", localExecutionException.getCause());
    }
    catch (CancellationException localCancellationException)
    {
      while (true)
        an.c().obtainMessage(3, new au(this.a, (Object[])null)).sendToTarget();
    }
    catch (Throwable localThrowable)
    {
      throw new RuntimeException("An error occured while executing doInBackground()", localThrowable);
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        Object localObject1 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.aq
 * JD-Core Version:    0.6.2
 */