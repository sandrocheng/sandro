package android.support.v4.a;

import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

class w extends FutureTask
{
  w(t paramt, Callable paramCallable)
  {
    super(paramCallable);
  }

  protected void done()
  {
    try
    {
      Object localObject = get();
      t.b(this.a, localObject);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        Log.w("AsyncTask", localInterruptedException);
    }
    catch (ExecutionException localExecutionException)
    {
      throw new RuntimeException("An error occured while executing doInBackground()", localExecutionException.getCause());
    }
    catch (CancellationException localCancellationException)
    {
      while (true)
        t.b(this.a, null);
    }
    catch (Throwable localThrowable)
    {
      throw new RuntimeException("An error occured while executing doInBackground()", localThrowable);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.w
 * JD-Core Version:    0.6.2
 */