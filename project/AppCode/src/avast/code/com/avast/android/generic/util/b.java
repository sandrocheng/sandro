package com.avast.android.generic.util;

import android.annotation.TargetApi;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class b
{
  private static final ThreadFactory a = new c();
  private static final BlockingQueue b = new LinkedBlockingQueue(10);
  private static final Executor c = new ThreadPoolExecutor(10, 256, 1L, TimeUnit.SECONDS, b, a);

  @TargetApi(11)
  public static void a(AsyncTask paramAsyncTask, Object[] paramArrayOfObject)
  {
    if (Build.VERSION.SDK_INT >= 11)
      paramAsyncTask.executeOnExecutor(c, paramArrayOfObject);
    while (true)
    {
      return;
      paramAsyncTask.execute(paramArrayOfObject);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.b
 * JD-Core Version:    0.6.2
 */