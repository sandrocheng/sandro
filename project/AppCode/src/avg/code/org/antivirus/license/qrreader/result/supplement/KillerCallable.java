package org.antivirus.license.qrreader.result.supplement;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

final class KillerCallable
  implements Callable
{
  private final Future future;
  private final long timeout;
  private final TimeUnit unit;

  KillerCallable(Future paramFuture, long paramLong, TimeUnit paramTimeUnit)
  {
    this.future = paramFuture;
    this.timeout = paramLong;
    this.unit = paramTimeUnit;
  }

  public final Void call()
  {
    try
    {
      this.future.get(this.timeout, this.unit);
      return null;
    }
    catch (TimeoutException localTimeoutException)
    {
      while (true)
        this.future.cancel(true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.result.supplement.KillerCallable
 * JD-Core Version:    0.6.2
 */