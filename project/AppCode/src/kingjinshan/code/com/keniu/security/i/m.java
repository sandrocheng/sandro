package com.keniu.security.i;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.os.Handler;
import android.os.Looper;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class m extends Thread
{
  Runnable a = new n(this);
  private Handler c;
  private Looper d;
  private Process e;
  private BufferedReader f;

  m(l paraml)
  {
  }

  private static Process a(String paramString)
  {
    Runtime localRuntime = Runtime.getRuntime();
    try
    {
      Process localProcess2 = localRuntime.exec(paramString);
      localProcess1 = localProcess2;
      return localProcess1;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.printStackTrace();
        Process localProcess1 = null;
      }
    }
  }

  private void b(String paramString)
  {
    String str1;
    String str2;
    String str3;
    if ((paramString.toLowerCase().startsWith("starting")) || (paramString.toLowerCase().startsWith("start")))
    {
      int i = paramString.indexOf("cmp=");
      if (i != -1)
      {
        int j = i + 4;
        int k = paramString.indexOf('/', j);
        if (k != -1)
        {
          str1 = paramString.substring(j, k);
          str2 = ((ActivityManager.RunningTaskInfo)l.a(this.b).getRunningTasks(1).get(0)).topActivity.getPackageName();
          if ((str1.equals(str2)) && (!l.a(str1)))
          {
            if (!l.b(this.b))
            {
              l.c(this.b).clear();
              l.d(this.b);
            }
            Iterator localIterator = l.c(this.b).iterator();
            do
            {
              if (!localIterator.hasNext())
                break;
              str3 = (String)localIterator.next();
            }
            while (!str3.equals(str2));
          }
        }
      }
    }
    while (true)
    {
      if (str3 == null)
      {
        if (l.c(this.b).size() >= 50)
          l.c(this.b).remove(0);
        l.c(this.b).add(str2);
        this.b.e.a(this.b, 7, str1);
      }
      return;
      str3 = null;
    }
  }

  private boolean b()
  {
    this.e = a("logcat -c");
    this.e = a("logcat -v raw ActivityManager:I *:S");
    if (this.e != null);
    try
    {
      this.f = new BufferedReader(new InputStreamReader(this.e.getInputStream()), 1024);
      if (this.f != null)
      {
        bool = true;
        return bool;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        continue;
        boolean bool = false;
      }
    }
  }

  private void c()
  {
    try
    {
      if (this.e != null)
      {
        this.e.destroy();
        this.e = null;
      }
      if (this.f != null)
      {
        this.f.close();
        this.f = null;
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void a()
  {
    if (this.d != null);
    try
    {
      if (this.e != null)
      {
        this.e.destroy();
        this.e = null;
      }
      if (this.f != null)
      {
        this.f.close();
        this.f = null;
      }
      this.c.removeCallbacks(this.a);
      this.d.quit();
    }
    catch (Exception localException)
    {
      try
      {
        join();
        return;
        localException = localException;
        localException.printStackTrace();
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
  }

  public final void run()
  {
    if (b())
    {
      Looper.prepare();
      this.d = Looper.myLooper();
      this.c = new Handler();
      this.c.postDelayed(this.a, 500L);
      Looper.loop();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.m
 * JD-Core Version:    0.6.2
 */