package com.c.a.a;

import android.os.Message;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

final class z extends FutureTask
{
  z(x paramx, Callable paramCallable)
  {
    super(paramCallable);
  }

  protected final void done()
  {
    try
    {
      Object localObject2 = get();
      localObject1 = localObject2;
      x.e().obtainMessage(1, new w(this.a, new Object[] { localObject1 })).sendToTarget();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
      {
        Log.w("CellTaskEx", localInterruptedException);
        Object localObject1 = null;
      }
    }
    catch (ExecutionException localExecutionException)
    {
      throw new RuntimeException("An error occured while executing doInBackground()", localExecutionException.getCause());
    }
    catch (CancellationException localCancellationException)
    {
      while (true)
        x.e().obtainMessage(3, new w(this.a, null)).sendToTarget();
    }
    catch (Throwable localThrowable)
    {
      throw new RuntimeException("An error occured while executing doInBackground()", localThrowable);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.z
 * JD-Core Version:    0.6.2
 */