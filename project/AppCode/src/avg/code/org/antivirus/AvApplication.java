package org.antivirus;

import android.app.Application;
import android.content.ComponentName;
import android.content.Intent;
import org.antivirus.core.Logger;
import org.antivirus.core.a.s;
import org.antivirus.core.b.a;

public final class AvApplication extends Application
{
  private static AvApplication a;
  public static a mAvgFeatures = null;
  private s b;

  public AvApplication()
  {
    a = this;
  }

  @Deprecated
  public static AvApplication getInstance()
  {
    return a;
  }

  public final void onCreate()
  {
    super.onCreate();
    a = this;
    Logger.setContext(this);
    try
    {
      org.antivirus.core.AVCoreService.SERVICE_IDENTIFIER = new ComponentName(getPackageName(), AVService.class.getCanonicalName());
      new AVSettings(this);
      setLoggingOptions();
      if (this.b == null)
      {
        this.b = new s(this);
        Thread.setDefaultUncaughtExceptionHandler(this.b);
      }
      Intent localIntent = new Intent(this, AVService.class);
      localIntent.putExtra("__SAC", 1);
      startService(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final void onLowMemory()
  {
    super.onLowMemory();
  }

  public final void onTerminate()
  {
    super.onTerminate();
  }

  public final void setLoggingOptions()
  {
    try
    {
      Logger.setSaveToFile(AVSettings.getLogToFile());
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          Logger.mLogExceptions |= AVSettings.getLogExceptions();
          return;
          localException1 = localException1;
          Logger.setSaveToFile(false);
          Logger.log(localException1);
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          Logger.mLogExceptions = false;
          Logger.log(localException2);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.AvApplication
 * JD-Core Version:    0.6.2
 */