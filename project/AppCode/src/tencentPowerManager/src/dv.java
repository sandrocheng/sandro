import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import com.tencent.powermanager.PowerManagerApplication;

public final class dv
{
  private static int a = 0;
  private static int b = 0;
  private static int c = 0;
  private static int d = 640;
  private static int e = 960;
  private static int f = 320;

  public static int a()
  {
    if (a == 0)
    {
      new StringBuilder("ScreenUtil getApplicationContext = ").append(PowerManagerApplication.a()).toString();
      new StringBuilder("ScreenUtil getApplicationContext = ").append(PowerManagerApplication.a().getResources()).toString();
      new StringBuilder("ScreenUtil getApplicationContext = ").append(PowerManagerApplication.a().getResources().getDisplayMetrics()).toString();
      DisplayMetrics localDisplayMetrics = PowerManagerApplication.a().getResources().getDisplayMetrics();
      a = localDisplayMetrics.widthPixels;
      b = localDisplayMetrics.heightPixels;
      c = localDisplayMetrics.densityDpi;
    }
    return a;
  }

  public static boolean b()
  {
    if (c <= 120);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static boolean c()
  {
    if ((c <= 120) || (c > 160))
      if ((a != d) || (b != e) || (c != f))
        break label56;
    label56: for (int i = 1; ; i = 0)
    {
      boolean bool = false;
      if (i != 0)
        bool = true;
      return bool;
    }
  }

  public static boolean d()
  {
    boolean bool1 = true;
    boolean bool2;
    if ((c > 160) && (c <= 240) && (b <= 854))
      if ((a == d) && (b == e) && (c == f))
      {
        bool2 = bool1;
        if (bool2)
          break label69;
      }
    while (true)
    {
      return bool1;
      bool2 = false;
      break;
      label69: bool1 = false;
    }
  }

  public static boolean e()
  {
    boolean bool1 = true;
    boolean bool2;
    if ((c >= 240) && (b > 854))
      if ((a == d) && (b == e) && (c == f))
      {
        bool2 = bool1;
        if (bool2)
          break label60;
      }
    while (true)
    {
      return bool1;
      bool2 = false;
      break;
      label60: bool1 = false;
    }
  }

  public static boolean f()
  {
    boolean bool1 = true;
    boolean bool2;
    if ((c >= 240) && (b > 1000))
      if ((a == d) && (b == e) && (c == f))
      {
        bool2 = bool1;
        if (bool2)
          break label60;
      }
    while (true)
    {
      return bool1;
      bool2 = false;
      break;
      label60: bool1 = false;
    }
  }

  public static int g()
  {
    DisplayMetrics localDisplayMetrics = PowerManagerApplication.a().getResources().getDisplayMetrics();
    if (localDisplayMetrics.heightPixels > localDisplayMetrics.widthPixels);
    for (int i = localDisplayMetrics.heightPixels; ; i = localDisplayMetrics.widthPixels)
      return i;
  }

  public static int h()
  {
    DisplayMetrics localDisplayMetrics = PowerManagerApplication.a().getResources().getDisplayMetrics();
    if (localDisplayMetrics.heightPixels < localDisplayMetrics.widthPixels);
    for (int i = localDisplayMetrics.heightPixels; ; i = localDisplayMetrics.widthPixels)
      return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     dv
 * JD-Core Version:    0.6.2
 */