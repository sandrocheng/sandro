package com.antivirus;

import android.app.Application;
import android.content.Intent;
import android.content.res.Configuration;
import com.antivirus.core.a.b;
import com.avg.toolkit.f.a;
import com.avg.tuneup.j;

public final class AvApplication extends Application
{
  private static AvApplication a;
  private b b;

  public AvApplication()
  {
    a = this;
  }

  @Deprecated
  public static AvApplication b()
  {
    return a;
  }

  private void c()
  {
  }

  public void a()
  {
    try
    {
      a.a(c.b());
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          a.a |= c.a();
          boolean bool = a.a;
          if (bool);
          return;
          localException1 = localException1;
          a.a(false);
          a.a(localException1);
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          a.a = false;
          a.a(localException2);
        }
      }
    }
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    m.b(getApplicationContext());
  }

  public void onCreate()
  {
    super.onCreate();
    a = this;
    m.b(this);
    c();
    a.a(this);
    try
    {
      new c(this);
      new j(this);
      a();
      if (this.b == null)
      {
        this.b = new b(this);
        Thread.setDefaultUncaughtExceptionHandler(this.b);
      }
      startService(new Intent(this, AVService.class));
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
  }

  public void onLowMemory()
  {
    super.onLowMemory();
  }

  public void onTerminate()
  {
    super.onTerminate();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.AvApplication
 * JD-Core Version:    0.6.2
 */