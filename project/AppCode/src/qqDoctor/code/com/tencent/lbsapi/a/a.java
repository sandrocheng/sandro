package com.tencent.lbsapi.a;

import android.content.Context;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class a
{
  private static ThreadPoolExecutor a = null;
  private b b = null;

  public a(b paramb)
  {
    this.b = paramb;
  }

  protected ThreadPoolExecutor a()
  {
    try
    {
      if (a == null)
        a = new ThreadPoolExecutor(2, 6, 60L, TimeUnit.SECONDS, new ArrayBlockingQueue(12));
      ThreadPoolExecutor localThreadPoolExecutor = a;
      return localThreadPoolExecutor;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean a(Context paramContext, int paramInt, String paramString, byte[] paramArrayOfByte)
  {
    boolean bool = false;
    if (paramArrayOfByte == null);
    while (true)
    {
      return bool;
      try
      {
        c localc = new c();
        localc.a(paramArrayOfByte);
        localc.a(paramInt);
        localc.a(this.b);
        localc.a(paramString);
        localc.a(paramContext);
        a().execute(localc);
        bool = true;
      }
      catch (Exception localException)
      {
        bool = false;
      }
    }
  }

  public void b()
  {
    try
    {
      if (a != null)
      {
        a.shutdownNow();
        a = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.a.a
 * JD-Core Version:    0.6.2
 */