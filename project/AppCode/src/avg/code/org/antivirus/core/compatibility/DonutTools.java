package org.antivirus.core.compatibility;

import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;

public class DonutTools
{
  public static int getDisplayDensity(Display paramDisplay)
  {
    DisplayMetrics localDisplayMetrics;
    if (paramDisplay != null)
    {
      localDisplayMetrics = new DisplayMetrics();
      paramDisplay.getMetrics(localDisplayMetrics);
    }
    for (int i = localDisplayMetrics.densityDpi; ; i = -1)
      return i;
  }

  public static boolean isDonutOrAbove()
  {
    if (Integer.parseInt(Build.VERSION.SDK) >= 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.compatibility.DonutTools
 * JD-Core Version:    0.6.2
 */