import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.tencent.powermanager.PowerManagerApplication;

public final class aq
{
  private static aq b = null;
  private Context a = null;

  private aq(Context paramContext)
  {
    this.a = paramContext;
  }

  public static aq a()
  {
    if (b == null);
    try
    {
      b = new aq(PowerManagerApplication.a());
      return b;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int a(ContentResolver paramContentResolver)
  {
    try
    {
      int j = Settings.System.getInt(paramContentResolver, "screen_brightness");
      i = j;
      new StringBuilder("getScreenBrightness::").append(i).toString();
      return i;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        int i = 0;
      }
    }
    finally
    {
    }
  }

  public final void a(int paramInt)
  {
    Settings.System.putInt(this.a.getContentResolver(), "screen_off_timeout", paramInt);
    Uri localUri = Settings.System.getUriFor("screen_off_timeout");
    this.a.getContentResolver().notifyChange(localUri, null);
  }

  public final void a(int paramInt, Activity paramActivity)
  {
    try
    {
      WindowManager.LayoutParams localLayoutParams = paramActivity.getWindow().getAttributes();
      if (paramInt == -1);
      float f;
      for (localLayoutParams.screenBrightness = -1.0F; ; localLayoutParams.screenBrightness = (0.003921569F * Float.valueOf(f).floatValue()))
      {
        paramActivity.getWindow().setAttributes(localLayoutParams);
        return;
        f = paramInt;
      }
    }
    finally
    {
    }
  }

  public final void a(int paramInt, Context paramContext)
  {
    try
    {
      new StringBuilder("brightness::").append(paramInt).toString();
      if ((paramContext instanceof Activity))
      {
        WindowManager.LayoutParams localLayoutParams = ((Activity)paramContext).getWindow().getAttributes();
        localLayoutParams.screenBrightness = (0.003921569F * Float.valueOf(paramInt).floatValue());
        ((Activity)paramContext).getWindow().setAttributes(localLayoutParams);
      }
      new StringBuilder("brightness::").append(paramInt).toString();
      Uri localUri = Settings.System.getUriFor("screen_brightness");
      Settings.System.putInt(this.a.getContentResolver(), "screen_brightness", paramInt);
      this.a.getContentResolver().notifyChange(localUri, null);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int b()
  {
    try
    {
      int j = Settings.System.getInt(this.a.getContentResolver(), "screen_off_timeout");
      i = j;
      return i;
    }
    catch (Settings.SettingNotFoundException localSettingNotFoundException)
    {
      while (true)
      {
        localSettingNotFoundException.printStackTrace();
        int i = 0;
      }
    }
  }

  public final boolean c()
  {
    int i = 1;
    try
    {
      int j = Settings.System.getInt(this.a.getContentResolver(), "screen_brightness_mode");
      if (j == i);
      while (true)
      {
        return i;
        i = 0;
      }
    }
    catch (Settings.SettingNotFoundException localSettingNotFoundException)
    {
      while (true)
      {
        localSettingNotFoundException.printStackTrace();
        i = 0;
      }
    }
    finally
    {
    }
  }

  public final void d()
  {
    try
    {
      boolean bool = c();
      if (!bool);
      while (true)
      {
        return;
        Settings.System.putInt(this.a.getContentResolver(), "screen_brightness_mode", 0);
        try
        {
          Thread.sleep(50L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
    finally
    {
    }
  }

  public final void e()
  {
    try
    {
      boolean bool = c();
      if (bool);
      while (true)
      {
        return;
        Settings.System.putInt(this.a.getContentResolver(), "screen_brightness_mode", 1);
      }
    }
    finally
    {
    }
  }

  public final int f()
  {
    try
    {
      boolean bool = c();
      int k;
      if (bool)
        k = 25;
      while (true)
      {
        return k;
        try
        {
          int m = Settings.System.getInt(this.a.getContentResolver(), "screen_brightness");
          i = m;
          int j = i * 100;
          k = j / 255;
        }
        catch (Exception localException)
        {
          while (true)
          {
            localException.printStackTrace();
            int i = 0;
          }
        }
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     aq
 * JD-Core Version:    0.6.2
 */