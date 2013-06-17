package com.avg.ui.general.c;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public class i
{
  public static int a = 600;

  public static int a(Context paramContext)
  {
    Display localDisplay = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics;
    if (localDisplay != null)
    {
      localDisplayMetrics = new DisplayMetrics();
      localDisplay.getMetrics(localDisplayMetrics);
    }
    for (int i = localDisplayMetrics.densityDpi; ; i = -1)
      return i;
  }

  public static int a(Context paramContext, int paramInt)
  {
    return paramInt * a(paramContext) / 160;
  }

  public static int a(Display paramDisplay)
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

  public static String a(long paramLong)
  {
    if (paramLong < 1024);
    Object[] arrayOfObject;
    for (String str2 = paramLong + " B"; ; str2 = String.format("%.1f %sB", arrayOfObject))
    {
      return str2;
      int i = (int)(Math.log(paramLong) / Math.log(1024));
      String str1 = "KMGTPE".charAt(i - 1) + "";
      arrayOfObject = new Object[2];
      arrayOfObject[0] = Double.valueOf(paramLong / Math.pow(1024, i));
      arrayOfObject[1] = str1;
    }
  }

  public static boolean b(Context paramContext)
  {
    int i = Integer.parseInt(Build.VERSION.SDK);
    boolean bool = false;
    if (i < 13);
    while (true)
    {
      return bool;
      try
      {
        int j = paramContext.getResources().getConfiguration().smallestScreenWidthDp;
        int k = a;
        bool = false;
        if (j >= k)
          bool = true;
      }
      catch (Throwable localThrowable)
      {
        bool = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.c.i
 * JD-Core Version:    0.6.2
 */